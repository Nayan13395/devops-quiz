"""Scoped, resumable account, Welcome and Settings localization maintenance."""

import argparse
from collections import Counter
from datetime import datetime
import json
from pathlib import Path
import re
import shutil
import sys

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "translator" / "learning"))
import translate_cards as translation  # noqa: E402
import build_catalogs as cards  # noqa: E402

WORK = ROOT / "translator" / "cache" / "account_welcome"
PROGRESS = WORK

MESSAGES = {
    "accountWelcomeGuest": "Guest",
    "accountWelcomeGuestUser": "Guest User",
    "accountWelcomeUser": "User",
    "accountWelcomePlayingAsGuest": "Playing as Guest",
    "accountWelcomeConnectGoogleAccount": "Connect Google Account",
    "accountWelcomeGoogleConnected": "Google account connected successfully! 🎉",
    "accountWelcomeSignInCancelled": "Sign-in was cancelled.",
    "accountWelcomeConnectFailed": "Failed to connect: {value1}",
    "accountWelcomeSignOut": "Sign Out",
    "accountWelcomeSignOutTitle": "Sign Out?",
    "accountWelcomeSignOutMessage": "Are you sure you want to sign out? You will need to sign in again to access your saved progress.",
    "accountWelcomeSignOutFailed": "Sign out failed: {value1}",
    "accountWelcomeResetAppTitle": "⚠️ Reset App Data?",
    "accountWelcomeResetAppMessage": "This will permanently delete ALL your points, streaks, game history, and settings. You will be signed out and returned to the start screen. This cannot be undone.",
    "accountWelcomeResetEverything": "Reset Everything",
    "accountWelcomeResetFailed": "Reset failed: {value1}",
    "accountWelcomeCancel": "Cancel",
    "accountWelcomeResetAppData": "Reset App Data",
    "accountWelcomeResetAppDataSubtitle": "Clear all points, streaks, and settings",
    "accountWelcomeFooter": "DevOps Quiz App",
    "accountWelcomeTranslationNotAvailable": "Translation not available yet",
    "accountWelcomeContinueWithGoogle": "Continue with Google",
    "accountWelcomeSigningIn": "Signing in...",
    "accountWelcomeOr": "OR",
    "accountWelcomeContinueAsGuest": "Continue as Guest",
    "accountWelcomeSignInLaterFromProfile": "You can sign in later from your profile.",
    "accountWelcomeStartAsGuestAndSignInLater": "You can start as a guest and sign in later.",
    "accountWelcomeGreetingGuest": "Welcome",
    "accountWelcomeUserToast": "Welcome, {value1}!",
    "accountWelcomeGoogleNoUserReturned": "Google Sign-In completed, but no user account was returned.",
    "accountWelcomeErrorEmailExists": "This email already has an account using another sign-in method.",
    "accountWelcomeErrorCredentialInUse": "This Google account is already linked to another account.",
    "accountWelcomeErrorInvalidCredential": "The Google authentication credential is invalid or expired.",
    "accountWelcomeErrorUserDisabled": "This account has been disabled.",
    "accountWelcomeErrorOperationNotAllowed": "Google Sign-In is currently not enabled.",
    "accountWelcomeErrorNetwork": "Network error. Please check your internet connection and try again.",
    "accountWelcomeErrorTooManyRequests": "Too many sign-in attempts. Please wait and try again.",
    "accountWelcomeErrorNoAdditionalInfo": "No additional error information.",
    "accountWelcomeErrorGoogleSignInFailed": "Google Sign-In failed.\n\nCode: {value1}\n{value2}",
    "accountWelcomeErrorGoogleSignInGeneric": "Google Sign-In error:\n{value1}",
    "accountWelcomeErrorContinueAsGuest": "Unable to continue as guest. Please try again.",
    "accountWelcomeGoogleSignInSoon": "Google Sign-In will be available soon.",
    "accountWelcomeLoginTagline": "Learn • Practice • Compete • Earn",
    "accountWelcomeCountryRegion": "Country / region",
    "accountWelcomeCountryRegionSelected": "Country / region: {value1}",
    "accountWelcomeSearchCountry": "Search country",
    "accountWelcomeCountryNotSelected": "Not selected",
    "accountWelcomeWhyDevOpsQuiz": "Why DevOps Quiz?",
    "accountWelcomeFeatureQuestions": "3000+ practice questions",
    "accountWelcomeFeatureLanguages": "Multi-language support",
    "accountWelcomeFeatureStreaks": "Streaks & Leaderboards",
    "accountWelcomeFeatureGames": "Games & Challenges",
    "accountWelcomeFeatureCloud": "Cloud & DevOps",
    "accountWelcomeFeatureRewards": "Bonus & Rewards",
    "accountWelcomePracticeOnTheGo": "Practice on the go",
    "accountWelcomeInstallAndroidPromo": "Install the Android app and learn offline, anywhere.",
    "accountWelcomeGetItOnGooglePlay": "Get it on Google Play",
}


def apply_locale(plan, code, output):
    path = ROOT / "lib" / "l10n" / f"app_{code}.arb"
    original = plan["arb_before"][code]
    previous = cards.read_json(path)
    baseline = json.loads(original)
    if {key: value for key, value in previous.items() if key not in plan["messages"]
        and not (key.startswith("@") and key[1:] in plan["messages"])} != baseline:
        raise ValueError(f"Existing locale messages changed during translation: {code}")
    additions = {}
    for key, value in output.items():
        additions[key] = value
        if code == "en":
            placeholders = re.findall(r"\{(value\d+)\}", value)
            if placeholders:
                additions["@" + key] = {
                    "placeholders": {name: {"type": "String"} for name in placeholders},
                }
    addition_text = json.dumps(additions, ensure_ascii=False, indent=2)[1:-1].strip()
    path.write_text(original.rstrip()[:-1].rstrip() + ",\n  " + addition_text + "\n}\n", encoding="utf-8")


def validate_messages(source, output, code):
    if not isinstance(output, dict) or output.keys() != source.keys():
        raise ValueError("Translated message keys do not match the source")
    for key, item in source.items():
        original, result = item["description"], output[key]
        if not isinstance(result, str) or not result.strip() or "\ufffd" in result:
            raise ValueError(f"{key}: invalid translated text")
        if Counter(re.findall(r"\{[^{}]+\}", original)) != Counter(re.findall(r"\{[^{}]+\}", result)):
            raise ValueError(f"{key}: placeholders changed")
        for token in re.findall(r"\b\d+\b|\b(?:DevOps|Google|Android)\b", re.sub(r"\{[^}]+\}", "", original)):
            if token not in result:
                raise ValueError(f"{key}: missing protected token {token}")
        prose = re.sub(r"\{[^}]+\}|\b(?:DevOps|Google|Android|Play|Quiz|App)\b", "", original)
        if (code in cards.SCRIPTS and re.search(r"[A-Za-z]{2}", prose)
                and not re.search(cards.SCRIPTS[code], result)):
            raise ValueError(f"{key}: native-script text missing")
        if len(prose.split()) >= 3 and result == original:
            raise ValueError(f"{key}: explanatory text was not translated")


def prepare():
    WORK.mkdir(parents=True, exist_ok=True)
    plan_path = WORK / "plan.json"
    if plan_path.exists():
        plan = cards.read_json(plan_path)
    else:
        plan = {
            "messages": MESSAGES,
            "arb_before": {
                code: (ROOT / "lib" / "l10n" / f"app_{code}.arb").read_text(encoding="utf-8")
                for code in cards.LANGUAGES
            },
        }
        translation.write_json(plan_path, plan)
    apply_locale(plan, "en", MESSAGES)
    print(f"Prepared {len(MESSAGES)} account/welcome/settings messages for English.")


def translate_locale(code, plan, statuses, executable):
    source = {
        key: {
            "id": key,
            "command": "UI message; preserve ICU {valueN} placeholders and product names (Google, DevOps, Android) exactly",
            "description": text,
        }
        for key, text in plan["messages"].items()
    }
    if statuses.get(code, {}).get("status") == "done" and (PROGRESS / "applied" / f"{code}.json").exists():
        output = cards.read_json(PROGRESS / "applied" / f"{code}.json")
        if isinstance(output, dict) and output.keys() == plan["messages"].keys():
            validate_messages(source, output, code)
            apply_locale(plan, code, output)
            print(f"SKIP {code}: already done ({len(output)} messages).", flush=True)
            return True
    last_error = None
    for attempt in range(1, 4):
        try:
            output = {}
            statuses[code] = {"status": "in_progress", "attempt": attempt}
            translation.write_json(PROGRESS / "status.json", statuses)
            print(f"{code}: translating account/welcome/settings messages (attempt {attempt}).", flush=True)
            source = {
                key: {
                    "id": key,
                    "command": "UI message; preserve ICU {valueN} placeholders and product names (Google, DevOps, Android) exactly",
                    "description": text,
                }
                for key, text in plan["messages"].items()
            }
            for batch in translation.batches(source, 60):
                output.update(
                    translation.translate_batch(
                        batch, code, "commands", executable, 1200, validator=validate_messages
                    )
                )
            apply_locale(plan, code, output)
            translation.write_json(PROGRESS / "applied" / f"{code}.json", output)
            statuses[code] = {"status": "done", "messages": len(output)}
            translation.write_json(PROGRESS / "status.json", statuses)
            print(f"PASS {code}: {len(output)} messages.", flush=True)
            return True
        except (OSError, ValueError, TypeError, KeyError, RuntimeError, translation.subprocess.TimeoutExpired) as error:
            last_error = error
            print(f"RETRY {code} (attempt {attempt}): {error}", flush=True)
    statuses[code] = {"status": "blocked", "error": str(last_error)}
    translation.write_json(PROGRESS / "status.json", statuses)
    print(f"BLOCKED {code}: {last_error}", flush=True)
    return False


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--prepare", action="store_true")
    parser.add_argument("--translate", action="store_true")
    parser.add_argument("--workers", type=int, default=1)
    parser.add_argument("--languages", nargs="+")
    args = parser.parse_args()
    if args.workers != 1:
        parser.error("Strictly 1 worker allowed per session")
    if args.prepare:
        prepare()
        return 0
    if args.translate:
        executable = shutil.which("copilot")
        if not executable:
            parser.error("GitHub Copilot CLI is required")
        translation.CACHE = WORK / "batches"
        translation.LOGS = ROOT / "translator" / "logs" / "account_welcome"
        translation.NAMES.update(hi="Hindi", mr="Marathi")
        for code in cards.LANGUAGES:
            if code != "en":
                translation.SCRIPTS.setdefault(
                    code, "the standard native script for " + translation.NAMES[code]
                )
        plan = cards.read_json(WORK / "plan.json")
        statuses = (
            cards.read_json(PROGRESS / "status.json")
            if (PROGRESS / "status.json").exists()
            else {}
        )
        codes = args.languages or [code for code in cards.LANGUAGES if code != "en"]
        passed = [translate_locale(code, plan, statuses, executable) for code in codes]
        return 0 if all(passed) else 1
    parser.error("Specify --prepare or --translate")


if __name__ == "__main__":
    raise SystemExit(main())
