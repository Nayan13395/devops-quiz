import json
import re
import sys
from pathlib import Path

import ollama

from config import BASE_DIR, CATEGORY, MODEL, TEMPERATURE


LANGUAGES = {
    "en": "English",
    "hi": "Hindi",
    "mr": "Marathi",
    "es": "Spanish",
    "fr": "French",
    "de": "German",
    "pt": "Portuguese",
    "ar": "Arabic",
    "id": "Indonesian",
    "ru": "Russian",
    "ja": "Japanese",
    "zh": "Simplified Chinese",
    "bn": "Bengali",
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
BATCH_SIZE = 4
QUESTIONS_DIR = BASE_DIR / "assets" / "questions"


def usage():
    print("Usage:")
    print("  python translate.py <language> [category|all]")
    print("Examples:")
    print("  python translate.py es Linux")
    print("  python translate.py ja all")
    print("  python translate.py hi")
    print(f"Languages: {', '.join(LANGUAGES)}")


def source_files(category):
    files = sorted(QUESTIONS_DIR.glob("*/*_en.json"))

    if category.lower() == "all":
        return files

    matches = [
        path
        for path in files
        if path.parent.name.casefold() == category.casefold()
        or path.stem.removesuffix("_en").casefold() == category.casefold()
    ]

    if not matches:
        known = ", ".join(path.parent.name for path in files)
        raise ValueError(f"Unknown category '{category}'. Folders: {known}")

    return matches


def target_file(source, language):
    english_stem = source.stem.removesuffix("_en")
    return source.with_name(f"{english_stem}_{language}.json")


def translate_batch(questions, language):
    source = [
        {"question": q["question"], "options": q["options"]}
        for q in questions
    ]
    prompt = f"""
You are a professional technical translator. Translate the JSON array below
from English to {LANGUAGES[language]}.

Return ONLY a valid JSON array with exactly one object per input object.
Each output object must contain only these keys: "question", "options".
Translate the question and every human-readable answer option. Keep the same
four-option order. Preserve command lines, code, product names, protocols,
acronyms and technical identifiers when translating them would be incorrect.
Do not add explanations, markdown, or extra keys.

Input:
{json.dumps(source, ensure_ascii=False)}
"""

    for attempt in range(3):
        try:
            response = ollama.chat(
                model=MODEL,
                options={"temperature": TEMPERATURE},
                messages=[{"role": "user", "content": prompt}],
            )
            content = response["message"]["content"]
            content = re.sub(r"^```(?:json)?\s*|\s*```$", "", content.strip())
            translated = json.loads(content)

            if not isinstance(translated, list) or len(translated) != len(questions):
                raise ValueError("Model returned the wrong number of questions.")

            for item in translated:
                if not isinstance(item.get("question"), str):
                    raise ValueError("Translated question is missing.")
                options = item.get("options")
                if (
                    not isinstance(options, list)
                    or len(options) != 4
                    or not all(isinstance(option, str) for option in options)
                    or len(set(options)) != 4
                ):
                    raise ValueError("Translated options must be four distinct strings.")

            return translated
        except Exception as error:
            print(f"Retry {attempt + 1}/3: {error}")

    raise RuntimeError("Translation failed after three attempts.")


def save_questions(path, questions):
    temporary = path.with_suffix(path.suffix + ".tmp")
    with temporary.open("w", encoding="utf-8") as output:
        json.dump(questions, output, ensure_ascii=False, indent=2)
        output.write("\n")
    temporary.replace(path)


def translate_file(source, language):
    with source.open("r", encoding="utf-8") as english_file:
        english = json.load(english_file)

    output_path = target_file(source, language)
    translated = []

    if output_path.exists():
        try:
            with output_path.open("r", encoding="utf-8") as output_file:
                translated = json.load(output_file)
        except (OSError, json.JSONDecodeError) as error:
            raise ValueError(f"Cannot resume {output_path}: {error}") from error

        if not isinstance(translated, list) or len(translated) > len(english):
            raise ValueError(f"Unexpected translation output in {output_path}")

        # Older translator output left `answer` in English even when options
        # were translated. Restore the correct option by its source position.
        for index, item in enumerate(translated):
            answer_index = english[index]["options"].index(english[index]["answer"])
            options = item.get("options")
            if not isinstance(options, list) or len(options) != 4:
                raise ValueError(f"Invalid translated options at item {index + 1}")
            item["category"] = english[index]["category"]
            item["set"] = english[index]["set"]
            item["answer"] = options[answer_index]

        if translated:
            save_questions(output_path, translated)
        print(f"Resuming {source.parent.name}: {len(translated)}/{len(english)}")

    for start in range(len(translated), len(english), BATCH_SIZE):
        batch = english[start : start + BATCH_SIZE]
        localized = translate_batch(batch, language)

        for original, result in zip(batch, localized):
            answer_index = original["options"].index(original["answer"])
            translated.append(
                {
                    "category": original["category"],
                    "set": original["set"],
                    "question": result["question"],
                    "options": result["options"],
                    "answer": result["options"][answer_index],
                }
            )

        save_questions(output_path, translated)
        print(f"{source.parent.name}: {len(translated)}/{len(english)}")

    print(f"Saved {output_path}")


def main():
    if len(sys.argv) not in (2, 3):
        usage()
        return 2

    language = sys.argv[1].lower()
    if language not in LANGUAGES:
        usage()
        return 2
    if language == "en":
        print("English is the source language; choose another locale.")
        return 2

    category = sys.argv[2] if len(sys.argv) == 3 else CATEGORY

    try:
        files = source_files(category)
        for source in files:
            translate_file(source, language)
    except Exception as error:
        print(f"Translation stopped: {error}")
        return 1

    print(f"Translation completed for {language} ({LANGUAGES[language]}).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())