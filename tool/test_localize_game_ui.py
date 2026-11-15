from pathlib import Path
import unittest

import localize_game_ui as ui


class GameUiTranslationTests(unittest.TestCase):
    def test_numbered_scene_inventory_matches_current_catalog(self):
        self.assertEqual(
            ui.numbered_scene_titles(),
            [f"3D Scene {number}" for number in range(1, 101)],
        )

    def test_adjacent_strings_keep_nested_expressions_as_placeholders(self):
        text = """Text('Wins: $wins\\n' '${bonus ? 'Bonus: $points' : ''}Done')"""
        tokens = ui.strings(text)
        self.assertEqual(len(tokens), 1)
        value, expressions = ui.message(tokens[0][2])
        self.assertEqual(value, "Wins: {value1}\n{value2}Done")
        self.assertEqual(expressions, ["wins", "bonus ? 'Bonus: $points' : ''"])

    def test_reward_identity_and_technical_content_are_not_localized(self):
        source = """
class CommandMatchScreen {}
gameName: 'Mystery Deal';
if (widget.gameName == 'Mystery Deal') {}
const key = 'saved_game_key';
Text('Play again');
"""
        values = [item[2] for item in ui.candidates(Path("command_match_screen.dart"), source)]
        self.assertEqual(values, ["Play again"])

    def test_placeholders_and_reward_amounts_cannot_disappear(self):
        source = {"reward": {"description": "You earned {value1} points plus 20 bonus points."}}
        with self.assertRaisesRegex(ValueError, "placeholders"):
            ui.validate_messages(source, {"reward": "Vous avez reçu 20 points."}, "fr")
        with self.assertRaisesRegex(ValueError, "protected token 20"):
            ui.validate_messages(source, {"reward": "Vous avez reçu {value1} points."}, "fr")
        ui.validate_messages(source, {
            "reward": "Vous avez reçu {value1} points et 20 points bonus.",
        }, "fr")


if __name__ == "__main__":
    unittest.main()
