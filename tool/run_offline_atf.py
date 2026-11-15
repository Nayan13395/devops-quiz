"""Offline question/data and Flutter regression runner with honest JSON/HTML reports."""

import argparse
from collections import Counter
from datetime import datetime, timezone
import hashlib
import html
import json
import os
from pathlib import Path
import platform
import re
import shutil
import subprocess
import time
import unicodedata

from align_question_translations import ROOT, checksum, read, write


SCRIPTS = {
    **{code: [(0x0900, 0x097F)] for code in ["hi", "mr", "doi", "gom", "mai", "ne", "sa"]},
    **{code: [(0x0980, 0x09FF)] for code in ["as", "bn"]},
    **{code: [(0x0600, 0x06FF), (0x0750, 0x077F)] for code in ["ar", "sd", "ur"]},
    "gu": [(0x0A80, 0x0AFF)], "kn": [(0x0C80, 0x0CFF)],
    "ml": [(0x0D00, 0x0D7F)], "mni": [(0xABC0, 0xABFF)],
    "or": [(0x0B00, 0x0B7F)], "pa": [(0x0A00, 0x0A7F)],
    "sat": [(0x1C50, 0x1C7F)], "ta": [(0x0B80, 0x0BFF)],
    "te": [(0x0C00, 0x0C7F)], "ru": [(0x0400, 0x04FF)],
    "ko": [(0xAC00, 0xD7AF), (0x1100, 0x11FF)],
    "zh": [(0x4E00, 0x9FFF)], "ja": [(0x3040, 0x30FF), (0x4E00, 0x9FFF)],
}
MANUAL_CHECKS = [
    ("DEVICE-01", "Install and cold-start release builds on each supported real platform."),
    ("DEVICE-02", "Check every bundled font and System Default across app languages, script fallbacks, RTL, enlarged text and compact game cards on a phone and tablet; verify screen-reader focus."),
    ("DEVICE-03", "Hear every audio effect, mute during playback, and check device volume/silent mode."),
    ("DEVICE-04", "Grant/deny OS notification permissions and verify delivery at real scheduled times."),
    ("DEVICE-05", "Play each game on touch hardware, including the 300-image Jigsaw and 100-scene Spot the Difference catalogs; verify piece alignment, target taps, drag, swipe, save/resume and lifecycle behavior."),
    ("DEVICE-06", "Verify PDF viewing, printing, sharing and file-save permission flows on supported devices."),
    ("ONLINE-01", "Verify real Google sign-in, Firebase rules, referral claims and leaderboard synchronization."),
    ("ONLINE-02", "Verify store rating/update links and external browser destinations."),
    ("CONTENT-01", "Expert review of question facts and native-speaker review of translations."),
    ("CONTENT-02", "Review replacement game artwork for visual quality and uniqueness, and confirm every Spot the Difference target matches a visible difference."),
]


def case(identifier, area, errors=None, status=None, **extra):
    errors = errors or []
    return {"id": identifier, "area": area, "status": status or ("failed" if errors else "passed"),
            "errors": errors, **extra}


def digits(text):
    normalized = "".join(str(unicodedata.digit(char)) if char.isdecimal() else char for char in text)
    return re.findall(r"\d+", normalized)


def numeric_tokens_preserved(source, translated):
    # Natural translations may render "one", "another" or "per second" with 1.
    # Require source numerals to survive, but do not reject such extra numerals.
    return not (Counter(digits(source)) - Counter(digits(translated)))


def audit_data():
    catalog_path = ROOT / "assets" / "questions" / "catalog.json"
    if not catalog_path.exists():
        return [case("DATA/catalog", "questions", ["Question catalog is missing."])], {}
    catalog = read(catalog_path)
    cases = []
    fingerprints = {}
    for folder, metadata in catalog["categories"].items():
        root = catalog_path.parent / folder
        english_sets = {}
        try:
            english_sets = {number: read(root / "en" / f"set{number}" / "questions.json") for number in range(1, 6)}
        except (OSError, ValueError) as error:
            cases.append(case(f"DATA/{folder}/en", "questions", [str(error)]))
            continue
        english = [q for number in range(1, 6) for q in english_sets[number]]
        for language in metadata["languages"]:
            errors = []
            bank = []
            for pending in metadata.get("pending_translation_records", {}).get(language, []):
                errors.append(
                    f"Set {pending['set']}, question {pending['index'] + 1}: "
                    "revised English prose is explicitly pending qualified language review."
                )
            for number in range(1, 6):
                path = root / language / f"set{number}" / "questions.json"
                try:
                    questions = read(path)
                    if not isinstance(questions, list) or len(questions) != 25:
                        errors.append(f"Set {number}: expected 25 records.")
                        continue
                    fingerprints[str(path.relative_to(ROOT))] = hashlib.sha256(path.read_bytes()).hexdigest()
                    bank.extend(questions)
                    for index, question in enumerate(questions):
                        prefix = f"Set {number}, question {index + 1}"
                        source = english_sets[number][index]
                        if list(question) != ["category", "set", "question", "options", "answer"]:
                            errors.append(f"{prefix}: schema/key order mismatch.")
                        if question["category"] != metadata["category"] or question["set"] != number:
                            errors.append(f"{prefix}: category/set mismatch.")
                        options = question["options"]
                        if len(options) != 4 or len(set(options)) != 4:
                            errors.append(f"{prefix}: four distinct options required.")
                        if question["answer"] not in options:
                            errors.append(f"{prefix}: answer is not an exact option.")
                        elif options.index(question["answer"]) != source["options"].index(source["answer"]):
                            errors.append(f"{prefix}: answer position differs from English.")
                        if not question["question"].strip():
                            errors.append(f"{prefix}: empty question.")
                        if language != "en":
                            text = question["question"]
                            if text == source["question"]:
                                errors.append(f"{prefix}: unchanged English question.")
                            ranges = SCRIPTS.get(language)
                            if ranges and not any(lo <= ord(char) <= hi for char in text for lo, hi in ranges):
                                errors.append(f"{prefix}: expected native script is absent.")
                            if not numeric_tokens_preserved(source["question"], text):
                                errors.append(f"{prefix}: numeric tokens differ from English.")
                            protected = re.findall(r"`([^`]+)`", source["question"])
                            protected += re.findall(r"(?<!\w)--[A-Za-z][A-Za-z0-9_-]*", source["question"])
                            for token in protected:
                                if token not in text:
                                    errors.append(f"{prefix}: missing technical token {token!r}.")
                except (OSError, ValueError, KeyError, TypeError, IndexError) as error:
                    errors.append(f"Set {number}: {type(error).__name__}: {error}")
            normalized = [" ".join(q["question"].split()).casefold() for q in bank]
            if len(normalized) != len(set(normalized)):
                errors.append("Questions repeat within this category/language bank.")
            if folder in catalog.get("rebuilt_categories", []) and language != "en":
                if metadata.get("aligned_sources", {}).get(language) != checksum(english):
                    errors.append("Rebuilt bank has not been fully translated against the current English source.")
                if metadata.get("aligned_translations", {}).get(language) != checksum(bank):
                    errors.append("Translation provenance is absent or translated content changed after validation.")
            cases.append(case(f"DATA/{folder}/{language}", "questions", errors,
                              set_files=5, records=len(bank)))
    return cases, fingerprints


def flutter_tests(output, timeout, selectors=None):
    executable = shutil.which("flutter")
    if not executable:
        return [case("ENV/flutter", "environment", ["Flutter is not installed or not on PATH."])]
    if not (ROOT / ".dart_tool" / "package_config.json").exists():
        return [case("ENV/packages", "environment", ["Dependencies are not cached. Bootstrap before disconnecting."])]
    sdk = Path(executable).resolve().parent.parent
    engine = sdk / "bin" / "cache" / "artifacts" / "engine"
    tester_files = list(engine.glob("*/flutter_tester.exe")) + list(engine.glob("*/flutter_tester"))
    if not tester_files:
        return [case("ENV/engine", "environment", ["Flutter test engine is not cached; refusing an implicit download."])]
    args = [executable, "test", "--no-pub", "--machine", "--dart-define=ATF_OFFLINE=true"]
    if selectors:
        args.extend(selectors)
    command = args
    if os.name == "nt" and Path(executable).suffix.lower() in {".bat", ".cmd"}:
        command = [os.environ.get("COMSPEC", "cmd.exe"), "/d", "/s", "/c", subprocess.list2cmdline(args)]
    env = {**os.environ, "FLUTTER_SUPPRESS_ANALYTICS": "true", "DART_SUPPRESS_ANALYTICS": "true"}
    log = output / "flutter-machine.jsonl"
    try:
        with log.open("w", encoding="utf-8") as stream:
            result = subprocess.run(command, cwd=ROOT, env=env, stdout=stream,
                                    stderr=subprocess.STDOUT, timeout=timeout, check=False)
    except subprocess.TimeoutExpired:
        return [case("FLUTTER/timeout", "flutter", [f"Test run exceeded {timeout} seconds; inspect flutter-machine.jsonl."])]
    tests = {}
    results = []
    for line in log.read_text(encoding="utf-8", errors="replace").splitlines():
        try:
            event = json.loads(line)
        except ValueError:
            continue
        if not isinstance(event, dict):
            continue
        if event.get("type") == "testStart":
            test = event["test"]
            tests[test["id"]] = {"name": test["name"], "errors": [], "output": [], "start": event.get("time", 0)}
        elif event.get("type") == "print" and event.get("testID") in tests:
            tests[event["testID"]]["output"].append(str(event.get("message", "")))
        elif event.get("type") == "error":
            if event.get("testID") in tests:
                tests[event["testID"]]["errors"].append(str(event.get("error", "")))
        elif event.get("type") == "testDone" and event.get("testID") in tests:
            test = tests[event["testID"]]
            if event.get("hidden") and event.get("result") == "success":
                continue
            status = "skipped" if event.get("skipped") else (
                "passed" if event.get("result") == "success" else "failed")
            if status == "failed" and test["output"]:
                test["errors"].append("\n".join(test["output"])[-12000:])
            results.append(case(test["name"], "flutter", test["errors"], status,
                                duration_ms=event.get("time", 0) - test["start"]))
    if result.returncode and not any(item["status"] == "failed" for item in results):
        results.append(case("FLUTTER/process", "flutter", [f"Flutter exited {result.returncode}; inspect raw log."]))
    if not results:
        results.append(case("FLUTTER/results", "flutter", ["No machine-readable test results were found."]))
    return results


def report_html(report):
    rows = "".join(
        f"<tr class='{item['status']}'><td>{html.escape(item['area'])}</td>"
        f"<td>{html.escape(item['id'])}</td><td>{item['status']}</td>"
        f"<td><pre>{html.escape(chr(10).join(item['errors']))}</pre></td></tr>"
        for item in report["cases"]
    )
    manual = "".join(f"<li><b>{identifier}</b>: {html.escape(description)} — NOT RUN</li>"
                     for identifier, description in MANUAL_CHECKS)
    summary = report["summary"]
    return f"""<!doctype html><html lang=en><meta charset=utf-8>
<title>Offline ATF report</title><style>
body{{font:15px system-ui,sans-serif;margin:24px}}table{{border-collapse:collapse;width:100%}}
td,th{{border:1px solid #ccc;padding:7px;text-align:left}}pre{{white-space:pre-wrap;max-width:650px}}
.failed{{background:#ffe6e6}}.passed{{background:#edf8ed}}.skipped{{background:#fff4d4}}
</style><h1>Offline ATF report</h1><p>{html.escape(report['created_at'])}</p>
<p>Checkout: <code>{html.escape(report.get('environment', {}).get('source_root', 'Not recorded'))}</code></p>
<p><b>{html.escape(report['status'])}</b> — scope: {report['scope']}</p>
<p>Passed: {summary['passed']} · Failed: {summary['failed']} · Skipped: {summary['skipped']}
 · Automated pass rate: {summary['pass_rate_percent']:.2f}%</p>
<p>A 100% automated pass rate is NOT a guarantee of factual correctness, native translation quality,
or real-device/online integration coverage. Missing translations and unrun checks are not successes.</p>
<h2>Automated results</h2><table><tr><th>Area</th><th>Case</th><th>Status</th><th>Evidence</th></tr>{rows}</table>
<h2>Required device, online and expert checks</h2><ul>{manual}</ul></html>"""


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--data-only", action="store_true", help="Diagnostic subset, not a full app run.")
    parser.add_argument("--timeout-seconds", type=int, default=1200)
    parser.add_argument("--output", type=Path, default=ROOT / "build" / "atf")
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=True)
    start = time.monotonic()
    cases, fingerprints = audit_data()
    if not args.data_only:
        cases.extend(flutter_tests(args.output, args.timeout_seconds))
    passed = sum(item["status"] == "passed" for item in cases)
    failed = sum(item["status"] == "failed" for item in cases)
    skipped = sum(item["status"] == "skipped" for item in cases)
    result = {
        "created_at": datetime.now(timezone.utc).isoformat(),
        "scope": "data-only" if args.data_only else "data-and-flutter",
        "status": "FAILED" if failed else "AUTOMATED CHECKS PASSED; MANUAL CHECKS STILL REQUIRED",
        "environment": {"platform": platform.platform(), "python": platform.python_version(),
                        "source_root": str(ROOT.resolve())},
        "duration_seconds": round(time.monotonic() - start, 2),
        "summary": {"passed": passed, "failed": failed, "skipped": skipped,
                    "pass_rate_percent": 100 * passed / max(passed + failed, 1)},
        "cases": cases,
        "manual_checks": [{"id": identifier, "description": description, "status": "not_run"}
                          for identifier, description in MANUAL_CHECKS],
        "question_asset_sha256": fingerprints,
    }
    write(args.output / "report.json", result)
    (args.output / "report.html").write_text(report_html(result), encoding="utf-8")
    state_path = ROOT / "tools" / "app_delivery_state.json"
    if state_path.exists():
        state = read(state_path)
        state["atf"] = {"status": result["status"] + f" ({result['scope']})", "passed": passed, "failed": failed}
        write(state_path, state)
    print(json.dumps(result["summary"]))
    print(f"Report: {args.output / 'report.html'}")
    return 1 if failed else 0


if __name__ == "__main__":
    raise SystemExit(main())
