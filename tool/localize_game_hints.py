"""Localize the 30 Command Match descriptions and 500 Word Guess hints across all 32 locales.

Usage:
  python tool\\localize_game_hints.py --prepare
  python tool\\localize_game_hints.py --translate --workers 1
  python tool\\localize_game_hints.py --verify
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

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(ROOT / "tool"))
sys.path.insert(0, str(ROOT / "translator" / "learning"))

import build_catalogs as cards  # noqa: E402
import translate_cards as translation  # noqa: E402
from run_offline_atf import SCRIPTS as ATF_SCRIPTS, numeric_tokens_preserved  # noqa: E402

translation.NAMES.update(hi="Hindi", mr="Marathi")
for _code in cards.LANGUAGES:
    if _code != "en":
        translation.SCRIPTS.setdefault(
            _code, "the standard native script for " + translation.NAMES[_code]
        )

ARB_DIR = ROOT / "lib" / "l10n"
DART_HELPER = ROOT / "lib" / "l10n" / "game_hint_localizations.dart"
CATALOG_DIR = ROOT / "tool" / "game_hint_translations"
WORK_DIR = ROOT / "translator" / "cache" / "game_hints"
LOCK = threading.Lock()

PRESERVED_HINT_TOKENS = re.compile(
    r"(?<![\w-])(?:Ansible|AWS|Azure|Bash|Dockerfile|Docker|GCP|GitOps|Git|IBM|"
    r"JavaScript|Jenkins|Kubernetes|Linux|Oracle|Perl|PowerShell|Python|Ruby|"
    r"Terraform|Google|Microsoft|Amazon|HashiCorp|systemd|API|HTTP|IPv4|IPv6|IP|"
    r"ICMP|TLS|DNS|TCP|UDP|JSON|NoSQL|MySQL|PostgreSQL|SQL|XML|DDoS|URL|CI|ETL|"
    r"JVM|Control-C)\b"
)


def key_for(prefix: str, index: int, token: str) -> str:
    clean = re.sub(r"[^A-Za-z0-9]+", " ", token).title().replace(" ", "")
    return f"gameHint{prefix}{index:03d}{clean}"


def extract_sources() -> dict[str, dict[str, str]]:
    cm_path = ROOT / "lib" / "screens" / "command_match_screen.dart"
    cm_text = cm_path.read_text(encoding="utf-8")
    cm_pairs = re.findall(r"_Pair\('([^']+)',\s*'([^']+)'\)", cm_text)
    if len(cm_pairs) != 30:
        raise ValueError(f"Expected 30 Command Match pairs, found {len(cm_pairs)}")

    wg_path = ROOT / "lib" / "services" / "word_guess_level_service.dart"
    wg_text = wg_path.read_text(encoding="utf-8")
    wg_main = re.findall(r"word:\s*'([^']+)',\s*hint:\s*'((?:\\'|[^'])+)',", wg_text)
    wg_add = re.findall(r"\(\s*'([^']+)',\s*'((?:\\'|[^'])+)',?\s*\)", wg_text)
    wg_all = [(w, h.replace("\\'", "'")) for w, h in wg_main + wg_add]
    if len(wg_all) != 500:
        raise ValueError(f"Expected 500 Word Guess levels, found {len(wg_all)}")

    sources: dict[str, dict[str, str]] = {}
    seen_descriptions: set[str] = set()

    for idx, (cmd, meaning) in enumerate(cm_pairs, 1):
        key = key_for("Cmd", idx, cmd)
        if key in sources or meaning in seen_descriptions:
            raise ValueError(f"Duplicate Command Match key or description: {key} / {meaning!r}")
        seen_descriptions.add(meaning)
        sources[key] = {
            "id": key,
            "kind": "command_match",
            "command": cmd,
            "description": meaning,
        }

    for idx, (word, hint) in enumerate(wg_all, 1):
        key = key_for("Word", idx, word)
        if key in sources or hint in seen_descriptions:
            raise ValueError(f"Duplicate Word Guess key or hint: {key} / {hint!r}")
        seen_descriptions.add(hint)
        sources[key] = {
            "id": key,
            "kind": "word_guess",
            "command": word,
            "description": hint,
        }

    return sources


def required_tokens(english: str) -> list[str]:
    tokens = list(dict.fromkeys(PRESERVED_HINT_TOKENS.findall(english)))
    for flag in re.findall(r"(?<![\w-])--?[A-Za-z][\w-]*", english):
        if flag not in tokens:
            tokens.append(flag)
    return tokens


def validate_messages(source: dict[str, dict[str, str]], output: dict[str, str], code: str) -> None:
    if not isinstance(output, dict) or set(output) != set(source):
        missing = sorted(set(source) - set(output if isinstance(output, dict) else []))
        extra = sorted(set(output if isinstance(output, dict) else []) - set(source))
        raise ValueError(f"{code}: key mismatch (missing={missing[:5]}, extra={extra[:5]})")

    for key, item in source.items():
        english = item["description"]
        value = output[key]
        if not isinstance(value, str) or not value.strip() or "\ufffd" in value:
            raise ValueError(f"{code}/{key}: empty or invalid string")
        if code != "en":
            if value.strip() == english.strip():
                raise ValueError(f"{code}/{key}: unchanged English text {english!r}")
            if code in cards.SCRIPTS and not re.search(cards.SCRIPTS[code], value):
                raise ValueError(f"{code}/{key}: native-script text missing in {value!r}")
            ranges = ATF_SCRIPTS.get(code)
            if ranges and not any(lo <= ord(ch) <= hi for ch in value for lo, hi in ranges):
                raise ValueError(f"{code}/{key}: ATF native-script range missing in {value!r}")
        if not numeric_tokens_preserved(english, value):
            raise ValueError(f"{code}/{key}: numeric tokens not preserved ({english!r} -> {value!r})")
        for token in required_tokens(english):
            if token not in value:
                raise ValueError(f"{code}/{key}: missing protected token {token!r} in {value!r}")


def write_dart_helper(sources: dict[str, dict[str, str]]) -> None:
    lines = [
        "// Generated by tool/localize_game_hints.py.",
        "import 'package:flutter/widgets.dart';",
        "",
        "import 'app_localizations.dart';",
        "import 'game_localizations.dart';",
        "",
        "String gameHintText(BuildContext context, String text) =>",
        "    gameHintTextForL10n(gameL10n(context), text);",
        "",
        "String commandMatchMeaning(BuildContext context, String meaning) =>",
        "    gameHintText(context, meaning);",
        "",
        "String wordGuessHint(BuildContext context, String hint) =>",
        "    gameHintText(context, hint);",
        "",
        "String gameHintTextForL10n(AppLocalizations l10n, String text) => switch (text) {",
    ]
    for key, item in sources.items():
        escaped = json.dumps(item["description"], ensure_ascii=False)
        lines.append(f"  {escaped} => l10n.{key},")
    lines.extend([
        "  _ => text,",
        "};",
        "",
    ])
    DART_HELPER.write_text("\n".join(lines), encoding="utf-8")


def update_arb_bundle(code: str, sources: dict[str, dict[str, str]], translations: dict[str, str]) -> None:
    path = ARB_DIR / f"app_{code}.arb"
    bundle = cards.read_json(path)
    bundle["@@locale"] = code
    for key, item in sources.items():
        bundle[key] = item["description"] if code == "en" else translations[key]
        if code == "en":
            kind_label = (
                f"Command Match description for {item['command']}"
                if item["kind"] == "command_match"
                else f"Word Guess hint for {item['command']}"
            )
            bundle[f"@{key}"] = {"description": kind_label}
        else:
            bundle.pop(f"@{key}", None)
    translation.write_json(path, bundle)


def generate_l10n() -> None:
    executable = "flutter.bat" if sys.platform.startswith("win") else "flutter"
    result = subprocess.run(
        [executable, "gen-l10n"],
        cwd=ROOT,
        capture_output=True,
        text=True,
        encoding="utf-8",
        errors="replace",
        check=False,
    )
    if result.returncode != 0:
        raise RuntimeError(f"flutter gen-l10n failed:\n{result.stdout}\n{result.stderr}")


def prepare(sources: dict[str, dict[str, str]]) -> None:
    CATALOG_DIR.mkdir(parents=True, exist_ok=True)
    english_messages = {key: item["description"] for key, item in sources.items()}
    update_arb_bundle("en", sources, english_messages)
    for code in cards.LANGUAGES:
        if code == "en":
            continue
        catalog_path = CATALOG_DIR / f"{code}.json"
        if catalog_path.exists():
            saved = cards.read_json(catalog_path)
            validate_messages(sources, saved, code)
            update_arb_bundle(code, sources, saved)
        else:
            # Ensure ARB has keys so flutter gen-l10n can generate getters during preparation
            path = ARB_DIR / f"app_{code}.arb"
            bundle = cards.read_json(path)
            for key, item in sources.items():
                bundle.setdefault(key, item["description"])
            translation.write_json(path, bundle)
    write_dart_helper(sources)
    generate_l10n()


def translate_batch_hints(
    batch: dict[str, dict[str, str]],
    code: str,
    executable: str,
    timeout: int,
) -> dict[str, str]:
    digest = hashlib.sha256(
        json.dumps(batch, ensure_ascii=False, sort_keys=True).encode("utf-8")
    ).hexdigest()[:20]
    directory = WORK_DIR / "batches" / code / f"hints-{digest}"
    source_path = directory / "source.json"
    output_path = directory / "translated.json"
    compact_source = {key: item["description"] for key, item in batch.items()}
    translation.write_json(source_path, compact_source)
    if output_path.exists():
        try:
            cached = cards.read_json(output_path)
            validate_messages(batch, cached, code)
            return cached
        except (ValueError, TypeError, KeyError) as error:
            print(f"{code}: cached batch needs repair: {error}", flush=True)

    total_lines = len(source_path.read_text(encoding="utf-8").splitlines())
    range_hint = (
        f"source.json has {total_lines} lines; read it in a single turn by making three parallel "
        f"read calls with view_range [1, 180], [181, 360], and [361, {total_lines}]."
        if total_lines > 250
        else "Read source.json completely in one call."
    )
    prompt = (
        f"Translate every item in source.json from English into {translation.NAMES[code]} "
        f"using {translation.SCRIPTS[code]} script. {range_hint} "
        "Then write ONLY translated.json in this directory in a single write call using valid UTF-8 JSON, "
        "mapping each key in source.json to its translated string. "
        "Keep all technical product/service names and acronyms verbatim in Latin characters when they appear "
        "in the English source: Ansible, AWS, Azure, Bash, Dockerfile, Docker, GCP, GitOps, Git, IBM, "
        "JavaScript, Jenkins, Kubernetes, Linux, Oracle, Perl, PowerShell, Python, Ruby, Terraform, "
        "Google, Microsoft, Amazon, HashiCorp, systemd, API, HTTP, IPv4, IPv6, IP, ICMP, TLS, DNS, "
        "TCP, UDP, JSON, NoSQL, MySQL, PostgreSQL, SQL, XML, DDoS, URL, CI, ETL, JVM, Control-C, "
        "plus any numbers or CLI flags. "
        "Translate all explanatory prose naturally and concisely into "
        f"{translation.NAMES[code]} ({translation.SCRIPTS[code]}). "
        "Do not copy English sentences unchanged, substitute another language, or omit any key. "
        "Do not use shell commands, external tools, subagents, or markdown."
    )
    logs_dir = WORK_DIR / "logs"
    logs_dir.mkdir(parents=True, exist_ok=True)
    for attempt in range(1, 5):
        log = logs_dir / f"{code}-{directory.name}-{attempt}.log"
        command = [
            executable,
            "-p",
            prompt,
            "--allow-tool=read",
            "--allow-tool=write",
            "--no-ask-user",
            "--output-format=text",
        ]
        with log.open("w", encoding="utf-8") as stream:
            result = subprocess.run(
                command,
                cwd=directory,
                stdout=stream,
                stderr=subprocess.STDOUT,
                timeout=timeout,
                check=False,
            )
        if result.returncode != 0:
            raise RuntimeError(f"Copilot exited {result.returncode}; see {log}")
        try:
            output = cards.read_json(output_path)
            if not isinstance(output, dict):
                raise ValueError("translated.json is not a JSON object")
            # Check which individual keys fail validation so we can do targeted repair if needed
            failed_keys: dict[str, str] = {}
            for key, item in batch.items():
                if key not in output:
                    failed_keys[key] = "missing key"
                    continue
                try:
                    validate_messages({key: item}, {key: output[key]}, code)
                except ValueError as key_err:
                    failed_keys[key] = str(key_err)
            if not failed_keys:
                validate_messages(batch, output, code)
                return output
            if len(failed_keys) <= 60:
                print(
                    f"{code}: repairing {len(failed_keys)} invalid/missing keys (attempt {attempt})...",
                    flush=True,
                )
                repair_dir = directory / f"repair-{attempt}"
                repair_source_path = repair_dir / "source.json"
                repair_output_path = repair_dir / "translated.json"
                repair_payload = {
                    key: {
                        "english": batch[key]["description"],
                        "preserve": required_tokens(batch[key]["description"]),
                        "error": err,
                    }
                    for key, err in failed_keys.items()
                }
                translation.write_json(repair_source_path, repair_payload)
                repair_prompt = (
                    f"Read source.json and translate each item from English into {translation.NAMES[code]} "
                    f"using {translation.SCRIPTS[code]} script. "
                    "Write ONLY translated.json in this directory mapping each key to its corrected translated string. "
                    "Every token in 'preserve' MUST appear verbatim in the translation, and the translation must "
                    f"contain {translation.SCRIPTS[code]} characters and not equal the English source. "
                    "Do not use shell commands, subagents, or markdown."
                )
                repair_log = logs_dir / f"{code}-{directory.name}-repair-{attempt}.log"
                with repair_log.open("w", encoding="utf-8") as stream:
                    subprocess.run(
                        [
                            executable,
                            "-p",
                            repair_prompt,
                            "--allow-tool=read",
                            "--allow-tool=write",
                            "--no-ask-user",
                            "--output-format=text",
                        ],
                        cwd=repair_dir,
                        stdout=stream,
                        stderr=subprocess.STDOUT,
                        timeout=timeout,
                        check=False,
                    )
                if repair_output_path.exists():
                    repaired = cards.read_json(repair_output_path)
                    if isinstance(repaired, dict):
                        for k in failed_keys:
                            if k in repaired and isinstance(repaired[k], str):
                                output[k] = repaired[k]
                        translation.write_json(output_path, output)
            validate_messages(batch, output, code)
            return output
        except (OSError, ValueError, TypeError, KeyError) as error:
            if attempt == 4:
                raise ValueError(f"{code}: invalid response after 4 attempts; see {log}: {error}") from error
            print(f"{code}: batch validation error (attempt {attempt}): {error}", flush=True)
            prompt += f" Previous output failed validation: {error}. Fix the invalid items and rewrite translated.json."
    raise RuntimeError(f"{code}: unreachable")


def translate_locale(
    code: str,
    sources: dict[str, dict[str, str]],
    executable: str,
    timeout: int,
    batch_size: int,
) -> bool:
    catalog_path = CATALOG_DIR / f"{code}.json"
    if catalog_path.exists():
        try:
            existing = cards.read_json(catalog_path)
            validate_messages(sources, existing, code)
            with LOCK:
                update_arb_bundle(code, sources, existing)
            print(f"SKIP {code}: 530 validated game hints already in {catalog_path.relative_to(ROOT)}", flush=True)
            return True
        except (ValueError, TypeError, KeyError) as error:
            print(f"{code}: existing catalog needs repair: {error}", flush=True)

    print(f"START {code} ({translation.NAMES[code]}): translating {len(sources)} game hints...", flush=True)
    output: dict[str, str] = {}
    for batch in translation.batches(sources, batch_size):
        output.update(translate_batch_hints(batch, code, executable, timeout))
    validate_messages(sources, output, code)
    with LOCK:
        translation.write_json(catalog_path, output)
        update_arb_bundle(code, sources, output)
    print(f"PASS {code}: {len(output)} game hints validated and applied.", flush=True)
    return True


def verify_all(sources: dict[str, dict[str, str]]) -> None:
    english_bundle = cards.read_json(ARB_DIR / "app_en.arb")
    for key, item in sources.items():
        if english_bundle.get(key) != item["description"]:
            raise ValueError(f"en/{key}: ARB mismatch with source")

    for code in cards.LANGUAGES:
        if code == "en":
            continue
        catalog_path = CATALOG_DIR / f"{code}.json"
        if not catalog_path.exists():
            raise ValueError(f"{code}: missing catalog {catalog_path.relative_to(ROOT)}")
        catalog = cards.read_json(catalog_path)
        validate_messages(sources, catalog, code)
        bundle = cards.read_json(ARB_DIR / f"app_{code}.arb")
        bundle_slice = {key: bundle.get(key) for key in sources}
        validate_messages(sources, bundle_slice, code)
        if bundle_slice != catalog:
            raise ValueError(f"{code}: ARB gameHint keys do not match {catalog_path.relative_to(ROOT)}")

    if not DART_HELPER.exists():
        raise ValueError(f"Missing Dart helper: {DART_HELPER}")
    helper_text = DART_HELPER.read_text(encoding="utf-8")
    for key in sources:
        if f"l10n.{key}," not in helper_text:
            raise ValueError(f"Dart helper missing getter {key}")
    print(f"PASS: verified {len(sources)} game hints across all {len(cards.LANGUAGES)} locales.", flush=True)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--prepare", action="store_true")
    parser.add_argument("--translate", action="store_true")
    parser.add_argument("--verify", action="store_true")
    parser.add_argument("--locales", nargs="*", default=None)
    parser.add_argument("--workers", type=int, default=1)
    parser.add_argument("--batch-size", type=int, default=265)
    parser.add_argument("--timeout", type=int, default=1800)
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()

    sources = extract_sources()
    if args.dry_run:
        print(f"Extracted {len(sources)} game hints (30 Command Match + 500 Word Guess).")
        return 0

    if args.prepare:
        prepare(sources)

    if args.translate:
        CATALOG_DIR.mkdir(parents=True, exist_ok=True)
        english_messages = {key: item["description"] for key, item in sources.items()}
        update_arb_bundle("en", sources, english_messages)
        write_dart_helper(sources)
        target_locales = args.locales or [code for code in cards.LANGUAGES if code != "en"]
        executable = shutil.which("copilot")
        if not executable:
            raise RuntimeError("GitHub Copilot CLI was not found in PATH")
        if args.workers == 1:
            results = [
                translate_locale(code, sources, executable, args.timeout, args.batch_size)
                for code in target_locales
            ]
        else:
            with ThreadPoolExecutor(max_workers=args.workers) as pool:
                futures = [
                    pool.submit(
                        translate_locale,
                        code,
                        sources,
                        executable,
                        args.timeout,
                        args.batch_size,
                    )
                    for code in target_locales
                ]
                results = [future.result() for future in futures]
        generate_l10n()
        if not all(results):
            return 1

    if args.verify:
        verify_all(sources)

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
