from copy import deepcopy
from pathlib import Path
from tempfile import TemporaryDirectory
import unittest
from unittest.mock import patch

import translate_answer_prose as prose


class AnswerProseTests(unittest.TestCase):
    def setUp(self):
        self.policy = prose.cards.read_json(prose.POLICY)
        self.record = {
            "category": "Git", "set": 1, "question": "Existing localized question",
            "options": ["git log", "A user account", "An inventory group", "git diff"],
            "answer": "A user account",
        }

    def test_preserves_product_names_ui_labels_and_code(self):
        for text in (
            "Amazon RDS for MySQL", "Azure Database for PostgreSQL",
            "Build after other projects are built", "from math import sqrt",
            "ansible.builtin.wait_for", "git log",
        ):
            with self.subTest(text=text):
                self.assertFalse(prose.is_prose(text, self.policy))
        for text in ("A user account", "An inventory group", "Encrypt sensitive data",
                     "It lets teams operate on-premises and cloud the same way"):
            self.assertTrue(prose.is_prose(text, self.policy))

    def test_replaces_only_selected_options_and_rebuilds_answer_at_original_position(self):
        before = deepcopy(self.record)
        item = {"before": [self.record], "replacements": [
            {"index": 0, "option": 1, "id": "one"},
            {"index": 0, "option": 2, "id": "two"},
        ]}
        result = prose.replace_options(item, {"one": "उपयोगकर्ता खाता", "two": "इन्वेंटरी समूह"})[0]
        self.assertEqual(self.record, before)
        self.assertEqual(result["question"], before["question"])
        self.assertEqual(result["answer"], result["options"][1])
        self.assertEqual(result["options"][0], "git log")
        self.assertEqual(result["options"][3], "git diff")
        self.assertEqual(list(result), list(before))

    def test_translation_collisions_are_not_published(self):
        item = {"before": [self.record], "replacements": [
            {"index": 0, "option": 1, "id": "one"},
            {"index": 0, "option": 2, "id": "two"},
        ]}
        with self.assertRaisesRegex(ValueError, "collide"):
            prose.replace_options(item, {"one": "समान", "two": "समान"})

    def test_preserves_code_inside_explanatory_prose(self):
        source = {"one": {"id": "one", "command": "",
                          "description": "By starting the name with $"}}
        with self.assertRaisesRegex(ValueError, "lost literal"):
            prose.validate_output(source, {"one": "नाम की शुरुआत चिह्न से करके"}, "hi")
        prose.validate_output(source, {"one": "नाम की शुरुआत $ से करके"}, "hi")

    def test_acronyms_are_not_replaced_by_transliterations(self):
        source = {"one": {"id": "one", "command": "", "description": "Vendor-specific APIs"}}
        with self.assertRaisesRegex(ValueError, "lost technical acronym API"):
            prose.validate_output(source, {"one": "विक्रेता-विशिष्ट एपीआई"}, "hi")
        prose.validate_output(source, {"one": "विक्रेता-विशिष्ट API"}, "hi")

    def test_provenance_and_resume_preserve_unresolved_alignment(self):
        for valid in (True, False):
            with self.subTest(valid_alignment=valid), TemporaryDirectory() as directory:
                root = Path(directory)
                catalog_path = root / "assets" / "questions" / "catalog.json"
                records = []
                for number in range(1, 6):
                    record = {**self.record, "set": number}
                    records.append(record)
                    for code in ("en", "hi"):
                        prose.translation.write_json(
                            root / "assets" / "questions" / "Git" / code /
                            f"set{number}" / "questions.json", [record],
                        )
                metadata = {
                    "aligned_sources": {"hi": prose.checksum(records)},
                    "aligned_translations": {"hi": prose.checksum(records) if valid else "invalid"},
                    "pending_translation_records": {"hi": [{"set": 2, "index": 0}]},
                }
                catalog = {"categories": {"Git": metadata}}
                prose.translation.write_json(catalog_path, catalog)
                relative = str(Path("assets") / "questions" / "Git" / "hi" / "set1" / "questions.json")
                plan = {"catalog_before": catalog, "files": {
                    relative: {"language": "hi", "folder": "Git", "before": [records[0]],
                               "replacements": [{"index": 0, "option": 1, "id": "one"}]},
                }}
                with (patch.object(prose, "ROOT", root),
                      patch.object(prose, "CATALOG", catalog_path),
                      patch.object(prose, "WORK", root / "cache")):
                    output = {"one": "उपयोगकर्ता खाता"}
                    self.assertEqual(prose.apply_language(plan, "hi", output), 1)
                    after = prose.cards.read_json(catalog_path)["categories"]["Git"]
                    self.assertEqual(after["pending_translation_records"],
                                     metadata["pending_translation_records"])
                    expected = prose.checksum(prose.bank("Git", "hi")) if valid else "invalid"
                    self.assertEqual(after["aligned_translations"]["hi"], expected)
                    self.assertEqual(prose.apply_language(plan, "hi", output), 1)
                    prose.translation.write_json(prose.WORK / "applied" / "hi.json", output)
                    improved = {"one": "एक उपयोगकर्ता खाता"}
                    self.assertEqual(prose.apply_language(plan, "hi", improved), 1)
                    prose.translation.write_json(prose.WORK / "applied" / "hi.json", improved)
                    current = prose.cards.read_json(root / relative)
                    current[0]["question"] = "Concurrent edit"
                    prose.translation.write_json(root / relative, current)
                    with self.assertRaisesRegex(ValueError, "changed outside"):
                        prose.apply_language(plan, "hi", output)


if __name__ == "__main__":
    unittest.main()
