"""Apply reviewed record-level corrections without reformatting untouched records."""

import argparse
from copy import deepcopy
import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
LANGUAGES = "ar as bn de doi es fr gom gu hi id it ja kn ko mai ml mni mr ne or pa pt ru sa sat sd ta te tr ur zh".split()


def load(path):
    with path.open(encoding="utf-8-sig", newline="") as stream:
        text = stream.read()
    return text, json.loads(text)


def record_spans(text):
    decoder = json.JSONDecoder()
    position = text.index("[") + 1
    result = []
    while True:
        while text[position].isspace() or text[position] == ",":
            position += 1
        if text[position] == "]":
            return result
        start = position
        _, position = decoder.raw_decode(text, position)
        result.append((start, position))


def replace_records(path, updates, apply):
    text, before = load(path)
    after = deepcopy(before)
    for index, replacement in updates.items():
        after[index] = replacement
    spans = record_spans(text)
    assert len(spans) == len(before) == len(after), path
    newline = "\r\n" if "\r\n" in text else "\n"
    for index in sorted(updates, reverse=True):
        if before[index] == after[index]:
            continue
        start, end = spans[index]
        rendered = json.dumps(after[index], ensure_ascii=False, indent=2)
        rendered = rendered.replace("\n", "\n  ").replace("\n", newline)
        text = text[:start] + rendered + text[end:]
    assert json.loads(text) == after, path
    if apply and after != before:
        with path.open("w", encoding="utf-8", newline="") as stream:
            stream.write(text)
    return before, after


def validate_record(before, after, answer_index=None):
    assert before.keys() == after.keys()
    assert before["category"] == after["category"]
    assert before["set"] == after["set"]
    assert len(before["options"]) == len(after["options"])
    assert len(set(after["options"])) == len(after["options"])
    assert after["answer"] in after["options"]
    expected = before["options"].index(before["answer"]) if answer_index is None else answer_index
    assert expected == after["options"].index(after["answer"])
    assert all(isinstance(value, str) and value for value in [after["question"], *after["options"]])


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--reports", nargs="*", default=[])
    parser.add_argument("--translations", nargs="*", default=[])
    parser.add_argument("--translation-repairs", nargs="*", default=[])
    parser.add_argument("--apply", action="store_true")
    parser.add_argument("--report", required=True)
    args = parser.parse_args()
    planned = {}
    reviewed = {}
    audit = {"applied": args.apply, "files": {}}

    for name in args.reports:
        report = json.loads(Path(name).read_text(encoding="utf-8-sig"))
        for category, result in report["categories"].items():
            path = Path(result["path"])
            _, records = load(path)
            assert result["count"] == len(records), category
            assert sum(record["set"] == 5 for record in records) == 25, category
            assert result["reviewed"] >= 25, category
            reviewed[category] = result
            updates = {}
            for correction in result["corrections"]:
                index = correction["index"]
                assert correction["before"]["set"] == correction["after"]["set"] == 5, (path, index)
                assert records[index] in (correction["before"], correction["after"]), (path, index)
                validate_record(correction["before"], correction["after"])
                updates[index] = correction["after"]
            planned[path] = updates

    for name in args.translation_repairs:
        repairs = json.loads(Path(name).read_text(encoding="utf-8-sig"))
        languages = repairs["languages"]
        assert set(languages) <= set(LANGUAGES)
        for category, patches in repairs["categories"].items():
            english_path = Path(reviewed[category]["path"])
            _, english_bank = load(english_path)
            english_set_indexes = [index for index, record in enumerate(english_bank) if record["set"] == 5]
            for language in languages:
                path = english_path.with_name(english_path.stem[:-3] + f"_{language}.json")
                _, records = load(path)
                translated_set_indexes = [index for index, record in enumerate(records) if record["set"] == 5]
                assert len(translated_set_indexes) == len(english_set_indexes) == 25
                updates = planned.setdefault(path, {})
                for index, patch in patches.items():
                    source = planned[english_path].get(int(index), english_bank[int(index)])
                    assert source["set"] == 5
                    target_index = translated_set_indexes[english_set_indexes.index(int(index))]
                    assert target_index not in updates, (path, target_index, "overlapping repair")
                    before = records[target_index]
                    after = deepcopy(before)
                    assert set(patch["question"]) == set(languages)
                    after["question"] = patch["question"][language]
                    after["options"] = list(source["options"])
                    for option, text in patch.get("options", {}).items():
                        assert set(text) == set(languages)
                        after["options"][int(option)] = text[language]
                    answer_index = source["options"].index(source["answer"])
                    after["answer"] = after["options"][answer_index]
                    validate_record(before, after, answer_index)
                    updates[target_index] = after

    for name in args.translations:
        translated = json.loads(Path(name).read_text(encoding="utf-8-sig"))
        for category, patches in translated["categories"].items():
            english_result = reviewed[category]
            english_path = Path(english_result["path"])
            _, english_bank = load(english_path)
            english_set_indexes = [index for index, record in enumerate(english_bank) if record["set"] == 5]
            corrections = {str(item["index"]): item for item in english_result["corrections"]}
            assert set(patches) == set(corrections), f"Incomplete translation manifest: {category}"
            for language in LANGUAGES:
                path = english_path.with_name(english_path.stem[:-3] + f"_{language}.json")
                _, records = load(path)
                assert len(records) == english_result["count"], path
                translated_set_indexes = [index for index, record in enumerate(records) if record["set"] == 5]
                assert len(translated_set_indexes) == len(english_set_indexes) == 25
                updates = planned.setdefault(path, {})
                for index, patch in patches.items():
                    correction = corrections[index]
                    source_before, source_after = correction["before"], correction["after"]
                    target_index = translated_set_indexes[english_set_indexes.index(int(index))]
                    record = records[target_index]
                    after = deepcopy(record)
                    assert record["set"] == 5, (path, index)
                    assert record["category"] == source_after["category"], (path, index)
                    if source_before["question"] != source_after["question"]:
                        assert "question" in patch, (path, index, "missing translated question")
                    if "question" in patch:
                        assert set(patch["question"]) == set(LANGUAGES), (category, index)
                        after["question"] = patch["question"][language]
                    options = patch.get("options", {})
                    for option, (old, new) in enumerate(zip(source_before["options"], source_after["options"])):
                        if old != new:
                            assert str(option) in options, (path, index, option)
                    for option, value in options.items():
                        if isinstance(value, dict):
                            assert set(value) == set(LANGUAGES), (category, index, option)
                            after["options"][int(option)] = value[language]
                        else:
                            assert value == source_after["options"][int(option)], (path, index, option)
                            after["options"][int(option)] = value
                    answer_index = source_after["options"].index(source_after["answer"])
                    after["answer"] = after["options"][answer_index]
                    validate_record(record, after, answer_index)
                    updates[target_index] = after
                planned[path] = updates

    if args.apply:
        categories = {path.parent.name for path in (ROOT / "assets" / "questions").glob("*/*_en.json")}
        assert set(reviewed) == categories, "Finish all Set 5 English audits before applying corrections."

    # Validate all planned files before writing any of them.
    for path, updates in planned.items():
        before, after = replace_records(path, updates, False)
        if before and "question" in before[0]:
            normalize = lambda value: re.sub(r"\s+", " ", value.strip()).casefold()
            for number in range(1, 6):
                old_unique = {normalize(record["question"]) for record in before if record["set"] == number}
                new_unique = {normalize(record["question"]) for record in after if record["set"] == number}
                assert len(new_unique) >= len(old_unique), f"New duplicate in {path} Set {number}"
        audit["files"][str(path.relative_to(ROOT))] = [
            {"index": index, "before": before[index], "after": after[index]}
            for index in updates if before[index] != after[index]
        ]
    if args.apply:
        for path, updates in planned.items():
            replace_records(path, updates, True)
    Path(args.report).write_text(json.dumps(audit, ensure_ascii=False, indent=2), encoding="utf-8")
    changes = sum(len(records) for records in audit["files"].values())
    print(f"{'Applied' if args.apply else 'Prepared'} {changes} record changes across {len(planned)} files.")


if __name__ == "__main__":
    main()
