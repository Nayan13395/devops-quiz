#!/usr/bin/env python3
"""Translate remaining question banks with GitHub Copilot CLI, sequentially.

Usage:
    python tools/translate_docker_languages.py [category|all] [lang_code ...]
    python tools/translate_docker_languages.py all --dry-run

Defaults to all categories and enabled app languages. Valid existing output
files are skipped; a task is validated before the next task starts.
"""

from __future__ import annotations

import argparse
import json
import shutil
import subprocess
import sys
from pathlib import Path
from typing import Any

QUESTIONS_DIR = Path(__file__).resolve().parent.parent / "assets" / "questions"

# (language name, code)
LANGUAGES = [
    ("Spanish", "es"),
    ("French", "fr"),
    ("German", "de"),
    ("Portuguese", "pt"),
    ("Arabic", "ar"),
    ("Indonesian", "id"),
    ("Russian", "ru"),
    ("Japanese", "ja"),
    ("Simplified Chinese", "zh"),
    ("Assamese", "as"),
    ("Bengali", "bn"),
    ("Dogri", "doi"),
    ("Gujarati", "gu"),
    ("Kannada", "kn"),
    ("Konkani", "gom"),
    ("Maithili", "mai"),
    ("Malayalam", "ml"),
    ("Manipuri", "mni"),
    ("Nepali", "ne"),
    ("Odia", "or"),
    ("Punjabi", "pa"),
    ("Sanskrit", "sa"),
    ("Santali", "sat"),
    ("Sindhi", "sd"),
    ("Tamil", "ta"),
    ("Telugu", "te"),
    ("Urdu", "ur"),
    ("Italian", "it"),
    ("Korean", "ko"),
    ("Turkish", "tr"),
]
PREFERRED_CATEGORIES = ["Azure", "Python", "Ruby", "Perl", "Linux"]


def same_json_structure(source: Any, translated: Any, path: str = "$") -> None:
    """Raise ValueError if keys, list lengths, or JSON value types changed."""
    if type(source) is not type(translated):
        raise ValueError(
            f"JSON type mismatch at {path}: "
            f"{type(source).__name__} != {type(translated).__name__}"
        )
    if isinstance(source, dict):
        if source.keys() != translated.keys():
            missing = sorted(source.keys() - translated.keys())
            extra = sorted(translated.keys() - source.keys())
            raise ValueError(
                f"JSON keys changed at {path}. Missing: {missing}; extra: {extra}"
            )
        for key in source:
            same_json_structure(source[key], translated[key], f"{path}.{key}")
    elif isinstance(source, list):
        if len(source) != len(translated):
            raise ValueError(
                f"List length changed at {path}: {len(source)} != {len(translated)}"
            )
        for i, (s, t) in enumerate(zip(source, translated)):
            same_json_structure(s, t, f"{path}[{i}]")


def validate_quiz(source: list, translated: list) -> None:
    """Quiz-specific checks: category/set preserved, answer is one of options."""
    same_json_structure(source, translated)
    for i, (src, tr) in enumerate(zip(source, translated)):
        for key in ("category", "set"):
            if key in src and src[key] != tr[key]:
                raise ValueError(f"[{i}] '{key}' changed: {src[key]!r} -> {tr[key]!r}")
        options = tr.get("options")
        if isinstance(options, list) and "answer" in tr:
            if tr["answer"] not in options:
                raise ValueError(f"[{i}] answer is not one of the options")
            if src["options"].index(src["answer"]) != options.index(tr["answer"]):
                raise ValueError(f"[{i}] correct answer position changed")
        if not str(tr.get("question", "")).strip():
            raise ValueError(f"[{i}] empty question")


def build_prompt(language: str, source_name: str, output_name: str) -> str:
    return f"""
Translate the contents of {source_name} into {language} and save the result as
{output_name} in the current workspace.

Requirements:
1. Read {source_name} as the only source of truth. It is a JSON array of quiz
   records. Translate every human-readable "question" and every entry in
   "options", and the "answer" text. Do not omit any records.
2. Preserve the exact JSON schema: all object keys, nesting, array lengths,
   record order, option order, "category" and "set" values, numbers, booleans,
   nulls and data types. Do not translate JSON keys.
3. The "answer" value must be exactly identical to the translated option that
   was the correct one in the source (same position in "options"). Never
   reorder options or questions.
4. Keep product/service names, technical terms, acronyms, commands, code,
   flags, URLs, placeholders and variable names unchanged where appropriate.
   Translate surrounding text naturally and accurately for this question bank.
5. Use native {language} script; do not transliterate into English letters.
6. Write valid UTF-8 JSON only: no Markdown fences, comments or extra text.
7. Overwrite only {output_name}; never modify {source_name} or other files.
   Do not use shell commands to call external translation services.
8. Re-read your output once to confirm it is complete valid JSON with the same
   structure as {source_name}. Do not run shell commands; the caller validates.

When done, give a one-line completion message naming {output_name}.
""".strip()


def source_files(category: str) -> list[Path]:
    files = sorted(QUESTIONS_DIR.glob("*/*_en.json"))
    if category.casefold() == "all":
        order = {name.casefold(): index for index, name in enumerate(PREFERRED_CATEGORIES)}
        return sorted(
            files,
            key=lambda path: (
                order.get(path.parent.name.casefold(), len(order)),
                path.parent.name.casefold(),
                path.name.casefold(),
            ),
        )

    matches = [
        path
        for path in files
        if path.parent.name.casefold() == category.casefold()
        or path.stem.removesuffix("_en").casefold() == category.casefold()
    ]
    if not matches:
        known = ", ".join(path.parent.name for path in files)
        raise ValueError(f"Unknown category '{category}'. Available categories: {known}")
    return matches


def target_path(source_path: Path, language_code: str) -> Path:
    stem = source_path.stem.removesuffix("_en")
    return source_path.with_name(f"{stem}_{language_code}.json")


def output_is_valid(source_data: list, output_path: Path) -> bool:
    if not output_path.is_file() or output_path.stat().st_size == 0:
        return False
    try:
        translated = json.loads(output_path.read_text(encoding="utf-8"))
        validate_quiz(source_data, translated)
        return True
    except (OSError, UnicodeError, json.JSONDecodeError, ValueError):
        return False


def main() -> int:
    for stream in (sys.stdout, sys.stderr):
        stream.reconfigure(encoding="utf-8", errors="replace")
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("category", nargs="?", default="all", help="category folder or 'all'")
    parser.add_argument("language_codes", nargs="*", metavar="LANG_CODE")
    parser.add_argument("--dry-run", action="store_true", help="list pending tasks without starting Copilot")
    args = parser.parse_args()

    language_names = {code: language for language, code in LANGUAGES}
    requested_codes = list(dict.fromkeys(args.language_codes)) or list(language_names)
    unknown_codes = [code for code in requested_codes if code not in language_names]
    if unknown_codes:
        parser.error(
            f"unknown language code(s): {', '.join(unknown_codes)}. "
            f"Choose from: {', '.join(language_names)}"
        )

    languages = [(language_names[code], code) for code in requested_codes]
    try:
        sources = source_files(args.category)
    except ValueError as error:
        parser.error(str(error))

    copilot = shutil.which("copilot")

    tasks = []
    skipped = 0
    try:
        for source_path in sources:
            source_data = json.loads(source_path.read_text(encoding="utf-8"))
            if not isinstance(source_data, list):
                raise ValueError(f"Question source must be a JSON array: {source_path}")
            for language, code in languages:
                output_path = target_path(source_path, code)
                if output_is_valid(source_data, output_path):
                    skipped += 1
                    continue
                tasks.append((source_path, source_data, language, code, output_path))
    except (OSError, UnicodeError, json.JSONDecodeError, ValueError) as error:
        print(f"ERROR: Could not inspect translation sources or outputs: {error}")
        return 1

    print(f"Categories: {len(sources)}")
    print(f"Languages:  {len(languages)}")
    print(f"Already valid: {skipped}")
    print(f"Remaining:     {len(tasks)}")
    if args.dry_run:
        for number, (source_path, _, language, code, output_path) in enumerate(tasks, start=1):
            print(
                f"[{number}/{len(tasks)}] {source_path.parent.name}/{language} "
                f"-> {output_path.name}"
            )
        return 0
    if not tasks:
        print("All selected category/language outputs are already valid.")
        return 0
    if not copilot:
        print("ERROR: GitHub Copilot CLI ('copilot') was not found in PATH.")
        return 1

    for number, (source_path, source_data, language, code, output_path) in enumerate(tasks, start=1):
        source_name = source_path.name
        output_name = output_path.name
        print("=" * 72)
        print(
            f"[{number}/{len(tasks)}] {source_path.parent.name}/{language} "
            f"-> {output_name}"
        )

        prompt = " ".join(build_prompt(language, source_name, output_name).split())
        command = [
            copilot,
            "-p",
            prompt,
            "--allow-tool=read",
            "--allow-tool=write",
            "--no-ask-user",
            "--output-format=text",
        ]

        process = None
        try:
            process = subprocess.Popen(
                command,
                cwd=str(source_path.parent),
                stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT,
                text=True,
                encoding="utf-8",
                errors="replace",
                bufsize=1,
            )
            assert process.stdout is not None
            for line in process.stdout:
                print(line, end="", flush=True)
            return_code = process.wait()
        except KeyboardInterrupt:
            print("\nInterrupted. Stopping the current Copilot task.")
            if process:
                process.terminate()
                process.wait()
            return 130
        except OSError as exc:
            print(f"ERROR: Could not start Copilot CLI: {exc}")
            return 1

        if return_code != 0:
            print(
                f"ERROR: {source_path.parent.name}/{language} exited "
                f"with code {return_code}. Stopping."
            )
            return return_code or 1
        if not output_path.is_file():
            print(f"ERROR: {output_name} was not created. Stopping.")
            return 1

        try:
            translated = json.loads(output_path.read_text(encoding="utf-8"))
            validate_quiz(source_data, translated)
        except (OSError, UnicodeError, json.JSONDecodeError, ValueError) as exc:
            print(f"ERROR: Validation failed for {output_name}: {exc}")
            return 1

        print(f"SUCCESS: {output_name} is valid.\n")

    print("=" * 72)
    print(f"ALL DONE: processed {len(tasks)} remaining outputs; skipped {skipped} valid files.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
