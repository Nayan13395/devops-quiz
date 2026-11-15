"""Verify canonical banks and prove that accuracy edits stay within Set 5."""

import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path

from apply_accuracy_patches import LANGUAGES, ROOT


def fingerprint(record):
    encoded = json.dumps(record, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    return hashlib.sha256(encoded.encode("utf-8")).hexdigest()


def inventory():
    files = {}
    errors = []
    for english_path in sorted((ROOT / "assets" / "questions").glob("*/*_en.json")):
        source = json.loads(english_path.read_text(encoding="utf-8-sig"))
        for language in ["en", *LANGUAGES]:
            path = english_path.with_name(english_path.stem[:-3] + f"_{language}.json")
            relative = str(path.relative_to(ROOT))
            if not path.exists():
                errors.append(f"{relative}: missing")
                continue
            data = json.loads(path.read_text(encoding="utf-8-sig"))
            if len(data) != 125:
                errors.append(f"{relative}: expected 125 records")
            counts = Counter(record["set"] for record in data)
            if counts != {number: 25 for number in range(1, 6)}:
                errors.append(f"{relative}: incorrect set counts {dict(counts)}")
            files[relative] = []
            seen_in_set = Counter()
            source_sets = {number: [record for record in source if record["set"] == number] for number in range(1, 6)}
            for index, record in enumerate(data):
                if index >= len(source):
                    break
                number = record["set"]
                ordinal = seen_in_set[number]
                seen_in_set[number] += 1
                english = source_sets[number][ordinal]
                if list(record) != list(english):
                    errors.append(f"{relative}[{index}]: keys/order differ")
                if (record["category"], record["set"]) != (english["category"], english["set"]):
                    errors.append(f"{relative}[{index}]: category/set differs")
                options = record["options"]
                if len(options) != len(english["options"]) or len(set(options)) != len(options):
                    errors.append(f"{relative}[{index}]: invalid options")
                if record["answer"] not in options:
                    errors.append(f"{relative}[{index}]: answer absent")
                elif options.index(record["answer"]) != english["options"].index(english["answer"]):
                    errors.append(f"{relative}[{index}]: answer position differs")
                files[relative].append({"set": record["set"], "sha256": fingerprint(record)})
            for number in range(1, 6):
                questions = [
                    " ".join(record["question"].split())
                    for record in data if record["set"] == number
                ]
                if len(set(questions)) != len(questions):
                    errors.append(f"{relative}: duplicate question in Set {number}")
    return files, errors


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--snapshot")
    parser.add_argument("--baseline")
    parser.add_argument("--report", required=True)
    args = parser.parse_args()
    current, errors = inventory()
    changed = {}
    if args.baseline:
        before = json.loads(Path(args.baseline).read_text(encoding="utf-8"))
        if set(before) != set(current):
            errors.append("Canonical file inventory changed")
        for path, records in current.items():
            old = before.get(path, [])
            if len(records) != len(old):
                errors.append(f"{path}: array length changed")
                continue
            indexes = [index for index, pair in enumerate(zip(old, records)) if pair[0] != pair[1]]
            if indexes:
                changed[path] = indexes
            for index in indexes:
                if records[index]["set"] != 5 or old[index]["set"] != 5:
                    errors.append(f"{path}[{index}]: change outside Set 5")
    if args.snapshot:
        Path(args.snapshot).write_text(json.dumps(current, indent=1), encoding="utf-8")
    outside_scope = [error for error in errors if _outside_set_five(error, current)]
    scoped_errors = [error for error in errors if error not in outside_scope]
    report = {
        "files_checked": len(current),
        "set_cycles_checked": len(current) * 5,
        "errors": scoped_errors,
        "preexisting_outside_scope": outside_scope,
        "changed": changed,
        "note": "Structural validation and change-scope checks do not certify factual or linguistic accuracy.",
    }
    Path(args.report).write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding="utf-8")
    print(json.dumps({
        "files_checked": len(current),
        "set_cycles_checked": len(current) * 5,
        "set5_errors": len(scoped_errors),
        "preexisting_outside_scope": len(outside_scope),
        "changed_files": len(changed),
    }))
    return 1 if scoped_errors else 0


def _outside_set_five(error, files):
    import re
    match = re.match(r"(.+\.json)\[(\d+)\]: answer position differs$", error)
    if not match:
        return False
    path, index = match.group(1), int(match.group(2))
    return path in files and files[path][index]["set"] != 5


if __name__ == "__main__":
    raise SystemExit(main())
