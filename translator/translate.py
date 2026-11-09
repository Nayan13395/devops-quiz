import json
import sys
import time
from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.parse import urlencode
from urllib.request import Request, urlopen

from config import BASE_DIR, CATEGORY


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
    "doi": "Dogri",
    "gu": "Gujarati",
    "kn": "Kannada",
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
TRANSLATE_URL = "https://translate.googleapis.com/translate_a/single"
TARGET_LANGUAGE_CODES = {"mni": "mni-Mtei"}
UNSUPPORTED_LANGUAGES = {}
PROTECTED_TERMS = sorted(
    {
        "Microsoft Entra ID",
        "Azure Virtual Machines",
        "Azure Blob Storage",
        "Azure SQL Database",
        "Azure Cosmos DB",
        "Azure Kubernetes Service",
        "Application Insights",
        "Azure Disk Storage",
        "Azure Queue Storage",
        "Azure Front Door",
        "Azure Load Balancer",
        "Azure Virtual Network",
        "Azure ExpressRoute",
        "Azure VPN Gateway",
        "Azure Files",
        "Azure Functions",
        "Azure Monitor",
        "Azure Firewall",
        "Azure Bastion",
        "Azure Backup",
        "Azure Policy",
        "Azure DevOps",
        "Azure Arc",
        "Microsoft Azure",
        "Application Gateway",
        "Kubernetes",
        "PowerShell",
        "JavaScript",
        "PostgreSQL",
        "Elasticsearch",
        "Prometheus",
        "Terraform",
        "Ansible",
        "Docker",
        "Jenkins",
        "GitHub",
        "GitLab",
        "Linux",
        "Python",
        "Ruby",
        "Perl",
        "Helm",
        "Azure",
        "Microsoft",
        "AKS",
        "CLI",
        "HTTP",
        "HTTPS",
        "DNS",
        "TCP",
        "UDP",
        "SSH",
        "TLS",
        "SSL",
        "JSON",
        "YAML",
        "XML",
        "SQL",
        "NoSQL",
        "IPv4",
        "IPv6",
        "RBAC",
        "API",
        "VM",
        "VNet",
        "CI/CD",
    },
    key=len,
    reverse=True,
)
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
    if language in UNSUPPORTED_LANGUAGES:
        raise ValueError(f"{language}: {UNSUPPORTED_LANGUAGES[language]}")

    fields = []
    protected_values = {}
    next_protected_id = 0
    lines = []
    for question_index, question in enumerate(questions):
        values = [("question", question["question"])]
        values.extend((f"option_{index}", option) for index, option in enumerate(question["options"]))
        for field_name, original_text in values:
            text = original_text
            for term in PROTECTED_TERMS:
                if term.casefold() not in text.casefold():
                    continue
                token = f"QXTERM{next_protected_id:04d}XZ"
                next_protected_id += 1
                start = text.casefold().find(term.casefold())
                while start >= 0:
                    end = start + len(term)
                    protected_values[token] = text[start:end]
                    text = text[:start] + token + text[end:]
                    start = text.casefold().find(term.casefold(), start + len(token))

            marker = f"QZ{len(fields):04d}ZQ"
            fields.append((question_index, field_name, marker))
            lines.append(marker + text)

    text = "\n".join(lines)
    target_code = TARGET_LANGUAGE_CODES.get(language, language)
    query = urlencode(
        {
            "client": "gtx",
            "sl": "en",
            "tl": target_code,
            "dt": "t",
            "q": text,
        }
    )
    request = Request(
        f"{TRANSLATE_URL}?{query}",
        headers={"User-Agent": "DevOpsQuizQuestionTranslator/1.0"},
    )

    for attempt in range(5):
        try:
            with urlopen(request, timeout=45) as response:
                payload = json.loads(response.read().decode("utf-8"))
            translated_text = "".join(
                segment[0]
                for segment in payload[0]
                if isinstance(segment, list) and segment and segment[0]
            )
            positions = []
            for question_index, field_name, marker in fields:
                position = translated_text.find(marker)
                if position < 0:
                    raise ValueError(f"Translation response lost marker {marker}.")
                positions.append((position, question_index, field_name, marker))
            positions.sort()

            result = [
                {"question": "", "options": ["", "", "", ""]}
                for _ in questions
            ]
            for index, (position, question_index, field_name, marker) in enumerate(positions):
                start = position + len(marker)
                end = positions[index + 1][0] if index + 1 < len(positions) else len(translated_text)
                value = translated_text[start:end].strip()
                for token, original in protected_values.items():
                    value = value.replace(token, original)
                if not value:
                    raise ValueError(f"Translation response is empty for {marker}.")
                if field_name == "question":
                    result[question_index]["question"] = value
                else:
                    option_index = int(field_name.removeprefix("option_"))
                    result[question_index]["options"][option_index] = value

            for item in result:
                if not item["question"] or len(item["options"]) != 4 or any(not option for option in item["options"]):
                    raise ValueError("Translation response is missing question fields.")
            return result
        except HTTPError as error:
            if error.code == 400:
                raise ValueError(
                    f"Translation endpoint does not support locale {language} ({target_code})."
                ) from error
            if attempt == 4:
                raise
            delay = min(2 ** attempt, 30)
            print(f"HTTP {error.code}; retrying in {delay}s")
            time.sleep(delay)
        except (URLError, TimeoutError, json.JSONDecodeError, ValueError) as error:
            if attempt == 4:
                raise RuntimeError(f"Translation failed after five attempts: {error}") from error
            delay = min(2 ** attempt, 30)
            print(f"Retry {attempt + 1}/5 in {delay}s: {error}")
            time.sleep(delay)


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

    if output_path.exists() and output_path.stat().st_size > 0:
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