"""Resume learning-card translations using the question translator's Copilot CLI.

python translator\\learning\\translate_cards.py doi gom mai mni sa sat sd
Only validated batches are applied. No external translation service is called.
"""

import argparse
from concurrent.futures import ThreadPoolExecutor
from datetime import datetime
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys
import threading

import build_catalogs as build

sys.path.insert(0, str(build.ROOT / "tools"))
from translate_docker_languages import LANGUAGES, validate_quiz

DEFAULT_LANGUAGES = "doi gom mai mni sa sat sd".split()
NAMES = {code: name for name, code in LANGUAGES}
SCRIPTS = {
    "doi": "Devanagari", "gom": "Devanagari", "mai": "Devanagari",
    "mni": "Meetei Mayek (U+ABC0..U+ABFF), NOT Bengali",
    "sa": "Devanagari", "sat": "Ol Chiki (U+1C50..U+1C7F)",
    "sd": "Sindhi Arabic",
}
CACHE = build.ROOT / "translator" / "cache" / "learning"
LOGS = build.ROOT / "translator" / "logs" / "learning"
TRACKER = build.ROOT / "tools" / "active_work_state.json"
LOCK = threading.Lock()


def write_json(path, data):
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_suffix(path.suffix + ".tmp")
    temporary.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    temporary.replace(path)


def fingerprint(data):
    return hashlib.sha256(json.dumps(data, ensure_ascii=False, sort_keys=True).encode("utf-8")).hexdigest()


def checkpoint(code, phase, commands=None, concepts=None, complete=False, error=None):
    with LOCK:
        state = build.read_json(TRACKER)
        if code not in state.get("card_languages", []):
            raise ValueError(f"Active tracker does not include requested language {code}")
        task = next(task for task in state["tasks"] if task["id"] == code)
        task["status"] = "blocked" if error else ("done" if complete else "in_progress")
        task["detail"] = phase
        if commands is not None:
            task["checks"][0]["done"] = commands == 607
        if concepts is not None:
            task["checks"][1]["done"] = concepts == 393
        task["checks"][2]["done"] = complete
        state["status"] = "in_progress"
        state["phase"] = f"Python/Copilot card queue: {phase}"
        state["updated_at"] = datetime.now().astimezone().isoformat(timespec="seconds")
        state["translation_runner"] = {
            "script": "translator\\learning\\translate_cards.py",
            "method": "GitHub Copilot CLI, matching the question-bank translation script",
            "resume": "Validated descriptions and source-fingerprinted batches are retained.",
        }
        write_json(TRACKER, state)
        print(f"{code}: {phase}", flush=True)


def validate_concept(source, translated, code):
    validate_quiz([source], [translated])
    question = translated["question"]
    if question == source["question"] or not re.search(build.SCRIPTS[code], question):
        raise ValueError(f"{code}: concept question lacks translated native-script text")
    if any(not isinstance(option, str) or not option.strip() or "\ufffd" in option
           for option in translated["options"]) or "\ufffd" in question:
        raise ValueError(f"{code}: invalid concept text")


def validate_batch(source, output, code, kind):
    if not isinstance(output, dict) or output.keys() != source.keys():
        raise ValueError("Response IDs differ from the requested batch")
    for card_id, item in source.items():
        if kind == "commands":
            build.validate_description(item, code, output[card_id])
        else:
            validate_concept(item, output[card_id], code)
            pairs = [(item["question"], output[card_id]["question"])]
            pairs.extend(zip(item["options"], output[card_id]["options"]))
            for english, translated in pairs:
                protected = build.PRESERVED_NAMES.findall(english)
                protected += re.findall(
                    r"(?<![\w-])--?[A-Za-z][\w-]*|\b\d+(?:\.\d+)?\b", english
                )
                missing = [token for token in protected if token not in translated]
                if missing:
                    raise ValueError(f"{card_id}: lost protected concept tokens {missing}")
            for english, translated in zip(item["options"], output[card_id]["options"]):
                if re.match(r"^(?:git|kubectl|terraform|docker|ansible)\s", english) or re.fullmatch(
                    r"[\w.-]*[_.][\w.-]+", english, flags=re.ASCII
                ):
                    if translated != english:
                        raise ValueError(f"{card_id}: changed literal option {english!r}")


def translate_batch(source, code, kind, executable, timeout, validator=None):
    validate = validator or (lambda original, output, language:
                             validate_batch(original, output, language, kind))
    directory = CACHE / code / (kind + "-" + fingerprint(source)[:20])
    source_path = directory / "source.json"
    output_path = directory / "translated.json"
    write_json(source_path, source)
    if output_path.exists():
        try:
            output = build.read_json(output_path)
            validate(source, output, code)
            return output
        except (ValueError, TypeError, KeyError) as error:
            print(f"{code}: cached batch needs repair: {error}", flush=True)
    shape = (
        "Return an object mapping each source card ID to ONLY its translated description string. "
        "The source command is context, not text to translate."
        if kind == "commands" else
        "Return an object mapping each ID to its fully translated quiz record. Preserve category, "
        "set, every key, option order and correct answer index. The answer must equal that option."
    )
    prompt = (
        f"Translate every item of source.json into {NAMES[code]} using {SCRIPTS[code]} script. "
        f"{shape} Write ONLY translated.json in this directory using valid UTF-8 JSON. "
        "Preserve meaning and every qualification. Keep commands, flags, numbers, code, identifiers, "
        "product/service names, acronyms, file names and paths unchanged. Translate all explanatory "
        "prose naturally. Do not copy English, substitute another language, or invent pseudo-language. "
        "Read source.json as the only source of truth. Do not omit IDs. No markdown. "
        "Do not edit source.json or any other file. No shell commands, external translation services, "
        "subagents or background work. Read your output to check completeness before finishing."
    )
    LOGS.mkdir(parents=True, exist_ok=True)
    for attempt in range(1, 4):
        log = LOGS / f"{code}-{directory.name}-{attempt}.log"
        command = [
            executable, "-p", prompt, "--allow-tool=read", "--allow-tool=write",
            "--no-ask-user", "--output-format=text",
        ]
        with log.open("w", encoding="utf-8") as stream:
            result = subprocess.run(
                command, cwd=directory, stdout=stream, stderr=subprocess.STDOUT,
                timeout=timeout, check=False,
            )
        if result.returncode:
            raise RuntimeError(f"Copilot exited {result.returncode}; see {log}")
        try:
            output = build.read_json(output_path)
            validate(source, output, code)
            return output
        except (OSError, ValueError, TypeError, KeyError) as error:
            if attempt == 3:
                raise ValueError(f"{code} {kind}: invalid response; see {log}: {error}") from error
            print(f"{code}: repairing batch validation error: {error}", flush=True)
            prompt += f" Previous output failed validation: {error}. Fix this and validate every item."


def pending_concepts(cards, code):
    pending = {}
    locations = {}
    cache = {}
    for card in cards:
        if not card["isConcept"]:
            continue
        number, index = divmod(card["sourceQuestion"], 25)
        folder = build.ROOT / "assets" / "questions" / build.TOPICS[card["topic"]]
        source_path = folder / "en" / f"set{number + 1}" / "questions.json"
        target_path = folder / code / f"set{number + 1}" / "questions.json"
        for path in (source_path, target_path):
            if path not in cache:
                cache[path] = build.read_json(path)
        source, translated = cache[source_path][index], cache[target_path][index]
        try:
            validate_concept(source, translated, code)
        except (ValueError, TypeError, KeyError):
            pending[card["id"]] = source
            locations[card["id"]] = (target_path, index, translated)
    return pending, locations


def apply_concepts(output, locations):
    updated = {}
    for card_id, record in output.items():
        path, index, previous = locations[card_id]
        if path not in updated:
            updated[path] = build.read_json(path)
        if updated[path][index] != previous:
            raise ValueError(f"Source changed during translation: {path}, record {index}")
        updated[path][index] = record
    for path, records in updated.items():
        write_json(path, records)


def rebuild():
    catalogs, report = build.build()
    for code, catalog in catalogs.items():
        path = build.HERE / f"cards_{code}.json"
        if build.read_json(path) != catalog:
            write_json(path, catalog)
    write_json(build.HERE / "coverage.json", report)
    return report


def batches(items, size):
    pairs = list(items.items())
    for start in range(0, len(pairs), size):
        yield dict(pairs[start:start + size])


def run_language(code, cards, size, executable, timeout):
    try:
        path = build.MAINTENANCE / f"command_translations_{code}.json"
        previous = build.read_json(path) if path.exists() else {code: {}}
        if set(previous) != {code} or not isinstance(previous[code], dict):
            raise ValueError(f"Unexpected translation file structure: {path}")
        entries = previous[code]
        source = {card["id"]: card for card in cards if not card["isConcept"]}
        if set(entries) - set(source):
            raise ValueError(f"Unexpected command IDs: {path}")
        for card_id, description in entries.items():
            build.validate_description(source[card_id], code, description)
        pending = {card_id: card for card_id, card in source.items() if card_id not in entries}
        checkpoint(code, f"{NAMES[code]}: {len(entries)}/607 descriptions; Python queue running",
                   commands=len(entries))
        for batch in batches(pending, size):
            output = translate_batch(batch, code, "commands", executable, timeout)
            current = build.read_json(path) if path.exists() else {code: {}}
            if current != previous:
                raise ValueError(f"Draft changed during translation: {path}")
            entries.update(output)
            write_json(path, {code: entries})
            previous = {code: dict(entries)}
            checkpoint(code, f"{NAMES[code]}: {len(entries)}/607 descriptions validated",
                       commands=len(entries))
        pending, locations = pending_concepts(cards, code)
        checkpoint(code, f"{NAMES[code]}: repairing {len(pending)} concept translations",
                   concepts=393 - len(pending))
        for batch in batches(pending, size):
            output = translate_batch(batch, code, "concepts", executable, timeout)
            apply_concepts(output, locations)
        with LOCK:
            report = rebuild()
        coverage = report["locales"][code]
        if not coverage["complete"]:
            raise ValueError(f"Incomplete rebuilt catalog: {coverage['translated']}/1000")
        if pending_concepts(cards, code)[0]:
            raise ValueError("Concept validation still has pending entries")
        checkpoint(code, f"{NAMES[code]}: 1000/1000 cards built and validated",
                   commands=607, concepts=393, complete=True)
        return True
    except (OSError, ValueError, TypeError, KeyError, RuntimeError, subprocess.TimeoutExpired) as error:
        checkpoint(code, f"{NAMES[code]} blocked: {error}", error=str(error))
        return False


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("languages", nargs="*", default=DEFAULT_LANGUAGES, choices=DEFAULT_LANGUAGES)
    parser.add_argument("--batch-size", type=int, default=100)
    parser.add_argument("--workers", type=int, default=2)
    parser.add_argument("--timeout", type=int, default=1200)
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()
    if args.batch_size < 1 or args.workers < 1 or args.timeout < 1:
        parser.error("Batch size, workers and timeout must be positive")
    cards = build.source_cards()
    if build.catalog_fingerprint(cards) != build.TRANSLATED_SOURCE_SHA256:
        parser.error("Source catalog changed; review translations before continuing")
    codes = list(dict.fromkeys(args.languages))
    if args.dry_run:
        descriptions = build.command_overrides(cards)
        for code in codes:
            print(f"{code}: {607 - len(descriptions.get(code, {}))} descriptions, "
                  f"{len(pending_concepts(cards, code)[0])} concepts pending")
        return 0
    executable = shutil.which("copilot")
    if not executable:
        parser.error("GitHub Copilot CLI was not found in PATH")
    with ThreadPoolExecutor(max_workers=args.workers) as pool:
        results = list(pool.map(
            lambda code: run_language(code, cards, args.batch_size, executable, args.timeout), codes
        ))
    return 0 if all(results) else 1


if __name__ == "__main__":
    sys.stdout.reconfigure(encoding="utf-8")
    sys.stderr.reconfigure(encoding="utf-8")
    raise SystemExit(main())
