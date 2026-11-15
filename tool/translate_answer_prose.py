"""Translate item 2 only: English explanatory prose in quiz options and answers.

python tool\\translate_answer_prose.py --workers 4
Questions, option positions, technical literals and item-1 pending flags are preserved.
"""

import argparse
from concurrent.futures import ThreadPoolExecutor
from copy import deepcopy
from datetime import datetime
import hashlib
import re
import shutil
import sys
import threading

from align_question_translations import ROOT, checksum
from audit_app_translations import english_prose
from run_offline_atf import audit_data, numeric_tokens_preserved

sys.path.insert(0, str(ROOT / "translator" / "learning"))
import build_catalogs as cards
import translate_cards as translation

WORK = ROOT / "translator" / "cache" / "answer_prose"
POLICY = ROOT / "tool" / "answer_prose_policy.json"
CATALOG = ROOT / "assets" / "questions" / "catalog.json"
TRACKER = ROOT / "tools" / "active_work_state.json"
LOCK = threading.Lock()


def is_prose(text, policy):
    return (
        text not in policy["preserved_audit_candidates"]
        and (text in policy["additional_prose"] or english_prose(text))
    )


def discover(policy):
    catalog = cards.read_json(CATALOG)
    languages = [code for code in cards.LANGUAGES if code != "en"]
    files = {}
    candidates = {code: {} for code in languages}
    english_options = set()
    for folder in catalog["categories"]:
        for number in range(1, 6):
            path = ROOT / "assets" / "questions" / folder / "en" / f"set{number}" / "questions.json"
            for record in cards.read_json(path):
                english_options.update(record["options"])
    prose = {text for text in english_options if is_prose(text, policy)}
    for folder in catalog["categories"]:
        for code in languages:
            for number in range(1, 6):
                path = ROOT / "assets" / "questions" / folder / code / f"set{number}" / "questions.json"
                records = cards.read_json(path)
                replacements = []
                for index, record in enumerate(records):
                    for position, text in enumerate(record["options"]):
                        if text in prose:
                            identifier = checksum(text)[:20]
                            candidates[code][identifier] = {
                                "id": identifier, "command": "", "description": text,
                            }
                            replacements.append({
                                "index": index, "option": position,
                                "id": identifier, "english": text,
                            })
                if replacements:
                    files[str(path.relative_to(ROOT))] = {
                        "folder": folder, "language": code, "before": records,
                        "replacements": replacements,
                    }
    return files, {code: source for code, source in candidates.items() if source}


def make_plan():
    path = WORK / "plan.json"
    if path.exists():
        plan = cards.read_json(path)
        if checksum(cards.read_json(POLICY)) != plan["policy_sha256"]:
            raise ValueError("Classification policy changed after planning")
        return plan
    policy = cards.read_json(POLICY)
    files, languages = discover(policy)
    cases, _ = audit_data()
    plan = {
        "created_at": datetime.now().astimezone().isoformat(timespec="seconds"),
        "policy_sha256": checksum(policy), "files": files, "languages": languages,
        "catalog_before": cards.read_json(CATALOG), "tracker_before": cards.read_json(TRACKER),
        "data_cases_before": cases,
        "asset_hashes_before": {
            str(path.relative_to(ROOT)): hashlib.sha256(path.read_bytes()).hexdigest()
            for path in (ROOT / "assets" / "questions").rglob("questions.json")
        },
    }
    translation.write_json(path, plan)
    return plan


def validate_output(source, output, code):
    translation.validate_batch(source, output, code, "commands")
    for identifier, item in source.items():
        text, result = item["description"], output[identifier]
        if not numeric_tokens_preserved(text, result):
            raise ValueError(f"{identifier}: lost source numeric tokens")
        for token in re.findall(r"\b([A-Z][A-Z0-9]+)(?:s)?\b", text):
            if token not in result:
                raise ValueError(f"{identifier}: lost technical acronym {token}")
        for token in re.findall(r"`([^`]+)`|(:[A-Za-z_]\w*)", text):
            literal = token[0] or token[1]
            if literal not in result:
                raise ValueError(f"{identifier}: lost literal {literal}")
        for literal in ("$", "@"):
            if literal in text and literal not in result:
                raise ValueError(f"{identifier}: lost literal {literal}")


def replace_options(item, translations):
    records = deepcopy(item["before"])
    for change in item["replacements"]:
        record = records[change["index"]]
        original = item["before"][change["index"]]
        correct = original["options"].index(original["answer"])
        record["options"][change["option"]] = translations[change["id"]]
        record["answer"] = record["options"][correct]
    for original, record in zip(item["before"], records):
        if len(set(record["options"])) != 4:
            raise ValueError(f"Translated options collide: {record['question']}")
        if record["question"] != original["question"]:
            raise ValueError("Question unexpectedly changed")
        if record["options"].index(record["answer"]) != original["options"].index(original["answer"]):
            raise ValueError("Original answer position changed")
    return records


def bank(folder, code):
    return [
        record for number in range(1, 6)
        for record in cards.read_json(
            ROOT / "assets" / "questions" / folder / code / f"set{number}" / "questions.json"
        )
    ]


def apply_language(plan, code, translations):
    updates = {}
    affected = set()
    previous_path = WORK / "applied" / f"{code}.json"
    previous_output = cards.read_json(previous_path) if previous_path.exists() else None
    for relative, item in plan["files"].items():
        if item["language"] != code:
            continue
        records = replace_options(item, translations)
        current = cards.read_json(ROOT / relative)
        previous = replace_options(item, previous_output) if previous_output is not None else None
        if current != item["before"] and current != records and current != previous:
            raise ValueError(f"File changed outside the prose queue: {relative}")
        updates[relative] = records
        affected.add(item["folder"])
    catalog = cards.read_json(CATALOG)
    before_catalog = plan["catalog_before"]
    eligible = set()
    for folder in affected:
        original_bank = []
        for number in range(1, 6):
            path = ROOT / "assets" / "questions" / folder / code / f"set{number}" / "questions.json"
            original_bank.extend(plan["files"].get(str(path.relative_to(ROOT)), {}).get(
                "before", cards.read_json(path)
            ))
        metadata = before_catalog["categories"][folder]
        if (metadata.get("aligned_sources", {}).get(code) == checksum(bank(folder, "en"))
                and metadata.get("aligned_translations", {}).get(code) == checksum(original_bank)):
            eligible.add(folder)
    for relative, records in updates.items():
        translation.write_json(ROOT / relative, records)
    for folder in eligible:
        digest = checksum(bank(folder, code))
        metadata = catalog["categories"][folder]
        metadata["aligned_translations"][code] = digest
        review = metadata.get("alignment_reviews", {}).get(code)
        if review:
            review["translated_sha256"] = digest
            review["subsequent_prose_translation"] = "tool/translate_answer_prose.py; answer positions preserved"
    # Never bless a previously unaligned bank or clear item-1 review flags.
    translation.write_json(CATALOG, catalog)
    return sum(len(item["replacements"]) for item in plan["files"].values() if item["language"] == code)


def checkpoint(plan, statuses, message):
    translation.write_json(WORK / "status.json", statuses)
    state = cards.read_json(TRACKER)
    task = next(task for task in state["tasks"] if task["id"] == "question-english-prose")
    done = sum(item["status"] == "done" for item in statuses.values())
    changed = sum(item.get("changed_options", 0) for item in statuses.values())
    task["status"] = "in_progress"
    task["detail"] = (
        f"{done}/{len(plan['languages'])} affected locales applied; {changed} English prose options "
        f"translated. {message} Questions, order, grading and protected literals are preserved."
    )
    task["checks"] = [
        {"name": f"Translate and validate remaining explanatory options in {code}",
         "done": statuses.get(code, {}).get("status") == "done"}
        for code in plan["languages"]
    ] + [
        {"name": "Confirm no classified English explanatory prose remains", "done": False},
        {"name": "Verify source preservation, data integrity and dependent card/runtime behavior", "done": False},
    ]
    state["phase"] = "Item 2 only; item 1 paused. " + task["detail"]
    state["updated_at"] = datetime.now().astimezone().isoformat(timespec="seconds")
    state["status"] = "in_progress"
    translation.write_json(TRACKER, state)
    print(message, flush=True)


def run_language(code, source, plan, statuses, executable, timeout, batch_size):
    try:
        output = {}
        with LOCK:
            statuses[code] = {"status": "in_progress"}
            checkpoint(plan, statuses, f"{code}: translating {len(source)} distinct phrases.")
        for batch in translation.batches(source, batch_size):
            output.update(translation.translate_batch(
                batch, code, "commands", executable, timeout, validator=validate_output
            ))
        with LOCK:
            changed = apply_language(plan, code, output)
            statuses[code] = {"status": "done", "changed_options": changed, "phrases": len(source)}
            translation.write_json(WORK / "applied" / f"{code}.json", output)
            checkpoint(plan, statuses, f"PASS {code}: {changed} explanatory options translated.")
        return True
    except (OSError, ValueError, TypeError, KeyError, RuntimeError,
            translation.subprocess.TimeoutExpired) as error:
        with LOCK:
            statuses[code] = {"status": "blocked", "error": str(error)}
            checkpoint(plan, statuses, f"BLOCKED {code}: {error}")
        return False


def verify(plan):
    statuses = cards.read_json(WORK / "status.json")
    if any(statuses.get(code, {}).get("status") != "done" for code in plan["languages"]):
        raise ValueError("Translation queue is not complete")
    actual_paths = {
        str(path.relative_to(ROOT))
        for path in (ROOT / "assets" / "questions").rglob("questions.json")
    }
    if actual_paths != plan["asset_hashes_before"].keys():
        raise ValueError("Question files were added or removed after planning")
    outputs = {
        code: cards.read_json(WORK / "applied" / f"{code}.json")
        for code in plan["languages"]
    }
    for code, output in outputs.items():
        validate_output(plan["languages"][code], output, code)
    for relative, digest in plan["asset_hashes_before"].items():
        path = ROOT / relative
        if relative in plan["files"]:
            item = plan["files"][relative]
            if cards.read_json(path) != replace_options(item, outputs[item["language"]]):
                raise ValueError(f"Published translation differs from scoped changes: {relative}")
        elif hashlib.sha256(path.read_bytes()).hexdigest() != digest:
            raise ValueError(f"Unselected question file changed: {relative}")
    remaining, _ = discover(cards.read_json(POLICY))
    if remaining:
        raise ValueError(f"{len(remaining)} files still contain classified English option prose")
    expected_catalog = deepcopy(plan["catalog_before"])
    for folder, code in {(item["folder"], item["language"]) for item in plan["files"].values()}:
        original = []
        for number in range(1, 6):
            path = ROOT / "assets" / "questions" / folder / code / f"set{number}" / "questions.json"
            original.extend(plan["files"].get(str(path.relative_to(ROOT)), {}).get(
                "before", cards.read_json(path)))
        metadata = expected_catalog["categories"][folder]
        if (metadata.get("aligned_sources", {}).get(code) == checksum(bank(folder, "en"))
                and metadata.get("aligned_translations", {}).get(code) == checksum(original)):
            digest = checksum(bank(folder, code))
            metadata["aligned_translations"][code] = digest
            review = metadata.get("alignment_reviews", {}).get(code)
            if review:
                review["translated_sha256"] = digest
                review["subsequent_prose_translation"] = "tool/translate_answer_prose.py; answer positions preserved"
    if cards.read_json(CATALOG) != expected_catalog:
        raise ValueError("Catalog provenance or pending flags changed outside the scoped repair")
    before = {case["id"]: case for case in plan["data_cases_before"]}
    cases, _ = audit_data()
    for case in cases:
        if set(case["errors"]) - set(before[case["id"]]["errors"]):
            raise ValueError(f"New integrity failures: {case}")
    state = cards.read_json(TRACKER)
    unrelated = lambda state: [task for task in state["tasks"] if task["id"] != "question-english-prose"]
    if unrelated(state) != unrelated(plan["tracker_before"]):
        raise ValueError("Another backlog task was changed")
    report = {
        "verified_at": datetime.now().astimezone().isoformat(timespec="seconds"),
        "locales_changed": len(outputs), "files_changed": len(plan["files"]),
        "option_occurrences_translated": sum(len(item["replacements"]) for item in plan["files"].values()),
        "remaining_classified_english_prose": 0, "new_integrity_errors": 0,
        "data_checks_passed": sum(case["status"] == "passed" for case in cases),
        "paused_item1_data_checks_failed": sum(case["status"] == "failed" for case in cases),
        "questions_option_order_grading_and_unselected_files_preserved": True,
        "valid_provenance_refreshed_and_pending_alignment_flags_preserved": True,
        "other_backlog_tasks_unchanged": True,
        "independent_native_speaker_review": False,
    }
    translation.write_json(WORK / "verification.json", report)
    print(report, flush=True)
    return report


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--workers", type=int, default=4)
    parser.add_argument("--batch-size", type=int, default=100)
    parser.add_argument("--timeout", type=int, default=1200)
    parser.add_argument("--dry-run", action="store_true")
    parser.add_argument("--verify", action="store_true")
    parser.add_argument("--languages", nargs="+", help="Resume only these affected locale codes")
    args = parser.parse_args()
    if min(args.workers, args.batch_size, args.timeout) < 1:
        parser.error("Workers, batch size and timeout must be positive")
    plan = make_plan()
    if args.verify:
        verify(plan)
        return 0
    print(f"Scope: {len(plan['languages'])} locales, {len(plan['files'])} files, "
          f"{sum(len(item['replacements']) for item in plan['files'].values())} option occurrences.")
    if args.dry_run:
        for code, source in plan["languages"].items():
            print(code, len(source), "distinct phrases")
        return 0
    selected = args.languages or list(plan["languages"])
    if set(selected) - plan["languages"].keys():
        parser.error("Requested languages must occur in the saved plan")
    executable = shutil.which("copilot")
    if not executable:
        parser.error("GitHub Copilot CLI is required")
    translation.CACHE = WORK / "batches"
    translation.LOGS = ROOT / "translator" / "logs" / "answer_prose"
    translation.NAMES.update(hi="Hindi", mr="Marathi")
    for code in plan["languages"]:
        translation.SCRIPTS.setdefault(code, "the standard native script for " + translation.NAMES[code])
    path = WORK / "status.json"
    statuses = cards.read_json(path) if path.exists() else {}
    with ThreadPoolExecutor(max_workers=args.workers) as pool:
        results = list(pool.map(
            lambda pair: run_language(pair[0], pair[1], plan, statuses,
                                      executable, args.timeout, args.batch_size),
            [(code, plan["languages"][code]) for code in selected],
        ))
    return 0 if all(results) else 1


if __name__ == "__main__":
    sys.stdout.reconfigure(encoding="utf-8")
    sys.stderr.reconfigure(encoding="utf-8")
    raise SystemExit(main())
