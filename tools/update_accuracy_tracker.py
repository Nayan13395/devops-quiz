"""Refresh the dashboard from completed audit/application reports."""

import argparse
import json
from pathlib import Path

from apply_accuracy_patches import LANGUAGES, ROOT


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--english-reports", nargs="+", required=True)
    parser.add_argument("--applied-translations", nargs="*", default=[])
    parser.add_argument("--phase", required=True)
    parser.add_argument("--event", required=True)
    args = parser.parse_args()
    state_path = ROOT / "tools" / "accuracy_review_state.json"
    state = json.loads(state_path.read_text(encoding="utf-8"))
    state["phase"] = args.phase
    expected = {}
    for path in args.english_reports:
        report = json.loads(Path(path).read_text(encoding="utf-8"))
        for category, result in report["categories"].items():
            english_path = Path(result["path"])
            records = json.loads(english_path.read_text(encoding="utf-8-sig"))
            corrections = result["corrections"]
            applied = all(records[item["index"]] == item["after"] for item in corrections)
            indexes = [item["index"] for item in corrections]
            state["english"][category] = {
                "records": 25,
                "status": "corrected" if applied and indexes else "reviewed",
                "changed": indexes if applied else [],
            }
            if indexes:
                for language in LANGUAGES:
                    name = english_path.stem[:-3] + f"_{language}.json"
                    relative = str(english_path.with_name(name).relative_to(ROOT))
                    expected[relative] = "pending"
    for path in args.applied_translations:
        report = json.loads(Path(path).read_text(encoding="utf-8"))
        if not report.get("applied"):
            continue
        for relative, changes in report["files"].items():
            if relative not in expected:
                continue
            records = json.loads((ROOT / relative).read_text(encoding="utf-8-sig"))
            if all(records[item["index"]] == item["after"] for item in changes):
                expected[relative] = "done"
    state["translations"] = expected
    state["events"].append(args.event)
    state_path.write_text(json.dumps(state, ensure_ascii=False, indent=2), encoding="utf-8")
    print(f"Tracker: {len(state['english'])} categories; {sum(value == 'done' for value in expected.values())}/{len(expected)} translated files complete.")


if __name__ == "__main__":
    main()
