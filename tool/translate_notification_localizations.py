"""Generate localized notification catalogs with the existing translation API."""

import argparse
from copy import deepcopy
from http.client import HTTPException
import json
from pathlib import Path
import re
import sys
import time
from urllib.error import HTTPError, URLError
from urllib.parse import urlencode
from urllib.request import Request, urlopen

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "translator"))
from translate import TRANSLATE_URL

SOURCE = ROOT / "assets" / "notifications" / "en.json"
CACHE = ROOT / "translator" / "cache" / "notification_localization"
OUTPUT = ROOT / "assets" / "notifications"
LANGUAGES = [
    "ar", "as", "bn", "de", "doi", "es", "fr", "gom", "gu", "hi", "id",
    "it", "ja", "kn", "mai", "ml", "mni", "mr", "ne", "or", "pa", "pt",
    "ru", "sa", "sat", "sd", "ta", "te", "tr", "ur", "zh",
]
TARGET_CODES = {"mni": "mni-Mtei"}
PROTECTED = [
    "DevOps Quiz", "Google Play", "DevOps", "Docker", "Kubernetes", "Linux",
    "Terraform", "PowerShell", "JavaScript", "Python", "Ruby", "Perl",
    "Connect Four", "Snake and Ladders", "Ludo", "Tic-Tac-Toe",
    "Memory Match", "Word Guess", "Higher or Lower", "Solar Flare",
]
PLACEHOLDER = re.compile(r"\{[A-Za-z][A-Za-z0-9_]*\}")


def read_json(path):
    return json.loads(path.read_text(encoding="utf-8"))


def write_json(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_suffix(path.suffix + ".tmp")
    temporary.write_text(
        json.dumps(value, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    temporary.replace(path)


def flatten(value, path=()):
    if isinstance(value, dict):
        for key, child in value.items():
            yield from flatten(child, path + (key,))
    elif isinstance(value, list):
        for index, child in enumerate(value):
            yield from flatten(child, path + (index,))
    elif isinstance(value, str):
        yield path, value
    else:
        raise TypeError(f"Unsupported catalog value at {path}: {type(value)}")


def assign(root, path, value):
    current = root
    for segment in path[:-1]:
        current = current[segment]
    current[path[-1]] = value


def translate_batch(items, language):
    protected_pattern = re.compile(
        "("
        + "|".join(
            [PLACEHOLDER.pattern]
            + [re.escape(term) for term in sorted(PROTECTED, key=len, reverse=True)]
        )
        + ")"
    )
    chunks = []
    layouts = []
    for _, text in items:
        layout = []
        for part in protected_pattern.split(text):
            if not part:
                continue
            if protected_pattern.fullmatch(part) or not re.search(r"[A-Za-z]", part):
                layout.append(("literal", part))
            else:
                layout.append(("translated", len(chunks)))
                chunks.append(part)
        layouts.append(layout)

    lines = []
    for index, text in enumerate(chunks):
        marker = f"QZ{index:03d}ZQ"
        lines.append(marker + text)
    query = urlencode({
        "client": "gtx",
        "sl": "en",
        "tl": TARGET_CODES.get(language, language),
        "dt": "t",
        "q": "\n".join(lines),
    })
    request = Request(
        f"{TRANSLATE_URL}?{query}",
        headers={"User-Agent": "DevOpsQuizNotificationTranslator/1.0"},
    )
    for attempt in range(5):
        try:
            with urlopen(request, timeout=60) as response:
                payload = json.loads(response.read().decode("utf-8"))
            translated_chunks = [""] * len(chunks)
            current_index = None
            for segment in payload[0]:
                if not isinstance(segment, list) or not segment:
                    continue
                translated = segment[0] or ""
                original = segment[1] if len(segment) > 1 else ""
                marker = re.search(r"QZ(\d{3})ZQ", original or translated)
                if marker:
                    current_index = int(marker.group(1))
                if current_index is None:
                    continue
                translated = re.sub(r"QZ\d{3}ZQ", "", translated)
                translated_chunks[current_index] += translated
            for index, value in enumerate(translated_chunks):
                if not value:
                    raise ValueError(
                        f"Translation response lost QZ{index:03d}ZQ"
                    )
                translated_chunks[index] = value.strip()
            return [
                "".join(
                    value
                    if kind == "literal"
                    else translated_chunks[value]
                    for kind, value in layout
                )
                for layout in layouts
            ]
        except (
            HTTPError,
            URLError,
            HTTPException,
            OSError,
            TimeoutError,
            ValueError,
            json.JSONDecodeError,
        ):
            if attempt == 4:
                raise
            time.sleep(2 ** attempt)
    raise RuntimeError("Translation failed")


def validate(source_items, translated_items, language):
    if len(source_items) != len(translated_items):
        raise ValueError(f"{language}: translated value count changed")
    for (path, source), (_, translated) in zip(source_items, translated_items):
        if not translated or "\ufffd" in translated:
            raise ValueError(f"{language}: invalid translation at {path}")
        if sorted(PLACEHOLDER.findall(source)) != sorted(PLACEHOLDER.findall(translated)):
            raise ValueError(f"{language}: placeholder mismatch at {path}")
        for term in PROTECTED:
            if term in source and term not in translated:
                raise ValueError(f"{language}: lost protected term {term} at {path}")


def translate_language(source, language, batch_size):
    source_items = list(flatten(source))
    output_path = OUTPUT / f"{language}.json"
    if output_path.exists():
        existing = list(flatten(read_json(output_path)))
        try:
            validate(source_items, existing, language)
            print(f"{language}: retained verified catalog", flush=True)
            return
        except (ValueError, TypeError, KeyError):
            pass
    progress_path = CACHE / f"{language}.progress.json"
    translated_values = read_json(progress_path) if progress_path.exists() else []
    if len(translated_values) > len(source_items):
        raise ValueError(f"{language}: invalid saved progress")
    for start in range(len(translated_values), len(source_items), batch_size):
        batch = source_items[start:start + batch_size]
        translated_values.extend(translate_batch(batch, language))
        write_json(progress_path, translated_values)
        print(
            f"{language}: {min(start + batch_size, len(source_items))}/"
            f"{len(source_items)} strings",
            flush=True,
        )
    translated_items = [
        (path, value)
        for (path, _), value in zip(source_items, translated_values)
    ]
    validate(source_items, translated_items, language)
    result = deepcopy(source)
    for path, value in translated_items:
        assign(result, path, value)
    write_json(CACHE / f"{language}.json", result)
    write_json(output_path, result)
    progress_path.unlink(missing_ok=True)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("languages", nargs="*", default=LANGUAGES)
    parser.add_argument("--workers", type=int, default=1)
    parser.add_argument("--batch-size", type=int, default=12)
    parser.add_argument("--verify", action="store_true")
    args = parser.parse_args()
    if args.workers != 1:
        parser.error("Notification translation must use exactly one worker")
    requested = args.languages or LANGUAGES
    unknown = sorted(set(requested) - set(LANGUAGES))
    if unknown:
        parser.error(f"Unsupported locales: {', '.join(unknown)}")
    source = read_json(SOURCE)
    if args.verify:
        source_items = list(flatten(source))
        for language in requested:
            target = read_json(OUTPUT / f"{language}.json")
            validate(source_items, list(flatten(target)), language)
        print(f"PASS: {len(requested)} notification catalogs")
        return 0
    for language in requested:
        translate_language(source, language, args.batch_size)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
