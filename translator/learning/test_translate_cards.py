import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import translate_cards as runner


class CardTranslationRunnerTests(unittest.TestCase):
    def setUp(self):
        self.directory = tempfile.TemporaryDirectory()
        self.addCleanup(self.directory.cleanup)
        self.root = Path(self.directory.name)
        self.card = {
            "id": "example", "command": "git log",
            "description": "Shows 5 Git commits with --max-count.",
        }
        self.translated = "Git इत्यस्य 5 कमिट्-अभिलेखान् --max-count द्वारा प्रदर्शयति।"

    def test_rejects_missing_ids_english_script_and_protected_token_loss(self):
        source = {"example": self.card}
        for output in (
            {}, {"extra": self.translated},
            {"example": self.card["description"]},
            {"example": "Shows five commits."},
            {"example": "कमिट्-अभिलेखान् प्रदर्शयति।"},
        ):
            with self.subTest(output=output), self.assertRaises(ValueError):
                runner.validate_batch(source, output, "sa", "commands")
        runner.validate_batch(source, {"example": self.translated}, "sa", "commands")

    def test_valid_cached_batch_does_not_invoke_copilot(self):
        source = {"example": self.card}
        directory = self.root / "sa" / ("commands-" + runner.fingerprint(source)[:20])
        runner.write_json(directory / "translated.json", {"example": self.translated})
        with patch.object(runner, "CACHE", self.root), \
                patch.object(runner.subprocess, "run") as run:
            output = runner.translate_batch(source, "sa", "commands", "copilot", 10)
        self.assertEqual(output["example"], self.translated)
        run.assert_not_called()

    def test_failed_cli_is_reported_without_success_fallback(self):
        with patch.object(runner, "CACHE", self.root / "cache"), \
                patch.object(runner, "LOGS", self.root / "logs"), \
                patch.object(runner.subprocess, "run") as run:
            run.return_value.returncode = 7
            with self.assertRaisesRegex(RuntimeError, "Copilot exited 7"):
                runner.translate_batch({"example": self.card}, "sa", "commands", "copilot", 10)

    def test_concept_rejects_wrong_script_and_answer_position(self):
        source = {
            "category": "Git", "set": 1, "question": "Which command shows history?",
            "options": ["git add", "git log", "git rm", "git init"], "answer": "git log",
        }
        translated = {**source, "question": "इतिहासं कः आदेशः दर्शयति?"}
        runner.validate_concept(source, translated, "sa")
        with self.assertRaises(ValueError):
            runner.validate_concept(source, {**translated, "answer": "git add"}, "sa")
        with self.assertRaises(ValueError):
            runner.validate_concept(source, translated, "mni")

    def test_concept_application_preserves_other_records_and_detects_conflicts(self):
        path = self.root / "questions.json"
        old = {"question": "old"}
        runner.write_json(path, [old, {"question": "unrelated"}])
        locations = {"card": (path, 0, old)}
        runner.apply_concepts({"card": {"question": "translated"}}, locations)
        data = json.loads(path.read_text(encoding="utf-8"))
        self.assertEqual(data, [{"question": "translated"}, {"question": "unrelated"}])
        with self.assertRaisesRegex(ValueError, "Source changed"):
            runner.apply_concepts({"card": {"question": "overwrite"}}, locations)

    def test_new_concept_output_preserves_literal_commands(self):
        source = {
            "category": "Git", "set": 1, "question": "Which Git command shows history?",
            "options": ["git add", "git log", "git rm", "git init"], "answer": "git log",
        }
        translated = {**source, "question": "Git इतिहासं कः आदेशः दर्शयति?"}
        runner.validate_batch({"card": source}, {"card": translated}, "sa", "concepts")
        changed = {**translated, "options": ["जोड़यति", "git log", "git rm", "git init"]}
        with self.assertRaisesRegex(ValueError, "changed literal"):
            runner.validate_batch({"card": source}, {"card": changed}, "sa", "concepts")


if __name__ == "__main__":
    unittest.main()
