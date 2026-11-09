#!/usr/bin/env python3
"""Deterministic verification of every question bank and translation.

Usage: python tools/verify_translations.py [--json tools/verify_report.json]

Checks (English source):  4+ unique options, answer in options, unique
questions (exact, normalized and near-duplicate) within and across categories.
Checks (each translation): schema/answer position, category/set, no duplicate
questions, expected script, not left untranslated, numbers/flags/inline code
preserved. Exit code 0 only when there are zero problems.
"""

from __future__ import annotations

import argparse
import difflib
import json
import re
import sys
import unicodedata
from collections import defaultdict
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from translate_docker_languages import LANGUAGES, QUESTIONS_DIR, validate_quiz  # noqa: E402

R = lambda *ranges: [(int(a, 16), int(b, 16)) for a, b in ranges]  # noqa: E731
DEVA, BENG = R(("0900", "097F")), R(("0980", "09FF"))
ARAB = R(("0600", "06FF"), ("0750", "077F"), ("FB50", "FDFF"), ("FE70", "FEFF"))
SCRIPTS = {
    "as": BENG, "bn": BENG, "doi": DEVA, "gu": R(("0A80", "0AFF")),
    "kn": R(("0C80", "0CFF")), "gom": DEVA + R(("0C80", "0CFF")),
    "mai": DEVA, "ml": R(("0D00", "0D7F")), "mni": R(("ABC0", "ABFF")) + BENG,
    "ne": DEVA, "or": R(("0B00", "0B7F")), "pa": R(("0A00", "0A7F")),
    "sa": DEVA, "sat": R(("1C50", "1C7F")), "sd": ARAB + DEVA,
    "ta": R(("0B80", "0BFF")), "te": R(("0C00", "0C7F")), "ur": ARAB,
    "ru": R(("0400", "04FF")), "ar": ARAB, "zh": R(("4E00", "9FFF")),
    "ja": R(("3040", "30FF"), ("4E00", "9FFF")), "ko": R(("AC00", "D7AF"), ("1100", "11FF")),
}
LATIN = {"es", "fr", "de", "pt", "id", "it", "tr"}
NEAR_DUP_SAME_ANSWER = 0.85


def in_ranges(ch: str, ranges) -> bool:
    cp = ord(ch)
    return any(a <= cp <= b for a, b in ranges)


def norm(text: str) -> str:
    text = unicodedata.normalize("NFKC", text).casefold()
    return re.sub(r"[\W_]+", " ", text).strip()


def digits(text: str) -> list[str]:
    out, cur = [], ""
    for ch in text:
        if unicodedata.category(ch) == "Nd":
            cur += str(unicodedata.digit(ch))
        elif cur:
            out.append(cur)
            cur = ""
    if cur:
        out.append(cur)
    return out


def technical_tokens(text: str) -> list[str]:
    toks = re.findall(r"`([^`]+)`", text) + re.findall(r"(?<![\w-])--?[A-Za-z][\w-]*", text)
    return [t for t in toks if t.strip()]


def generic_difference(a: str, b: str) -> bool:
    """True when two questions differ only by plain lowercase words (no product/tech names)."""
    ta, tb = re.findall(r"[^\s?.,:;]+", a), re.findall(r"[^\s?.,:;]+", b)
    diff = set(ta) ^ set(tb)
    generic = {"method", "function", "property", "keyword", "statement", "block", "loop", "cmdlet",
               "command", "file", "mode", "an", "a", "the", "remains", "is", "array", "list",
               "subroutine", "object", "value", "tests", "checks", "all", "only", "keeps",
               "dedicated", "private", "network"}
    return bool(diff) and diff <= generic and not ({"container", "pod", "remote", "commit"} & diff)


def check_english(files: dict[str, list]) -> dict[str, list[str]]:
    problems: dict[str, list[str]] = defaultdict(list)
    seen: dict[str, str] = {}
    for cat, data in files.items():
        key = f"{cat}/en"
        norms = []
        seen_cat: dict[str, int] = {}
        for i, q in enumerate(data):
            opts = q.get("options", [])
            if len(opts) < 2 or len({o.strip() for o in opts}) != len(opts):
                problems[key].append(f"[{i}] options missing or duplicated")
            if q.get("answer") not in opts:
                problems[key].append(f"[{i}] answer not in options")
            n = norm(q["question"])
            norms.append(n)
            gkey = n
            if n in seen_cat:
                problems[key].append(f"[{i}] duplicate of {cat}[{seen_cat[n]}]")
            elif gkey in seen:
                problems[key].append(f"[{i}] duplicate of {seen[gkey]}")
            else:
                seen_cat[n] = i
                seen[gkey] = f"{cat}[{i}]"
        # Later record of a pair is the one reported (and to be replaced).
        for j in range(len(norms)):
            for i in range(j):
                same_answer = norm(data[i]["answer"]) == norm(data[j]["answer"])
                same_opts = sorted(map(norm, data[i]["options"])) == sorted(map(norm, data[j]["options"]))
                ratio = difflib.SequenceMatcher(None, norms[i], norms[j]).ratio()
                if norms[i] != norms[j] and (
                    (same_answer and ratio >= NEAR_DUP_SAME_ANSWER) or (same_opts and ratio >= 0.7)
                ):
                    problems[key].append(f"[{j}] near-duplicate of [{i}]")
                    break
        sets = defaultdict(int)
        for q in data:
            sets[q.get("set")] += 1
        if len(set(sets.values())) > 1:
            problems[key].append(f"unequal set sizes {dict(sets)}")
    # Near-identical generic questions across categories (e.g. "Which loop repeats..." in two languages).
    items = [(cat, i, norm(q["question"])) for cat, data in files.items() for i, q in enumerate(data)]
    by_len: dict[int, list] = defaultdict(list)
    for cat, i, n in items:
        by_len[len(n)].append((cat, i, n))
    flagged = {(c, i) for key, v in problems.items() for c in [key.split("/")[0]]
               for i in [int(m) for p in v for m in re.findall(r"^\[(\d+)\]", p)]}
    for cat, i, n in items:
        if (cat, i) in flagged:
            continue
        sm = difflib.SequenceMatcher(None, "", n)
        for ln in range(len(n) - 10, len(n) + 11):
            hit = False
            for c2, i2, n2 in by_len.get(ln, []):
                if c2 >= cat:
                    continue
                sm.set_seq1(n2)
                if sm.real_quick_ratio() >= 0.85 and sm.quick_ratio() >= 0.85 and sm.ratio() >= 0.85 and \
                        generic_difference(files[cat][i]["question"], files[c2][i2]["question"]):
                    problems[f"{cat}/en"].append(f"[{i}] near-duplicate of {c2}[{i2}] (other category)")
                    hit = flagged.add((cat, i)) or True
                    break
            if hit:
                break
    return problems


def check_translation(src: list, tr: list, code: str) -> list[str]:
    try:
        validate_quiz(src, tr)
    except ValueError as exc:
        return [str(exc)]
    problems = []
    seen: dict[str, int] = {}
    script_hits = untranslated = 0
    for i, (s, t) in enumerate(zip(src, tr)):
        n = norm(t["question"])
        if n in seen:
            problems.append(f"[{i}] duplicate question of [{seen[n]}]")
        seen[n] = i
        if len({o.strip() for o in t["options"]}) != len(t["options"]):
            problems.append(f"[{i}] duplicate options")
        if code in SCRIPTS and any(in_ranges(c, SCRIPTS[code]) for c in t["question"]):
            script_hits += 1
        elif code in SCRIPTS:
            problems.append(f"[{i}] question has no {code} script characters")
        if t["question"].strip().casefold() == s["question"].strip().casefold():
            untranslated += 1
        if [d for d in digits(s["question"]) if d not in digits(t["question"])]:
            problems.append(f"[{i}] numbers differ: {digits(s['question'])} vs {digits(t['question'])}")
        blob = t["question"] + " " + " ".join(t["options"])
        for tok in technical_tokens(s["question"] + " " + " ".join(s["options"])):
            if tok not in blob:
                problems.append(f"[{i}] technical token {tok!r} missing")
                break
        for a, b in zip(s["options"], t["options"]):
            if [d for d in digits(a) if d not in digits(b)]:
                problems.append(f"[{i}] option numbers differ: {a!r} vs {b!r}")
                break
    if untranslated:
        problems.append(f"{untranslated} questions identical to English")
    return problems


def run() -> dict:
    sources, translations = {}, {}
    missing = []
    for en in sorted(QUESTIONS_DIR.glob("*/*_en.json")):
        cat, stem = en.parent.name, en.stem.removesuffix("_en")
        sources[cat] = json.loads(en.read_text(encoding="utf-8"))
        for name, code in LANGUAGES:
            f = en.with_name(f"{stem}_{code}.json")
            try:
                translations[(cat, code)] = json.loads(f.read_text(encoding="utf-8"))
            except (OSError, ValueError):
                missing.append(f"{cat}/{code}")
    problems = check_english(sources)
    results = {}
    for (cat, code), tr in translations.items():
        results[f"{cat}/{code}"] = check_translation(sources[cat], tr, code)
    # Duplicate questions across translated categories in the same language.
    for code in {c for _, c in translations}:
        seen: dict[str, str] = {}
        for cat in sources:
            for i, q in enumerate(translations.get((cat, code), [])):
                n = norm(q["question"])
                if n in seen and seen[n].split("[")[0] != cat:
                    results[f"{cat}/{code}"].append(f"[{i}] same question as {seen[n]}")
                seen.setdefault(n, f"{cat}[{i}]")
    return {"english": dict(problems), "files": results, "missing": missing}


def main() -> int:
    for s in (sys.stdout, sys.stderr):
        s.reconfigure(encoding="utf-8", errors="replace")
    ap = argparse.ArgumentParser()
    ap.add_argument("--json", default=str(Path(__file__).with_name("verify_report.json")))
    args = ap.parse_args()
    report = run()
    bad = {k: v for k, v in report["files"].items() if v}
    total = len(report["files"])
    report["summary"] = {
        "files_checked": total, "files_with_problems": len(bad),
        "english_problems": sum(map(len, report["english"].values())),
        "missing_files": len(report["missing"]),
    }
    Path(args.json).write_text(json.dumps(report, ensure_ascii=False, indent=1), encoding="utf-8")
    print(json.dumps(report["summary"]))
    for k, v in list(report["english"].items())[:30]:
        print("EN", k, v[:3])
    for k, v in list(bad.items())[:30]:
        print(k, len(v), v[:2])
    ok = not bad and not report["english"] and not report["missing"]
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
