import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import build_catalogs as build


class CardCatalogTests(unittest.TestCase):
    def setUp(self):
        self.directory = tempfile.TemporaryDirectory()
        self.root = Path(self.directory.name)
        self.addCleanup(self.directory.cleanup)

    def test_reads_all_sets_in_runtime_order_not_retired_flat_files(self):
        for number in range(1, 6):
            folder = self.root / "assets" / "questions" / "Git" / "es" / f"set{number}"
            folder.mkdir(parents=True)
            (folder / "questions.json").write_text(json.dumps([
                {"set": number, "question": f"{number}:{index}"} for index in range(25)
            ]), encoding="utf-8")
        with patch.object(build, "ROOT", self.root), patch.object(build, "TOPICS", {"Git": "Git"}), \
                patch.object(build, "LANGUAGES", ["es"]):
            bank = build.quiz_assets()["Git", "es"]
        self.assertEqual(len(bank), 125)
        self.assertEqual(bank[25]["question"], "2:0")
        self.assertEqual(bank[-1]["question"], "5:24")

    def test_missing_set_fails_instead_of_reporting_empty_success(self):
        with patch.object(build, "ROOT", self.root), patch.object(build, "TOPICS", {"Git": "Git"}), \
                patch.object(build, "LANGUAGES", ["es"]):
            with self.assertRaises(FileNotFoundError):
                build.quiz_assets()

    def test_authored_descriptions_preserve_commands_flags_and_numbers(self):
        card = dict(id="git-001", isConcept=False, command="git log --max-count=5",
                    description="Shows 5 Git commits with --max-count.")
        path = self.root / "command_translations_test.json"
        for description, valid in (
            ("Muestra 5 commits de Git con --max-count.", True),
            ("Muestra commits de Git.", False),
            (card["description"], False),
        ):
            path.write_text(json.dumps({"es": {"git-001": description}}), encoding="utf-8")
            with patch.object(build, "MAINTENANCE", self.root):
                if valid:
                    self.assertEqual(build.command_overrides([card])["es"]["git-001"], description)
                else:
                    with self.assertRaises(ValueError):
                        build.command_overrides([card])

    def test_unknown_cards_and_duplicate_locale_entries_are_rejected(self):
        card = dict(id="git-001", isConcept=False, command="git status",
                    description="Shows the working tree status.")
        first = self.root / "command_translations_one.json"
        first.write_text('{"es":{"unknown":"Muestra el estado."}}', encoding="utf-8")
        with patch.object(build, "MAINTENANCE", self.root):
            with self.assertRaisesRegex(ValueError, "Unknown command card"):
                build.command_overrides([card])
            first.write_text('{"es":{"git-001":"Muestra el estado."}}', encoding="utf-8")
            (self.root / "command_translations_two.json").write_text(first.read_text(), encoding="utf-8")
            with self.assertRaisesRegex(ValueError, "Duplicate command translation"):
                build.command_overrides([card])


if __name__ == "__main__":
    unittest.main()
