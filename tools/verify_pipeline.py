#!/usr/bin/env python3
"""End-to-end verification pipeline for all question banks.

Phases (state is written to tools/verify_state.json for the progress page):
  1. wait    - wait for translation jobs to finish, fill any missing files
  2. english - fix duplicate/invalid/inaccurate English records with Copilot
               (replace with new unique accurate questions, 25 per set kept)
  3. review  - per language file: re-translate changed records and review every
               record against English with Copilot; validate deterministically
  4. final   - deterministic verification of everything (tools/verify_report.json)

Usage: python tools/verify_pipeline.py [--workers 3] [--skip-wait]
Resumable: finished items are skipped on restart.
"""

from __future__ import annotations

import argparse
import json
import shutil
import subprocess
import sys
import threading
import time
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

TOOLS = Path(__file__).resolve().parent
sys.path.insert(0, str(TOOLS))
import verify_translations as vt  # noqa: E402
from translate_docker_languages import LANGUAGES, QUESTIONS_DIR, validate_quiz  # noqa: E402

STATE_PATH = TOOLS / "verify_state.json"
BASELINE = TOOLS / "verify_baseline"
REVIEWED = TOOLS / "verify_reviewed"
LOG_DIR = TOOLS / "verify_logs"
LOCK = threading.Lock()
NAMES = {code: name for name, code in LANGUAGES}
state: dict = {"phase": "starting", "english": {}, "files": {}, "events": []}


def save() -> None:
    with LOCK:
        STATE_PATH.write_text(json.dumps(state, ensure_ascii=False, indent=1), encoding="utf-8")


def event(msg: str) -> None:
    print(msg, flush=True)
    with LOCK:
        state["events"] = (state["events"] + [f"{time.strftime('%H:%M:%S')} {msg}"])[-40:]
    save()


def run_copilot(prompt: str, cwd: Path, tag: str, timeout: int = 2400) -> bool:
    LOG_DIR.mkdir(exist_ok=True)
    exe = shutil.which("copilot")
    cmd = [exe, "-p", " ".join(prompt.split()), "--allow-tool=read", "--allow-tool=write",
           "--no-ask-user", "--output-format=text"]
    log = LOG_DIR / f"{tag.replace('/', '_')}.log"
    try:
        with log.open("w", encoding="utf-8") as fh:
            proc = subprocess.run(cmd, cwd=str(cwd), stdout=fh, stderr=subprocess.STDOUT,
                                  text=True, encoding="utf-8", errors="replace", timeout=timeout)
        return proc.returncode == 0
    except (subprocess.TimeoutExpired, OSError):
        return False


def load(path: Path):
    return json.loads(path.read_text(encoding="utf-8"))


def en_path(cat: str) -> Path:
    return QUESTIONS_DIR / cat / f"{cat.lower()}_en.json"


def lang_path(cat: str, code: str) -> Path:
    return QUESTIONS_DIR / cat / f"{cat.lower()}_{code}.json"


def categories() -> list[str]:
    return sorted(p.parent.name for p in QUESTIONS_DIR.glob("*/*_en.json"))


def translation_running() -> bool:
    out = subprocess.run(
        ["powershell", "-NoProfile", "-Command",
         "@(Get-CimInstance Win32_Process -Filter \"Name like 'python%'\" | "
         "? { $_.CommandLine -match 'translate_docker_languages' }).Count"],
        capture_output=True, text=True).stdout.strip()
    return out not in ("", "0")


def phase_wait() -> None:
    state["phase"] = "waiting for translation to finish"
    save()
    while translation_running():
        time.sleep(60)
    for attempt in range(1, 4):
        state["phase"] = f"filling missing translations (pass {attempt})"
        save()
        with open(TOOLS / "translate_final.log", "a", encoding="utf-8") as fh:
            rc = subprocess.run([sys.executable, str(TOOLS / "translate_docker_languages.py"), "all"],
                                stdout=fh, stderr=subprocess.STDOUT).returncode
        if rc == 0:
            return
    event("WARNING: some translations still missing after 3 passes")


def english_prompt(cat: str, problems: list[str], first_round: bool) -> str:
    name = en_path(cat).name
    review = (
        f"Also review ALL records in {name} for technical accuracy: exactly one option must be correct, "
        "the answer must equal that option, no ambiguity, no typos; fix wrong ones in place. "
        if first_round else "")
    issues = "; ".join(problems) if problems else "none"
    return (
        f"Edit {name} in the current folder (a JSON array of quiz records; indexes are 0-based array "
        f"positions). {review}Problems to fix by REPLACING the record at each listed index: {issues}. "
        "For every duplicate / near-duplicate / duplicate-option / invalid record, replace that record "
        "with a brand-new, factually accurate question on the same subject and category that is clearly "
        "different from every other question in the file (different concept, not a rewording) and from "
        "similar questions in other categories. Keep the same \"category\" and \"set\" values, keep exactly "
        "4 distinct options with the correct answer text present in options, and keep the question "
        "specific (name the technology). Do not change any other record, keys, order or array length. "
        "Overwrite only the file in place, valid UTF-8 JSON, no shell commands. "
        "Finish with one line saying what you changed.")


def phase_english(workers: int) -> None:
    state["phase"] = "english: fixing duplicates and accuracy"
    BASELINE.mkdir(exist_ok=True)
    for cat in categories():
        b = BASELINE / en_path(cat).name
        if not b.exists():
            shutil.copy2(en_path(cat), b)
    save()

    for rnd in range(1, 5):
        files = {c: load(en_path(c)) for c in categories()}
        problems = vt.check_english(files)
        todo = {}
        for cat in categories():
            probs = problems.get(f"{cat}/en", [])
            info = state["english"].setdefault(cat, {})
            info.update(issues=len(probs), round=rnd - 1, status="clean" if not probs else "pending")
            if probs or not info.get("reviewed"):
                todo[cat] = probs
        save()
        if not todo:
            return

        def work(item):
            cat, probs = item
            state["english"][cat]["status"] = "running"
            save()
            src = en_path(cat)
            backup = src.with_suffix(".bak")
            shutil.copy2(src, backup)
            ok = run_copilot(english_prompt(cat, probs, not state["english"][cat].get("reviewed")),
                             src.parent, f"en_{cat}_r{rnd}")
            try:
                old, new = load(backup), load(src)
                same_shape = len(old) == len(new) and all(
                    o["category"] == n["category"] and o["set"] == n["set"] and n["answer"] in n["options"]
                    and len(n["options"]) == len(o["options"]) for o, n in zip(old, new))
            except Exception:
                same_shape = False
            if ok and same_shape:
                state["english"][cat]["reviewed"] = True
            else:
                shutil.copy2(backup, src)
                state["english"][cat]["status"] = "failed round"
            backup.unlink(missing_ok=True)
            save()

        with ThreadPoolExecutor(workers) as pool:
            list(pool.map(work, todo.items()))
    files = {c: load(en_path(c)) for c in categories()}
    problems = vt.check_english(files)
    for cat in categories():
        probs = problems.get(f"{cat}/en", [])
        state["english"][cat].update(issues=len(probs), status="needs manual fix" if probs else "clean")
    save()


def en_hash(cat: str) -> str:
    import hashlib
    return hashlib.sha256(en_path(cat).read_bytes()).hexdigest()


def seed_reviewed_snapshot() -> None:
    """Remember the English that existing 'ok' translations were reviewed against."""
    REVIEWED.mkdir(exist_ok=True)
    for cat in categories():
        snap = REVIEWED / en_path(cat).name
        if not snap.exists():
            shutil.copy2(en_path(cat), snap)
    if "en_hash" not in state:
        state["en_hash"] = {c: en_hash(c) for c in categories()}
    save()


def changed_indices(cat: str) -> list[int]:
    base, cur = load(REVIEWED / en_path(cat).name), load(en_path(cat))
    return [i for i, (a, b) in enumerate(zip(base, cur)) if a != b]


def review_prompt(cat: str, code: str, changed: list[int], problems: list[str]) -> str:
    en, tr = en_path(cat).name, lang_path(cat, code).name
    lang = NAMES[code]
    fix = (f"The English records at indexes {changed} were replaced: re-translate those records from "
           f"{en} into {lang} (overwrite the records at the same indexes). " if changed else "")
    known = f"Known automated problems to fix: {'; '.join(problems[:40])}. " if problems else ""
    return (
        f"Quality-review {tr} (a {lang} translation of {en}; both are JSON arrays of quiz records with "
        f"identical indexes). {fix}{known}Then check EVERY record against the English: the translated "
        "question and options must have exactly the same meaning, the same option order and the same correct "
        "answer position (the \"answer\" text must be exactly equal to the correct translated option), "
        "use correct standard terminology and natural fluent "
        f"{lang} in the proper native script, and keep commands, flags, code, product names and numbers "
        "unchanged. No two questions may be identical. Fix every error in place with minimal edits to "
        f"{tr} only; never modify {en} or other files; keep keys, order, array length, \"category\" and "
        "\"set\" unchanged; valid UTF-8 JSON only; no shell commands. Finish with one line summarising "
        "how many records you corrected.")


def phase_review(workers: int) -> None:
    state["phase"] = "review: AI quality review of every translation"
    items = [(c, code) for c in categories() for _, code in LANGUAGES]
    for cat, code in items:
        key = f"{cat}/{code}"
        stale = state.get("en_hash", {}).get(cat) != en_hash(cat)
        if key not in state["files"] or stale or state["files"][key].startswith(("failed", "running")):
            state["files"][key] = "pending"
    save()
    changed = {c: changed_indices(c) for c in categories()}

    def work(item):
        cat, code = item
        key = f"{cat}/{code}"
        if state["files"].get(key) == "ok":
            return
        src, path = load(en_path(cat)), lang_path(cat, code)
        backup = path.with_suffix(".bak")
        shutil.copy2(path, backup)
        problems: list[str] = []
        for attempt in range(1, 4):
            state["files"][key] = f"running (try {attempt})"
            save()
            ok = run_copilot(review_prompt(cat, code, changed[cat], problems), path.parent,
                             f"rv_{cat}_{code}_t{attempt}")
            try:
                tr = load(path)
                validate_quiz(src, tr)
                problems = vt.check_translation(src, tr, code)
            except Exception as exc:
                shutil.copy2(backup, path)
                problems = [f"file invalid after edit: {exc}"]
                continue
            if ok and not problems:
                state["files"][key] = "ok"
                backup.unlink(missing_ok=True)
                save()
                return
        state["files"][key] = "failed: " + "; ".join(problems[:2])
        backup.unlink(missing_ok=True)
        save()

    with ThreadPoolExecutor(workers) as pool:
        list(pool.map(work, items))
    if all(v == "ok" for v in state["files"].values()):
        for cat in categories():
            shutil.copy2(en_path(cat), REVIEWED / en_path(cat).name)
        state["en_hash"] = {c: en_hash(c) for c in categories()}
        save()


def phase_final() -> int:
    state["phase"] = "final verification"
    save()
    report = vt.run()
    bad = {k: v for k, v in report["files"].items() if v}
    report["summary"] = {"files_checked": len(report["files"]), "files_with_problems": len(bad),
                         "english_problems": sum(map(len, report["english"].values())),
                         "missing_files": len(report["missing"])}
    (TOOLS / "verify_report.json").write_text(json.dumps(report, ensure_ascii=False, indent=1), encoding="utf-8")
    state["summary"] = report["summary"]
    clean = not bad and not report["english"] and not report["missing"]
    state["phase"] = "COMPLETE: 100% verified" if clean else "FINISHED WITH REMAINING PROBLEMS"
    save()
    return 0 if clean else 1


def main() -> int:
    for s in (sys.stdout, sys.stderr):
        s.reconfigure(encoding="utf-8", errors="replace")
    ap = argparse.ArgumentParser()
    ap.add_argument("--workers", type=int, default=3)
    ap.add_argument("--skip-wait", action="store_true")
    args = ap.parse_args()
    if STATE_PATH.exists():
        state.update(load(STATE_PATH))
    if not args.skip_wait:
        phase_wait()
    seed_reviewed_snapshot()
    phase_english(args.workers)
    phase_review(args.workers)
    return phase_final()


if __name__ == "__main__":
    sys.exit(main())
