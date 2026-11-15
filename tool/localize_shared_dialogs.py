"""Translate and apply shared dialog messages with one Copilot CLI worker."""

import argparse
from collections import Counter
import json
from pathlib import Path
import re
import shutil
import sys

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "translator" / "learning"))
import build_catalogs as catalogs
import translate_cards as translation

WORK = ROOT / "translator" / "cache" / "shared_dialogs"
MESSAGES = {
    "sharedDialogLevelCompleted": "Level {value1} completed",
    "sharedDialogPlayLevel": "Play level {value1}",
    "sharedDialogCompleteLevelToUnlock": "Complete level {value1} to unlock",
    "sharedDialogDailyLoginBonus": "Daily Login Bonus",
    "sharedDialogThanksForComingBack": "Thanks for coming back!",
    "sharedDialogDailyRewardAdded":
        "Your daily reward has been added to your total points.",
    "sharedDialogAwesome": "Awesome!",
}
LANGUAGE_NAMES = {
    "ar": "Arabic", "as": "Assamese", "bn": "Bengali", "de": "German",
    "doi": "Dogri", "es": "Spanish", "fr": "French", "gom": "Konkani",
    "gu": "Gujarati", "hi": "Hindi", "id": "Indonesian", "it": "Italian",
    "ja": "Japanese", "kn": "Kannada", "mai": "Maithili",
    "ml": "Malayalam", "mni": "Meitei (Manipuri)", "mr": "Marathi",
    "ne": "Nepali", "or": "Odia", "pa": "Punjabi", "pt": "Portuguese",
    "ru": "Russian", "sa": "Sanskrit", "sat": "Santali", "sd": "Sindhi",
    "ta": "Tamil", "te": "Telugu", "tr": "Turkish", "ur": "Urdu",
    "zh": "Simplified Chinese",
}


def validate(source, output, code):
    if not isinstance(output, dict) or output.keys() != source.keys():
        raise ValueError("Translated message keys do not match the source")
    for key, item in source.items():
        original = item["description"]
        result = output[key]
        if not isinstance(result, str) or not result.strip() or "\ufffd" in result:
            raise ValueError(f"{key}: invalid translated text")
        if Counter(re.findall(r"\{[^{}]+\}", original)) != Counter(
            re.findall(r"\{[^{}]+\}", result)
        ):
            raise ValueError(f"{key}: placeholders changed")
        script = catalogs.SCRIPTS.get(code)
        if script and not re.search(script, result):
            raise ValueError(f"{key}: native-script text missing")
        if len(re.sub(r"\{[^}]+\}", "", original).split()) >= 2 and result == original:
            raise ValueError(f"{key}: message was not translated")


def apply_locale(code, messages):
    path = ROOT / "lib" / "l10n" / f"app_{code}.arb"
    current = catalogs.read_json(path)
    existing = {key: current.get(key) for key in MESSAGES if key in current}
    if existing:
        if existing != messages:
            raise ValueError(f"{code}: existing shared dialog messages differ")
        return
    additions = dict(messages)
    if code == "en":
        for key, value in messages.items():
            placeholders = re.findall(r"\{(value\d+)\}", value)
            if placeholders:
                additions[f"@{key}"] = {
                    "placeholders": {
                        name: {"type": "String"} for name in placeholders
                    }
                }
    addition_text = json.dumps(additions, ensure_ascii=False, indent=2)[1:-1]
    original = path.read_text(encoding="utf-8").rstrip()
    path.write_text(
        original[:-1].rstrip() + ",\n" + addition_text + "\n}\n",
        encoding="utf-8",
    )


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--workers", type=int, default=1)
    args = parser.parse_args()
    if args.workers != 1:
        parser.error("Shared dialog localization must run with exactly one worker")
    executable = shutil.which("copilot")
    if not executable:
        parser.error("GitHub Copilot CLI was not found")

    apply_locale("en", MESSAGES)
    source = {
        key: {
            "id": key,
            "command": "Shared dialog message; preserve {valueN} placeholders",
            "description": value,
        }
        for key, value in MESSAGES.items()
    }
    translation.CACHE = WORK / "batches"
    translation.LOGS = WORK / "logs"
    translation.NAMES.update(LANGUAGE_NAMES)
    translation.SCRIPTS.update({
        code: {
            "hi": "Devanagari", "mr": "Devanagari",
        }.get(code, LANGUAGE_NAMES[code] + " native script")
        for code in LANGUAGE_NAMES
    })
    for code in LANGUAGE_NAMES:
        applied_path = WORK / "applied" / f"{code}.json"
        if applied_path.exists():
            output = catalogs.read_json(applied_path)
            validate(source, output, code)
            apply_locale(code, output)
            print(f"SKIP {code}: validated applied translations", flush=True)
            continue
        output = translation.translate_batch(
            source,
            code,
            "commands",
            executable,
            1200,
            validator=validate,
        )
        apply_locale(code, output)
        translation.write_json(applied_path, output)
        print(f"PASS {code}: {len(output)} shared dialog messages", flush=True)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
