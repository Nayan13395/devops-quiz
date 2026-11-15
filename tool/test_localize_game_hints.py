from pathlib import Path
import sys
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parent))
import localize_game_hints as hints


class GameHintLocalizationTests(unittest.TestCase):
    def test_extracts_30_command_match_and_500_word_guess_hints(self):
        sources = hints.extract_sources()
        self.assertEqual(len(sources), 530)
        cm = [item for item in sources.values() if item["kind"] == "command_match"]
        wg = [item for item in sources.values() if item["kind"] == "word_guess"]
        self.assertEqual(len(cm), 30)
        self.assertEqual(len(wg), 500)
        self.assertEqual(cm[0]["command"], "ls -la")
        self.assertEqual(cm[0]["description"], "List all files with details")
        self.assertEqual(wg[0]["command"], "GIT")
        self.assertEqual(wg[0]["description"], "Tracks changes in source code.")
        self.assertEqual(wg[-1]["command"], "SECURE")

    def test_required_tokens_extracts_preserved_acronyms_products_and_flags(self):
        self.assertEqual(
            hints.required_tokens("Google Cloud platform for centralized API management."),
            ["Google", "API"],
        )
        self.assertEqual(
            hints.required_tokens("Unix interrupt signal commonly generated with Control-C."),
            ["Control-C"],
        )

    def test_validate_messages_rejects_unchanged_english_and_missing_tokens(self):
        sample = {
            "gameHintWord037Kubectl": {
                "id": "gameHintWord037Kubectl",
                "kind": "word_guess",
                "command": "KUBECTL",
                "description": "Command-line client for Kubernetes.",
            }
        }
        with self.assertRaisesRegex(ValueError, "unchanged English"):
            hints.validate_messages(
                sample,
                {"gameHintWord037Kubectl": "Command-line client for Kubernetes."},
                "es",
            )
        with self.assertRaisesRegex(ValueError, "missing protected token 'Kubernetes'"):
            hints.validate_messages(
                sample,
                {"gameHintWord037Kubectl": "Cliente de línea de comandos para clústeres."},
                "es",
            )
        with self.assertRaisesRegex(ValueError, "native-script"):
            hints.validate_messages(
                sample,
                {"gameHintWord037Kubectl": "Client for Kubernetes cluster."},
                "hi",
            )
        hints.validate_messages(
            sample,
            {"gameHintWord037Kubectl": "Cliente de línea de comandos para Kubernetes."},
            "es",
        )
        hints.validate_messages(
            sample,
            {"gameHintWord037Kubectl": "Kubernetes के लिए कमांड-लाइन क्लाइंट।"},
            "hi",
        )


if __name__ == "__main__":
    unittest.main()
