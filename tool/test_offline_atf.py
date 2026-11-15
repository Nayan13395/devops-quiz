import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import run_offline_atf as atf
from run_offline_atf import numeric_tokens_preserved


class NumericTranslationChecks(unittest.TestCase):
    def test_word_order_and_native_digits_are_allowed(self):
        self.assertTrue(numeric_tokens_preserved(
            "RFC 1918 private IPv4 range", "IPv4-Bereich gemäß RFC 1918",
        ))
        self.assertTrue(numeric_tokens_preserved("25 questions", "२५ प्रश्न"))

    def test_word_numbers_may_be_rendered_as_digits(self):
        self.assertTrue(numeric_tokens_preserved("one Pod", "1つのPod"))
        self.assertTrue(numeric_tokens_preserved("requests per second", "1秒あたりのリクエスト"))

    def test_changed_or_missing_source_numerals_fail(self):
        self.assertFalse(numeric_tokens_preserved("25 questions", "26 questions"))
        self.assertFalse(numeric_tokens_preserved("S3 policy for an S3 origin", "S3 origin"))


class OfflineReportChecks(unittest.TestCase):
    def run_report(self, *, data_only=False, flutter_cases=None):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            output = root / "report"
            arguments = ["run_offline_atf.py", "--output", str(output)]
            if data_only:
                arguments.append("--data-only")
            with (
                patch.object(atf, "ROOT", root),
                patch.object(atf, "audit_data", return_value=(
                    [atf.case("DATA/fixture", "data")], {},
                )),
                patch.object(atf, "flutter_tests", return_value=flutter_cases or [
                    atf.case("ATF/font fixture", "flutter"),
                ]) as flutter,
                patch("sys.argv", arguments),
                patch("builtins.print"),
            ):
                exit_code = atf.main()
            report = json.loads((output / "report.json").read_text(encoding="utf-8"))
            page = (output / "report.html").read_text(encoding="utf-8")
            self.assertEqual(report["environment"]["source_root"], str(root.resolve()))
            return exit_code, report, page, flutter

    def test_default_run_includes_flutter_without_filtering_new_cases(self):
        exit_code, report, page, flutter = self.run_report()
        self.assertEqual(exit_code, 0)
        self.assertEqual(report["scope"], "data-and-flutter")
        self.assertEqual(report["summary"]["passed"], 2)
        flutter.assert_called_once()
        self.assertEqual(len(flutter.call_args.args), 2)
        self.assertFalse(flutter.call_args.kwargs)
        self.assertTrue(all(item["status"] == "not_run" for item in report["manual_checks"]))
        self.assertIn("MANUAL CHECKS STILL REQUIRED", page)
        self.assertIn("CONTENT-02", page)

    def test_data_only_is_labelled_as_a_subset_and_does_not_launch_flutter(self):
        exit_code, report, _, flutter = self.run_report(data_only=True)
        self.assertEqual(exit_code, 0)
        self.assertEqual(report["scope"], "data-only")
        self.assertEqual(report["summary"]["passed"], 1)
        flutter.assert_not_called()

    def test_flutter_failures_remain_failures_in_json_html_and_exit_status(self):
        exit_code, report, page, _ = self.run_report(flutter_cases=[
            atf.case("ATF/<fixture>", "flutter", ["missing <font>"]),
        ])
        self.assertEqual(exit_code, 1)
        self.assertEqual(report["status"], "FAILED")
        self.assertEqual(report["summary"]["failed"], 1)
        self.assertIn("ATF/&lt;fixture&gt;", page)
        self.assertIn("missing &lt;font&gt;", page)
        self.assertNotIn("missing <font>", page)


if __name__ == "__main__":
    unittest.main()
