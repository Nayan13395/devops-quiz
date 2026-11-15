"""Verify source provenance and current runtime coverage, without English fallback."""

import argparse
import re
import sys

sys.dont_write_bytecode = True
import build_catalogs as build


def main():
    parser = argparse.ArgumentParser()
    scope = parser.add_mutually_exclusive_group()
    scope.add_argument("--require-foreign-complete", action="store_true",
                       help="Fail unless all eleven foreign-language card catalogs are complete")
    scope.add_argument("--require-all-complete", action="store_true",
                       help="Fail unless every app language has all 1000 cards")
    args = parser.parse_args()
    cards = build.source_cards()
    source = {card["id"]: card for card in cards}
    expected, expected_report = build.build()
    report = build.read_json(build.HERE / "coverage.json")
    assert report == expected_report, "Coverage is stale; rebuild the catalogs."
    assert {path.stem[6:] for path in build.HERE.glob("cards_*.json")} == set(build.LANGUAGES)
    totals = {}
    for language in build.LANGUAGES:
        data = build.read_json(build.HERE / f"cards_{language}.json")
        assert data == expected[language], f"Translation source mismatch: {language}"
        for card_id, entry in data.items():
            assert set(entry) == {"command", "description"}, (language, card_id)
            assert all(isinstance(value, str) and value.strip() and "\ufffd" not in value
                       for value in entry.values()), (language, card_id)
            card = source[card_id]
            if card["isConcept"]:
                continue
            assert entry["command"] == card["command"], (language, card_id)
            assert not build.missing_identifiers(card, entry), (language, card_id)
            if language != "en":
                assert entry["description"] != card["description"], (language, card_id)
                for flag in re.findall(r"(?<![\w-])--?[A-Za-z][\w-]*", card["description"]):
                    assert flag in entry["description"], (language, card_id, flag)
        coverage = report["locales"][language]
        assert coverage["translated"] == len(data)
        assert set(coverage["missingIds"]) == set(source) - set(data)
        assert coverage["complete"] == (len(data) == 1000)
        assert coverage["commandDescriptions"] + coverage["conceptsFromQuestionBanks"] == len(data)
        totals[language] = len(data)
    print("PASS: 32 UTF-8 catalogs; exact IDs, source provenance and protected commands.")
    print("Coverage: " + " ".join(f"{key}={value}/1000" for key, value in totals.items()))
    print("Incomplete locales: " + ", ".join(key for key, value in totals.items() if value != 1000))
    print("Availability is not a native-speaker or question-content quality certification.")
    required = build.LANGUAGES if args.require_all_complete else (
        build.FOREIGN_LANGUAGES if args.require_foreign_complete else []
    )
    if required:
        missing = [code for code in required if totals[code] != 1000]
        if missing:
            raise SystemExit("Requested card catalogs remain incomplete: " + ", ".join(missing))
        print(f"PASS: all {len(required)} requested catalogs contain 1000 cards.")


if __name__ == "__main__":
    main()
