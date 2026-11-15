"""Migrate legacy banks to category/language/setN/questions.json with backups."""

from collections import Counter
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess

from align_question_translations import LANGUAGES, ROOT, checksum, read, write


def main():
    question_root = ROOT / "assets" / "questions"
    backup = ROOT / "build" / "question_layout_backup"
    english_files = sorted(question_root.glob("*/*_en.json"))
    if not english_files:
        raise SystemExit("No legacy English banks found; migration may already be complete.")
    outputs = {}
    originals = []
    catalog = {
        "schema_version": 2,
        "questions_per_set": 25,
        "sets": [1, 2, 3, 4, 5],
        "reference_commit": subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=ROOT, text=True).strip(),
        "categories": {},
    }
    for english in english_files:
        folder = english.parent
        stem = english.stem[:-3]
        category = read(english)[0]["category"]
        catalog["categories"][folder.name] = {
            "category": category, "legacy_stem": stem, "languages": ["en", *LANGUAGES],
        }
        for language in ["en", *LANGUAGES]:
            source = folder / f"{stem}_{language}.json"
            records = read(source)
            if len(records) != 125 or Counter(q["set"] for q in records) != {number: 25 for number in range(1, 6)}:
                raise ValueError(f"{source}: expected five sets of 25 before migration")
            for number in range(1, 6):
                questions = [q for q in records if q["set"] == number]
                if len({q["question"].strip() for q in questions}) != 25:
                    raise ValueError(f"{source}: repeated question in Set {number}")
                for q in questions:
                    if len(q["options"]) != 4 or q["answer"] not in q["options"]:
                        raise ValueError(f"{source}: invalid question options/answer")
                destination = folder / language / f"set{number}" / "questions.json"
                if destination.exists() and read(destination) != questions:
                    raise ValueError(f"Refusing to overwrite different existing data: {destination}")
                outputs[destination] = questions
            originals.append(source)

    # Back up every legacy question asset, including unused temporary variants.
    archived = sorted(set(
        originals
        + list(question_root.glob("*/*.json"))
        + list(question_root.glob("*.json"))
        + list((ROOT / "assets").glob("questions_*.json"))
    ))
    backup_hashes = {}
    for source in archived:
        if source.name == "catalog.json":
            continue
        destination = backup / source.relative_to(ROOT)
        if destination.exists() and destination.read_bytes() != source.read_bytes():
            raise ValueError(f"A different backup already exists: {destination}")
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(source, destination)
        digest = hashlib.sha256(source.read_bytes()).hexdigest()
        if hashlib.sha256(destination.read_bytes()).hexdigest() != digest:
            raise IOError(f"Backup verification failed: {source}")
        backup_hashes[str(source.relative_to(ROOT))] = digest
    for destination, questions in outputs.items():
        write(destination, questions)
        if read(destination) != questions:
            raise IOError(f"Migration validation failed: {destination}")
    write(question_root / "catalog.json", catalog)

    # Flutter asset directory declarations are not recursive.
    pubspec = ROOT / "pubspec.yaml"
    text = pubspec.read_text(encoding="utf-8")
    text = re.sub(r"^    - assets/questions(?:/|_).*\n", "", text, flags=re.MULTILINE)
    entries = ["    - assets/questions/catalog.json"]
    entries += [f"    - {path.relative_to(ROOT).as_posix()}" for path in sorted(outputs)]
    text = text.replace("  assets:\n", "  assets:\n" + "\n".join(entries) + "\n", 1)
    pubspec.write_text(text, encoding="utf-8")

    work = ROOT / "build" / "translation_rebuild"
    if (work / "plan.json").exists():
        plan = read(work / "plan.json")
        relocated = {}
        for _, item in plan["files"].items():
            old_source = ROOT / item["source"]
            folder = old_source.parent.name
            source_paths = [
                question_root / folder / "en" / f"set{number}" / "questions.json"
                for number in range(1, 6)
            ]
            target_paths = [
                question_root / folder / item["language"] / f"set{number}" / "questions.json"
                for number in range(1, 6)
            ]
            ordered_source = [q for path in source_paths for q in read(path)]
            item["source_sets"] = [str(path.relative_to(ROOT)) for path in source_paths]
            item["target_sets"] = [str(path.relative_to(ROOT)) for path in target_paths]
            item["source_sha256"] = checksum(ordered_source)
            item["records"].sort(key=lambda record: record["set"])
            del item["source"]
            relocated[str((question_root / folder / item["language"]).relative_to(ROOT))] = item
        plan["files"] = relocated
        write(work / "plan.json", plan)

    # Delete only the individually backed-up legacy files, never their folders.
    for relative in backup_hashes:
        (ROOT / relative).unlink()
    write(backup / "migration_report.json", {
        "legacy_files_backed_up": backup_hashes,
        "new_set_files": len(outputs),
        "categories": len(catalog["categories"]),
        "question_records": sum(len(records) for records in outputs.values()),
    })
    print(f"Migrated {len(outputs)} set files for {len(catalog['categories'])} categories; backups: {backup}")


if __name__ == "__main__":
    main()
