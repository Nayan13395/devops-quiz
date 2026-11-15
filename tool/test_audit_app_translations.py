import unittest

from audit_app_translations import ROOT, read


class ArbIntegrityTests(unittest.TestCase):
    def test_all_arb_bundles_reject_duplicate_keys(self):
        for path in sorted((ROOT / "lib" / "l10n").glob("app_*.arb")):
            with self.subTest(locale=path.stem):
                read(path)


if __name__ == "__main__":
    unittest.main()
