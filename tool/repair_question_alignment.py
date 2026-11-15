"""Repair only the four outstanding question locales with the Python/Copilot queue.

python tool\\repair_question_alignment.py --workers 4
Validated batches and an immutable plan are retained outside the disposable build folder.
"""

from concurrent.futures import ThreadPoolExecutor
from copy import deepcopy
from datetime import datetime
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import sys
import threading

from align_question_translations import ROOT, checksum
from run_offline_atf import audit_data, numeric_tokens_preserved

sys.path.insert(0, str(ROOT / "translator" / "learning"))
import translate_cards as translation
import build_catalogs as cards

LANGUAGES = ("doi", "mai", "mni", "sat")
WORK = ROOT / "translator" / "cache" / "question_alignment"
TRACKER = ROOT / "tools" / "active_work_state.json"
CATALOG = ROOT / "assets" / "questions" / "catalog.json"
LOCK = threading.Lock()


def load_bank(folder, language):
    return [
        record for number in range(1, 6)
        for record in cards.read_json(
            ROOT / "assets" / "questions" / folder / language / f"set{number}" / "questions.json"
        )
    ]


def validate_records(source, translated, language):
    translation.validate_batch(source, translated, language, "concepts")
    for key, original in source.items():
        record = translated[key]
        if list(record) != ["category", "set", "question", "options", "answer"]:
            raise ValueError(f"{key}: schema/key order changed")
        if len(set(record["options"])) != 4:
            raise ValueError(f"{key}: duplicate options")
        for field in ("question",):
            if not numeric_tokens_preserved(original[field], record[field]):
                raise ValueError(f"{key}: numeric tokens differ from English")
            for token in re.findall(r"`([^`]+)`", original[field]):
                if token not in record[field]:
                    raise ValueError(f"{key}: missing technical token {token!r}")
        for english, value in zip(original["options"], record["options"]):
            if not numeric_tokens_preserved(english, value):
                raise ValueError(f"{key}: option numeric tokens differ: {english}")


def reconcile_plan(plan, path):
    """Refresh unfinished banks against current data without touching completed ones.

    Newer answer-prose edits may have changed target banks since the plan was
    written; only still-pending record indexes are re-translated, so those edits survive.
    """
    status_path = WORK / "status.json"
    status = cards.read_json(status_path) if status_path.exists() else {}
    catalog = cards.read_json(CATALOG)
    changed = False
    for key, item in plan["banks"].items():
        folder, code = item["folder"], item["language"]
        if status.get(key, {}).get("status") == "done":
            continue
        source, current = load_bank(folder, "en"), load_bank(folder, code)
        indexes = item["indexes"]
        if folder not in catalog.get("rebuilt_categories", []):
            pending = catalog["categories"][folder].get("pending_translation_records", {}).get(code, [])
            indexes = sorted((flag["set"] - 1) * 25 + flag["index"] for flag in pending)
            if not indexes:
                continue
        if (source != item["source"] or current != item["before"]
                or indexes != item["indexes"]):
            item.update({
                "source": source, "before": current, "source_sha256": checksum(source),
                "indexes": indexes,
            })
            changed = True
    if changed:
        plan["reconciled_at"] = datetime.now().astimezone().isoformat(timespec="seconds")
        translation.write_json(path, plan)
    return plan


def make_plan():
    path = WORK / "plan.json"
    if path.exists():
        return reconcile_plan(cards.read_json(path), path)
    catalog = cards.read_json(CATALOG)
    cases, _ = audit_data()
    plan = {
        "created_at": datetime.now().astimezone().isoformat(timespec="seconds"),
        "method": "Re-translate current English; validate full banks before updating provenance.",
        "catalog_before": catalog,
        "tracker_before": cards.read_json(TRACKER),
        "asset_hashes_before": {
            str(file.relative_to(ROOT)): hashlib.sha256(file.read_bytes()).hexdigest()
            for file in (ROOT / "assets" / "questions").rglob("questions.json")
        },
        "banks": {},
    }
    for case in cases:
        if case["status"] != "failed":
            continue
        _, folder, code = case["id"].split("/")
        if code not in LANGUAGES:
            continue
        source, previous = load_bank(folder, "en"), load_bank(folder, code)
        metadata = catalog["categories"][folder]
        if folder in catalog.get("rebuilt_categories", []):
            # Matching answer indexes alone cannot establish source alignment.
            indexes = list(range(125))
        else:
            indexes = {
                (item["set"] - 1) * 25 + item["index"]
                for item in metadata.get("pending_translation_records", {}).get(code, [])
            }
            for error in case["errors"]:
                match = re.match(r"Set (\d+), question (\d+):", error)
                if match:
                    indexes.add((int(match[1]) - 1) * 25 + int(match[2]) - 1)
            if not indexes:
                raise ValueError(f"No safe record scope for {folder}/{code}: {case['errors']}")
            indexes = sorted(indexes)
        plan["banks"][f"{folder}/{code}"] = {
            "folder": folder, "language": code, "source": source, "before": previous,
            "source_sha256": checksum(source), "indexes": indexes,
            "original_errors": case["errors"],
        }
    translation.write_json(path, plan)
    return plan


def checkpoint(plan, status, message):
    translation.write_json(WORK / "status.json", status)
    state = cards.read_json(TRACKER)
    task = next(task for task in state["tasks"] if task["id"] == "question-bank-alignment")
    done = sum(result["status"] == "done" for result in status.values())
    failed = sum(result["status"] == "blocked" for result in status.values())
    task["status"] = "in_progress"
    task["detail"] = (
        f"{done}/{len(plan['banks'])} affected banks translated, applied and data-validated; "
        f"{failed} blocked. {message} Other backlog tasks are unchanged."
    )
    task["checks"] = [
        {
            "name": f"Translate and validate {key} against current English",
            "done": status.get(key, {}).get("status") == "done",
        }
        for key in plan["banks"]
    ] + [
        {"name": "Pass the full 693-bank data audit after all repairs", "done": False},
        {"name": "Verify dependent learning overlays and runtime regressions", "done": False},
    ]
    state["phase"] = "Item 1 only: " + task["detail"]
    state["status"] = "in_progress"
    state["updated_at"] = datetime.now().astimezone().isoformat(timespec="seconds")
    state["question_alignment_run"] = {
        "script": "tool\\repair_question_alignment.py",
        "status_file": str((WORK / "status.json").relative_to(ROOT)),
        "complete_banks": done, "total_banks": len(plan["banks"]),
        "blocked_banks": failed,
        "native_speaker_review": "Not certified; separate backlog item remains pending.",
    }
    translation.write_json(TRACKER, state)
    print(message, flush=True)


def apply_bank(item, translated, catalog):
    folder, code = item["folder"], item["language"]
    if load_bank(folder, "en") != item["source"]:
        raise ValueError(f"English changed during translation: {folder}")
    current = load_bank(folder, code)
    if current != item["before"] and current != translated:
        raise ValueError(f"Translation changed outside this queue: {folder}/{code}")
    if len(translated) != 125 or len({
        " ".join(record["question"].split()).casefold() for record in translated
    }) != 125:
        raise ValueError(f"Bank has missing/duplicate questions: {folder}/{code}")
    for number in range(1, 6):
        start = (number - 1) * 25
        records = translated[start:start + 25]
        if any(record["set"] != number for record in records):
            raise ValueError(f"Wrong set metadata: {folder}/{code}")
        path = ROOT / "assets" / "questions" / folder / code / f"set{number}" / "questions.json"
        if cards.read_json(path) != records:
            translation.write_json(path, records)
    metadata = catalog["categories"][folder]
    if folder in catalog.get("rebuilt_categories", []):
        metadata.setdefault("aligned_sources", {})[code] = checksum(item["source"])
        metadata.setdefault("aligned_translations", {})[code] = checksum(translated)
    pending = metadata.get("pending_translation_records", {}).get(code, [])
    repaired = set(item["indexes"])
    remaining = [
        flag for flag in pending
        if (flag["set"] - 1) * 25 + flag["index"] not in repaired
    ]
    if pending:
        metadata["pending_translation_records"][code] = remaining
    metadata.setdefault("alignment_reviews", {})[code] = {
        "method": "Copilot translation of current English; deterministic alignment validation",
        "source_sha256": checksum(item["source"]),
        "translated_sha256": checksum(translated),
        "translated_record_indexes": item["indexes"],
        "independent_native_speaker_review": False,
    }
    translation.write_json(CATALOG, catalog)


def repair(key, item, plan, status, executable, timeout, batch_size):
    code = item["language"]
    try:
        with LOCK:
            prior = status.get(key, {})
            if (prior.get("status") == "done"
                    and checksum(load_bank(item["folder"], code)) == prior["translated_sha256"]
                    and checksum(load_bank(item["folder"], "en")) == item["source_sha256"]):
                return True
            status[key] = {"status": "in_progress", "records_ready": 0}
            checkpoint(plan, status, f"Starting {key}: {len(item['indexes'])} records.")
        translated = deepcopy(item["before"])
        source = {str(index): item["source"][index] for index in item["indexes"]}
        for batch in translation.batches(source, batch_size):
            output = translation.translate_batch(
                batch, code, "concepts", executable, timeout, validator=validate_records
            )
            validate_records(batch, output, code)
            for index, record in output.items():
                translated[int(index)] = record
            with LOCK:
                status[key]["records_ready"] += len(batch)
                checkpoint(plan, status,
                           f"{key}: {status[key]['records_ready']}/{len(source)} records validated.")
        with LOCK:
            catalog = cards.read_json(CATALOG)
            apply_bank(item, translated, catalog)
            cases, _ = audit_data()
            result = next(case for case in cases if case["id"] == f"DATA/{key}")
            if result["status"] != "passed":
                raise ValueError(f"{key} still fails: {result['errors']}")
            translation.write_json(WORK / "applied" / (key.replace("/", "_") + ".json"), {
                "source_sha256": item["source_sha256"],
                "translated_sha256": checksum(translated),
                "translated_indexes": item["indexes"],
                "validated_against_current_english": True,
            })
            status[key] = {
                "status": "done", "records_ready": len(source),
                "translated_sha256": checksum(translated),
            }
            checkpoint(plan, status, f"PASS {key}: full 125-record bank validated.")
        return True
    except (OSError, ValueError, TypeError, KeyError, RuntimeError,
            translation.subprocess.TimeoutExpired) as error:
        with LOCK:
            status[key] = {"status": "blocked", "error": str(error)}
            checkpoint(plan, status, f"BLOCKED {key}: {error}")
        return False


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--workers", type=int, default=4)
    parser.add_argument("--batch-size", type=int, default=125)
    parser.add_argument("--timeout", type=int, default=1800)
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()
    if min(args.workers, args.batch_size, args.timeout) < 1:
        parser.error("Workers, batch size and timeout must be positive")
    plan = make_plan()
    print(f"Scope: {len(plan['banks'])} banks; "
          f"{sum(len(item['indexes']) for item in plan['banks'].values())} records")
    if args.dry_run:
        for key, item in plan["banks"].items():
            print(f"{key}: {len(item['indexes'])} records")
        return 0
    executable = shutil.which("copilot")
    if not executable:
        parser.error("GitHub Copilot CLI was not found in PATH")
    # Keep caches distinct from the completed learning-card run.
    translation.CACHE = WORK / "batches"
    translation.LOGS = ROOT / "translator" / "logs" / "question_alignment"
    path = WORK / "status.json"
    status = cards.read_json(path) if path.exists() else {}
    with ThreadPoolExecutor(max_workers=args.workers) as pool:
        results = list(pool.map(
            lambda pair: repair(pair[0], pair[1], plan, status,
                                executable, args.timeout, args.batch_size),
            plan["banks"].items(),
        ))
    return 0 if all(results) else 1


if __name__ == "__main__":
    sys.stdout.reconfigure(encoding="utf-8")
    sys.stderr.reconfigure(encoding="utf-8")
    raise SystemExit(main())
