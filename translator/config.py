from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent

MODEL = "qwen3:8b"

CATEGORY = "GCP"

SOURCE_FILE = (
    BASE_DIR /
    "assets" /
    "questions" /
    CATEGORY /
    f"{CATEGORY.lower()}_en.json"
)

OUTPUT_FILES = {
    "hi": BASE_DIR / "assets" / "questions" / CATEGORY / f"{CATEGORY.lower()}_hi.json",
    "mr": BASE_DIR / "assets" / "questions" / CATEGORY / f"{CATEGORY.lower()}_mr.json",
}

TEMPERATURE = 0