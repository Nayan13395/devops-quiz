import json
import re
import sys
from pathlib import Path

import ollama

from config import BASE_DIR, MODEL, TEMPERATURE


LANGUAGES = {
    "as": "Assamese",
    "brx": "Bodo",
    "doi": "Dogri",
    "gu": "Gujarati",
    "kn": "Kannada",
    "ks": "Kashmiri",
    "gom": "Konkani",
    "mai": "Maithili",
    "ml": "Malayalam",
    "mni": "Meitei (Manipuri)",
    "ne": "Nepali",
    "or": "Odia",
    "pa": "Punjabi",
    "sa": "Sanskrit",
    "sat": "Santali",
    "sd": "Sindhi",
    "ta": "Tamil",
    "te": "Telugu",
    "ur": "Urdu",
}
BATCH_SIZE = 8
L10N_DIR = BASE_DIR / "lib" / "l10n"
PROGRESS_DIR = BASE_DIR / "translator" / "cache"
PLACEHOLDER = re.compile(r"\{[A-Za-z][A-Za-z0-9_]*\}")


def read_arb(path):
    with path.open("r", encoding="utf-8") as source:
        return json.load(source)


def translated_batch(messages, target_language):
    prompt = f"""
Translate the values of this JSON object from English to {target_language}.
The JSON keys are identifiers: keep every key unchanged and return exactly
those keys. Translate naturally for a software-learning app. Keep product
names, command names, code, acronyms and technical identifiers intact.
Preserve every placeholder exactly, including its braces and spelling, for
example {{expert}}, {{score}}, or {{totalQuestions}}. Preserve \n escapes.
Return ONLY valid JSON, with no markdown or explanation.

{json.dumps(messages, ensure_ascii=False)}
"""

    for attempt in range(3):
        try:
            response = ollama.chat(
                model=MODEL,
                options={"temperature": TEMPERATURE},
                messages=[{"role": "user", "content": prompt}],
            )
            content = response["message"]["content"].strip()
            content = re.sub(r"^```(?:json)?\s*|\s*```$", "", content)
            result = json.loads(content)

            if not isinstance(result, dict) or set(result) != set(messages):
                raise ValueError("Model changed or omitted translation keys.")

            for key, original in messages.items():
                translated = result[key]
                if not isinstance(translated, str) or not translated.strip():
                    raise ValueError(f"Empty translation for {key}.")
                if set(PLACEHOLDER.findall(original)) != set(
                    PLACEHOLDER.findall(translated)
                ):
                    raise ValueError(f"Placeholder mismatch for {key}.")

            return result
        except Exception as error:
            print(f"Retry {attempt + 1}/3: {error}")

    raise RuntimeError("UI translation failed after three attempts.")


def translate_language(language):
    source = read_arb(L10N_DIR / "app_en.arb")
    message_keys = [
        key
        for key, value in source.items()
        if not key.startswith("@") and isinstance(value, str)
    ]
    progress_path = PROGRESS_DIR / f"l10n_{language}.json"
    PROGRESS_DIR.mkdir(parents=True, exist_ok=True)

    translated = {}
    if progress_path.exists():
        translated = read_arb(progress_path)
        unknown = set(translated) - set(message_keys)
        if unknown:
            raise ValueError(f"Unexpected saved progress keys: {sorted(unknown)}")
        print(f"Resuming {language}: {len(translated)}/{len(message_keys)}")

    missing = [key for key in message_keys if key not in translated]

    for start in range(0, len(missing), BATCH_SIZE):
        keys = missing[start : start + BATCH_SIZE]
        batch = {key: source[key] for key in keys}
        translated.update(translated_batch(batch, LANGUAGES[language]))

        temporary = progress_path.with_suffix(".tmp")
        with temporary.open("w", encoding="utf-8") as progress_file:
            json.dump(translated, progress_file, ensure_ascii=False, indent=2)
            progress_file.write("\n")
        temporary.replace(progress_path)
        print(f"{language}: {len(translated)}/{len(message_keys)} UI strings")

    output = {"@@locale": language}
    output.update(translated)
    output.update({key: value for key, value in source.items() if key.startswith("@") and key != "@@locale"})

    output_path = L10N_DIR / f"app_{language}.arb"
    temporary_output = output_path.with_suffix(".arb.tmp")
    with temporary_output.open("w", encoding="utf-8") as output_file:
        json.dump(output, output_file, ensure_ascii=False, indent=2)
        output_file.write("\n")
    temporary_output.replace(output_path)
    print(f"Saved {output_path}")


def main():
    if len(sys.argv) != 2:
        print("Usage: python translator/translate_l10n.py <locale|all>")
        print("Locales:", ", ".join(LANGUAGES))
        return 2

    requested = sys.argv[1].lower()
    languages = list(LANGUAGES) if requested == "all" else [requested]

    for language in languages:
        if language not in LANGUAGES:
            print(f"Unsupported Indian locale: {language}")
            return 2

    try:
        for language in languages:
            translate_language(language)
    except Exception as error:
        print(f"Translation stopped: {error}")
        return 1

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
