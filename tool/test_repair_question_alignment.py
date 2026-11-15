from copy import deepcopy
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import repair_question_alignment as repair


class QuestionAlignmentTests(unittest.TestCase):
    def setUp(self):
        self.source = {
            "category": "Git", "set": 1, "question": "Which Git command lists 5 commits?",
            "options": ["git log -5", "git add", "git rm", "git init"],
            "answer": "git log -5",
        }
        self.translated = {
            **self.source, "question": "Git दे 5 कमिट कुन्नी कमांड दस्सदी ऐ?",
        }

    def test_rejects_wrong_answer_index_missing_numbers_and_code_changes(self):
        repair.validate_records({"0": self.source}, {"0": self.translated}, "doi")
        for change in (
            {"answer": "git add"},
            {"question": "Git दे कमिट कुन्नी कमांड दस्सदी ऐ?"},
            {"options": ["git log -5", "git add", "git remove", "git init"]},
            {"options": ["git log -5", "git add", "git add", "git init"]},
        ):
            with self.subTest(change=change), self.assertRaises(ValueError):
                repair.validate_records({"0": self.source}, {"0": {**self.translated, **change}}, "doi")

    def test_refuses_to_apply_if_source_or_target_changed(self):
        item = {"folder": "Git", "language": "doi", "source": [self.source],
                "before": [self.translated]}
        with patch.object(repair, "load_bank", return_value=[]):
            with self.assertRaisesRegex(ValueError, "English changed"):
                repair.apply_bank(item, [], {})
        with patch.object(repair, "load_bank", side_effect=[[self.source], []]):
            with self.assertRaisesRegex(ValueError, "outside this queue"):
                repair.apply_bank(item, [self.translated], {})

    def test_only_repaired_flags_and_requested_locale_provenance_change(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            original = []
            for index in range(125):
                original.append({
                    **self.translated, "set": index // 25 + 1,
                    "question": self.translated["question"] + str(index),
                })
            translated = deepcopy(original)
            translated[0]["question"] += "?"
            item = {"folder": "Git", "language": "doi", "source": original,
                    "before": original, "indexes": [0]}
            metadata = {
                "aligned_sources": {"mai": "untouched"},
                "aligned_translations": {"mai": "untouched"},
                "pending_translation_records": {
                    "doi": [{"set": 1, "index": 0}, {"set": 1, "index": 1}],
                    "mai": [{"set": 1, "index": 0}],
                },
            }
            catalog = {"rebuilt_categories": ["Git"], "categories": {"Git": metadata}}
            for number in range(1, 6):
                repair.translation.write_json(
                    root / "assets" / "questions" / "Git" / "doi" / f"set{number}" / "questions.json",
                    original[(number - 1) * 25:number * 25],
                )
            with patch.object(repair, "ROOT", root), \
                    patch.object(repair, "CATALOG", root / "catalog.json"), \
                    patch.object(repair, "load_bank", side_effect=[original, original]):
                repair.apply_bank(item, translated, catalog)
            self.assertEqual(metadata["pending_translation_records"]["doi"], [{"set": 1, "index": 1}])
            self.assertEqual(metadata["pending_translation_records"]["mai"], [{"set": 1, "index": 0}])
            self.assertEqual(metadata["aligned_sources"]["mai"], "untouched")
            self.assertEqual(metadata["aligned_translations"]["doi"], repair.checksum(translated))
            self.assertFalse(metadata["alignment_reviews"]["doi"]["independent_native_speaker_review"])


if __name__ == "__main__":
    unittest.main()
