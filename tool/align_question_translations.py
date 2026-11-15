"""Prepare/apply offline translation work without inventing English fallbacks.

Preparation reuses only unambiguous text pairs from the previous committed bank.
Human/AI-authored response JSON files supply every remaining translated string.
Application refuses incomplete files and derives answers from English positions.
"""

import argparse
from collections import defaultdict
from copy import deepcopy
import hashlib
import json
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[1]
CATEGORIES = ["Ansible", "Git", "Networking", "Jenkins", "Terraform", "Docker", "Linux", "K8s"]
LANGUAGES = "ar as bn de doi es fr gom gu hi id it ja kn ko mai ml mni mr ne or pa pt ru sa sat sd ta te tr ur zh".split()
COMMAND = re.compile(
    r"^(?:docker|kubectl|git|ansible(?:-[a-z]+)?|terraform|systemctl|journalctl|"
    r"etcdctl|kubeadm|ip|ss|ps|ls|grep|find|chmod|chown|chgrp|tar|crontab|"
    r"curl|ping|traceroute|wc|du|df|sort|uniq|cut|sed|awk|kill|mount|umount|"
    r"nice|renice|lsblk|lscpu|free|uname|head|tail|cat|cp|mv|rm|mkdir|rmdir)\s"
)


def read(path):
    return json.loads(path.read_text(encoding="utf-8-sig"))


def write(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_suffix(path.suffix + ".tmp")
    temporary.write_text(json.dumps(value, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    temporary.replace(path)


def checksum(data):
    return hashlib.sha256(json.dumps(data, ensure_ascii=False, sort_keys=True).encode("utf-8")).hexdigest()


def committed(path, reference):
    result = subprocess.run(
        ["git", "show", f"{reference}:{path.relative_to(ROOT).as_posix()}"],
        cwd=ROOT, check=True, capture_output=True,
    )
    return json.loads(result.stdout.decode("utf-8-sig"))


def same_structure(source, translated):
    return (
        source["category"] == translated["category"]
        and source["set"] == translated["set"]
        and len(source["options"]) == len(translated["options"])
        and source["answer"] in source["options"]
        and translated["answer"] in translated["options"]
        and source["options"].index(source["answer"]) == translated["options"].index(translated["answer"])
    )


def literal(text, known):
    return (
        text in known
        or COMMAND.match(text) is not None
        or re.fullmatch(r"--?[A-Za-z][A-Za-z0-9_=.,:/-]*", text) is not None
        or re.fullmatch(r"\d+(?:[./:]\d+)*(?:/\d+)?", text) is not None
        or re.fullmatch(r"(?:[./~][\w./-]+|[A-Za-z_][\w.-]*\.(?:ya?ml|json|conf|cfg|tf|tfvars|hcl|txt|xml))", text) is not None
    )


def prepare(work, reference):
    banks = {}
    caches = {}
    option_copies = defaultdict(set)
    for category in CATEGORIES:
        folder = ROOT / "assets" / "questions" / category
        path = folder / f"{category.lower()}_en.json"
        source = read(path) if path.exists() else [
            q for number in range(1, 6)
            for q in read(folder / "en" / f"set{number}" / "questions.json")
        ]
        assert len(source) == 125, f"{category}: English is not ready"
        assert all(sum(q["set"] == number for q in source) == 25 for number in range(1, 6))
        banks[category] = (path, source)
        old_source = committed(path, reference)
        for language in LANGUAGES:
            translated_path = path.with_name(path.stem[:-3] + f"_{language}.json")
            backup_path = ROOT / "build" / "question_layout_backup" / translated_path.relative_to(ROOT)
            old_translation = (
                read(translated_path) if translated_path.exists()
                else read(backup_path) if backup_path.exists()
                else committed(translated_path, reference)
            )
            pair_source = old_source
            if language in {"hi", "mr"}:
                baseline = ROOT / "tools" / "verify_baseline" / path.name
                if baseline.exists():
                    pair_source = read(baseline)
            cache = defaultdict(set)
            for number in range(1, 6):
                # These legacy Set 5 banks have undergone several source-only
                # revisions; ordinal agreement is not reliable provenance.
                if language in {"hi", "mr"} and number == 5:
                    continue
                originals = [q for q in pair_source if q["set"] == number]
                translations = [q for q in old_translation if q["set"] == number]
                for english, translated in zip(originals, translations):
                    if not same_structure(english, translated):
                        continue
                    # Exact unchanged English prose is not a translation.
                    if translated["question"] != english["question"]:
                        cache[("question", english["question"])].add(translated["question"])
                    for source_option, translated_option in zip(english["options"], translated["options"]):
                        cache[("option", source_option)].add(translated_option)
                        if source_option == translated_option:
                            option_copies[source_option].add(language)
            caches[(category, language)] = cache
    known_literals = {text for text, languages in option_copies.items() if len(languages) >= 20}
    plan = {"reference_commit": reference, "files": {}, "summary": {}}
    requests = {language: {} for language in LANGUAGES}
    for category, (path, source) in banks.items():
        for language in LANGUAGES:
            cache = caches[(category, language)]

            def field(kind, text):
                candidates = cache.get((kind, text), set())
                if len(candidates) == 1:
                    return {"text": next(iter(candidates)), "origin": "existing_translation"}
                if kind == "option" and literal(text, known_literals):
                    return {"text": text, "origin": "technical_literal"}
                key = checksum([category, kind, text])[:16]
                requests[language][key] = {"category": category, "field": kind, "english": text}
                return {"request": key}

            target = path.with_name(path.stem[:-3] + f"_{language}.json")
            plan["files"][str(target.relative_to(ROOT))] = {
                "source": str(path.relative_to(ROOT)),
                "source_sha256": checksum(source),
                "language": language,
                "records": [
                    {
                        "category": q["category"], "set": q["set"],
                        "question": field("question", q["question"]),
                        "options": [field("option", option) for option in q["options"]],
                        "answer_index": q["options"].index(q["answer"]),
                    }
                    for q in source
                ],
            }
            if not path.exists():
                item = plan["files"].pop(str(target.relative_to(ROOT)))
                item["source_sets"] = [
                    str((path.parent / "en" / f"set{number}" / "questions.json").relative_to(ROOT))
                    for number in range(1, 6)
                ]
                item["target_sets"] = [
                    str((path.parent / language / f"set{number}" / "questions.json").relative_to(ROOT))
                    for number in range(1, 6)
                ]
                del item["source"]
                plan["files"][str((path.parent / language).relative_to(ROOT))] = item
    for language, items in requests.items():
        write(work / "requests" / f"{language}.json", items)
        plan["summary"][language] = {"strings_needing_translation": len(items)}
    write(work / "plan.json", plan)
    print(json.dumps(plan["summary"], indent=2))


def apply(work):
    plan = read(work / "plan.json")
    catalog_path = ROOT / "assets" / "questions" / "catalog.json"
    catalog = read(catalog_path) if catalog_path.exists() else None
    missing = {}
    completed = []
    for relative, item in plan["files"].items():
        source = (
            [q for path in item["source_sets"] for q in read(ROOT / path)]
            if "source_sets" in item else read(ROOT / item["source"])
        )
        if checksum(source) != item["source_sha256"]:
            raise ValueError(f"English changed after translation planning: {relative}")
        response_path = work / "responses" / f"{item['language']}.json"
        responses = read(response_path) if response_path.exists() else {}
        needed = {
            part["request"]
            for record in item["records"]
            for part in [record["question"], *record["options"]]
            if "request" in part and part["request"] not in responses
        }
        if needed:
            missing[relative] = len(needed)
            continue

        def resolve(part):
            value = part["text"] if "text" in part else responses[part["request"]]
            if not isinstance(value, str) or not value.strip():
                raise ValueError(f"Empty or invalid translation: {relative}")
            return value

        translated = []
        for index, record in enumerate(item["records"]):
            question = resolve(record["question"])
            options = [resolve(part) for part in record["options"]]
            if question == source[index]["question"]:
                raise ValueError(f"Untranslated question: {relative}[{index}]")
            if len(set(options)) != 4:
                raise ValueError(f"Duplicate options: {relative}[{index}]")
            translated.append({
                "category": record["category"], "set": record["set"],
                "question": question, "options": options,
                "answer": options[record["answer_index"]],
            })
        if len({" ".join(q["question"].split()).casefold() for q in translated}) != 125:
            raise ValueError(f"Repeated question: {relative}")
        if "target_sets" in item:
            for number, path in enumerate(item["target_sets"], start=1):
                write(ROOT / path, [q for q in translated if q["set"] == number])
            if catalog is not None:
                folder = Path(relative).parts[2]
                catalog["categories"][folder].setdefault("aligned_sources", {})[item["language"]] = item["source_sha256"]
                catalog["categories"][folder].setdefault("aligned_translations", {})[item["language"]] = checksum(translated)
        else:
            write(ROOT / relative, translated)
        completed.append(relative)
    if catalog is not None:
        catalog["rebuilt_categories"] = CATEGORIES
        write(catalog_path, catalog)
    write(work / "status.json", {"completed": completed, "missing": missing})
    print(f"Complete translated files: {len(completed)}/{len(plan['files'])}; incomplete files: {len(missing)}")
    return 1 if missing else 0


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("operation", choices=["prepare", "apply"])
    parser.add_argument("--work-dir", type=Path, default=ROOT / "build" / "translation_rebuild")
    parser.add_argument("--reference-commit")
    args = parser.parse_args()
    if args.operation == "prepare":
        catalog = ROOT / "assets" / "questions" / "catalog.json"
        reference = args.reference_commit or (read(catalog)["reference_commit"] if catalog.exists() else "HEAD")
        prepare(args.work_dir, reference)
        return 0
    return apply(args.work_dir)


if __name__ == "__main__":
    raise SystemExit(main())
