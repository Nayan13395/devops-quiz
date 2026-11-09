import json
import sys
from datetime import datetime, timezone
from urllib.error import HTTPError

from config import BASE_DIR
from translate import LANGUAGES, UNSUPPORTED_LANGUAGES, source_files, target_file, translate_file


QUEUE_LANGUAGES = [
    "as",
    "bn",
    "doi",
    "gu",
    "kn",
    "gom",
    "mai",
    "ml",
    "mni",
    "ne",
    "or",
    "pa",
    "sa",
    "sat",
    "sd",
    "ta",
    "te",
    "ur",
]
PREFERRED_CATEGORIES = ["Azure", "Python", "Ruby", "Perl", "Linux"]
REPORT_PATH = BASE_DIR / "translator" / "logs" / "translation_queue_status.json"


def ordered_sources(category):
    files = source_files(category)
    if category.casefold() != "all":
        return files
    order = {name.casefold(): index for index, name in enumerate(PREFERRED_CATEGORIES)}
    return sorted(
        files,
        key=lambda path: (
            order.get(path.parent.name.casefold(), len(order)),
            path.parent.name.casefold(),
        ),
    )


def save_report(report):
    REPORT_PATH.parent.mkdir(parents=True, exist_ok=True)
    temporary = REPORT_PATH.with_suffix(".tmp")
    with temporary.open("w", encoding="utf-8") as output:
        json.dump(report, output, ensure_ascii=False, indent=2)
        output.write("\n")
    temporary.replace(REPORT_PATH)


def run_queue(category):
    files = ordered_sources(category)
    report = {
        "started_at": datetime.now(timezone.utc).isoformat(),
        "category_filter": category,
        "tasks": [
            {
                "category": source.parent.name,
                "language": language,
                "language_name": LANGUAGES[language],
                "output": str(target_file(source, language).relative_to(BASE_DIR)),
                "status": "unsupported" if language in UNSUPPORTED_LANGUAGES else "pending",
                **({"detail": UNSUPPORTED_LANGUAGES[language]} if language in UNSUPPORTED_LANGUAGES else {}),
            }
            for source in files
            for language in QUEUE_LANGUAGES
        ],
    }
    save_report(report)

    task_index = 0
    for source in files:
        for language in QUEUE_LANGUAGES:
            task = report["tasks"][task_index]
            task_index += 1
            if language in UNSUPPORTED_LANGUAGES:
                task["status"] = "unsupported"
                task["detail"] = UNSUPPORTED_LANGUAGES[language]
                print(f"SKIP {source.parent.name}/{language}: {task['detail']}")
            else:
                try:
                    print(f"START {source.parent.name}/{language}")
                    task["status"] = "running"
                    save_report(report)
                    translate_file(source, language)
                    task["status"] = "complete"
                except HTTPError as error:
                    task["status"] = "pending" if error.code == 429 else "failed"
                    task["detail"] = str(error)
                    if error.code == 429:
                        report["paused_at"] = datetime.now(timezone.utc).isoformat()
                        report["pause_reason"] = "Translation endpoint rate limit (HTTP 429). Resume this queue later."
                        save_report(report)
                        print(f"Queue paused: {report['pause_reason']}")
                        print(f"Status report: {REPORT_PATH}")
                        return 1
                except Exception as error:
                    task["status"] = "failed"
                    task["detail"] = str(error)
                    print(f"FAILED {source.parent.name}/{language}: {error}")
            save_report(report)

    report["finished_at"] = datetime.now(timezone.utc).isoformat()
    save_report(report)
    complete = sum(task["status"] == "complete" for task in report["tasks"])
    skipped = sum(task["status"] == "unsupported" for task in report["tasks"])
    failed = sum(task["status"] == "failed" for task in report["tasks"])
    print(f"Queue finished: {complete} complete, {skipped} unsupported, {failed} failed.")
    print(f"Status report: {REPORT_PATH}")
    return 1 if failed else 0


def main():
    if len(sys.argv) > 2:
        print("Usage: python translator/translate_queue.py [category|all]")
        return 2
    category = sys.argv[1] if len(sys.argv) == 2 else "all"
    try:
        return run_queue(category)
    except Exception as error:
        print(f"Translation queue stopped: {error}")
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
