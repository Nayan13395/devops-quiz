"""Audit all selectable app locales without modifying translations.

Run from the repository root. Reuses the offline ATF data checks and executes
runtime probes plus existing localization tests. Reports gaps, not just passes.
"""

import argparse
from collections import Counter
from datetime import datetime, timezone
import html
import json
from pathlib import Path
import re
import sys
import time

from run_offline_atf import ROOT, SCRIPTS, audit_data, flutter_tests, numeric_tokens_preserved
from align_question_translations import literal

sys.path.insert(0, str(ROOT / "translator" / "learning"))
from build_catalogs import source_cards, TOPICS  # noqa: E402

OUTPUT = ROOT / "build" / "translation_audit"
STATE = ROOT / "tools" / "translation_audit_state.json"
SELECTORS = [
    "test/app_translation_audit_test.dart",
    "test/atf_localization_test.dart",
    "test/indian_localization_test.dart",
    "test/atf_navigation_test.dart",
    "test/saved_data_test.dart",
    "test/app_tour_test.dart",
    "test/unlock_notifications_test.dart",
    "test/game_sound_service_test.dart",
    "test/question_layout_test.dart",
    "test/question_set_cycle_test.dart",
    "test/welcome_greeting_test.dart",
]


def now():
    return datetime.now(timezone.utc).isoformat()


def read(path):
    def unique(pairs):
        result = {}
        for key, value in pairs:
            if key in result:
                raise ValueError(f"Duplicate JSON key: {path}/{key}")
            result[key] = value
        return result
    return json.loads(path.read_text(encoding="utf-8-sig"), object_pairs_hook=unique)


def write(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_suffix(path.suffix + ".tmp")
    temporary.write_text(json.dumps(value, ensure_ascii=False, indent=2), encoding="utf-8")
    temporary.replace(path)


def checkpoint(state, phase, task=None, done=False):
    state["phase"] = phase
    state["updated_at"] = now()
    if task is not None:
        state["tasks"][task]["status"] = "done" if done else "in_progress"
    state["events"].append(f"{state['updated_at']}: {phase}")
    write(STATE, state)
    print(phase, flush=True)


def english_prose(text):
    words = re.findall(r"[A-Za-z]+", text.lower())
    return (len(words) >= 3 and
            bool(set(words) & {"a", "an", "the", "of", "to", "from", "with", "for", "only", "all", "is", "are"}) and
            not literal(text, set()) and
            not re.search(r"[{}\[\]();`]|--?[A-Za-z]|\b(?:range|print)\(", text) and
            not any(token in text for token in ["=>", "://", "SELECT ", "Allow group ", "Allow Developers "]))


def ui_audit(code):
    def arb(locale):
        duplicates = []
        def collect(pairs):
            values = {}
            for key, value in pairs:
                if key in values:
                    duplicates.append({
                        "key": key, "first_value": values[key],
                        "last_value": value, "conflicting": values[key] != value,
                    })
                values[key] = value
            return values
        path = ROOT / "lib" / "l10n" / f"app_{locale}.arb"
        data = json.loads(path.read_text(encoding="utf-8-sig"), object_pairs_hook=collect)
        return data, duplicates
    english, _ = arb("en")
    translated, duplicates = arb(code)
    keys = [key for key in english if not key.startswith("@")]
    errors = [f"Duplicate JSON key: {item['key']}" for item in duplicates]
    same = []
    script_suspects = []
    for key in keys:
        value = translated.get(key)
        if not isinstance(value, str) or not value.strip():
            errors.append(f"{key}: missing or empty")
            continue
        if Counter(re.findall(r"\{(\w+)\}", value)) != Counter(re.findall(r"\{(\w+)\}", english[key])):
            errors.append(f"{key}: placeholder mismatch")
        if "\ufffd" in value:
            errors.append(f"{key}: Unicode replacement character")
        if code != "en" and value == english[key] and english_prose(value):
            same.append({"key": key, "text": value})
        ranges = SCRIPTS.get(code)
        prose = re.sub(r"\{[^}]+\}", "", value)
        if ranges and english_prose(english[key]) and not any(
                lo <= ord(char) <= hi for char in prose for lo, hi in ranges):
            script_suspects.append({"key": key, "text": value})
    if translated.get("@@locale") != code:
        errors.append("Locale metadata mismatch")
    return {
        "message_count": len(keys), "errors": errors,
        "duplicate_keys": duplicates,
        "unchanged_english_prose_candidates": same,
        "native_script_review_candidates": script_suspects,
        "extra_keys": sorted(set(translated) - set(english)),
        "meaning_review": "Not certified by key/placeholder checks",
    }


def question_details(code, catalog):
    unchanged_options = []
    option_token_warnings = []
    record_count = 0
    confirmed = []
    reviewed_prose = {
        "A reusable collection of tasks and files",
        "Repository for Ansible roles and collections",
        "One or more data centers inside a Region",
        "A logical container for related resources",
        "A global private network for resources",
    }
    for folder in catalog["categories"]:
        for number in range(1, 6):
            path = ROOT / "assets" / "questions" / folder / code / f"set{number}" / "questions.json"
            source = read(path.parent.parent.parent / "en" / f"set{number}" / "questions.json")
            translated = read(path)
            record_count += len(translated)
            if code == "en":
                continue
            for index, (left, right) in enumerate(zip(source, translated)):
                for position, (a, b) in enumerate(zip(left["options"], right["options"])):
                    where = {"category": folder, "set": number, "question": index + 1,
                             "option": position + 1, "english": a, "translated": b}
                    if a == b and english_prose(a):
                        unchanged_options.append(where)
                        if a in reviewed_prose:
                            confirmed.append({
                                **where, "file": str(path.relative_to(ROOT)).replace("\\", "/"),
                                "line": path.read_text(encoding="utf-8").count(
                                    "\n", 0, path.read_text(encoding="utf-8").index(json.dumps(a))
                                ) + 1,
                            })
                    tokens = re.findall(r"`([^`]+)`|(?<!\w)(--[A-Za-z][A-Za-z0-9_-]*)", a)
                    missing = [first or second for first, second in tokens if (first or second) not in b]
                    if missing or not numeric_tokens_preserved(a, b):
                        option_token_warnings.append({**where, "missing_tokens": missing})
    return {
        "records": record_count,
        "unchanged_english_option_candidates": unchanged_options,
        "option_token_review_candidates": option_token_warnings,
        "confirmed_untranslated_prose_samples": confirmed,
        "note": "Unchanged technical names/options are valid. Candidate prose requires context review.",
    }


def learning_audit(code, cards, catalog):
    data = read(ROOT / "assets" / "learning" / f"cards_{code}.json")
    effective = dict(data)
    overlays = 0
    banks = {}
    errors = []
    for card in cards:
        if card["isConcept"] and "sourceQuestion" in card:
            topic = card["topic"]
            if topic not in banks:
                banks[topic] = [
                    question for number in range(1, 6)
                    for question in read(ROOT / "assets" / "questions" / TOPICS[topic] /
                                         code / f"set{number}" / "questions.json")
                ]
            index = card["sourceQuestion"]
            if index >= len(banks[topic]):
                errors.append(f"{card['id']}: question reference out of range")
                continue
            question = banks[topic][index]
            effective[card["id"]] = {
                "command": question["question"], "description": question["answer"],
            }
            overlays += 1
    ids = {card["id"] for card in cards}
    for card in cards:
        item = effective.get(card["id"])
        if item is None:
            continue
        if set(item) != {"command", "description"} or not all(
                isinstance(value, str) and value.strip() for value in item.values()):
            errors.append(f"{card['id']}: invalid card fields")
        if not card["isConcept"] and item["command"] != card["command"]:
            errors.append(f"{card['id']}: technical command changed")
    unknown = sorted(set(data) - ids)
    return {
        "total": len(cards), "raw_entries": len(data),
        "effective_entries": len(set(effective) & ids),
        "concept_overlays": overlays,
        "missing_ids": sorted(ids - set(effective)),
        "missing_command_cards": sum(not card["isConcept"] and card["id"] not in effective for card in cards),
        "errors": errors, "unknown_ids": unknown,
        "meaning_review": "Question-derived cards inherit question translation defects; availability is not accuracy.",
    }


def source_inventory():
    # These are direct user-facing literal candidates, not an AST proof that
    # every string is English. Indirect variables and helper calls need review.
    literal = r"""(?:r)?(?:"(?:\\.|[^"\\])*"|'(?:\\.|[^'\\])*')"""
    surface = re.compile(
        r"\b(?P<surface>Text\s*\(|SelectableText\s*\(|"
        r"tooltip\s*:|hintText\s*:|labelText\s*:|semanticLabel\s*:|"
        r"title\s*:|message\s*:|body\s*:|actionText\s*:)\s*(?P<value>" + literal + ")",
        re.S,
    )
    files = []
    literals = []
    for directory in ["screens", "widgets", "services", "models", "data"]:
        for path in sorted((ROOT / "lib" / directory).rglob("*.dart")):
            text = path.read_text(encoding="utf-8")
            candidates = []
            for match in surface.finditer(text):
                value = match["value"]
                if not re.search(r"[A-Za-z]{2}", value) or len(value) > 1600:
                    continue
                entry = {
                    "file": str(path.relative_to(ROOT)).replace("\\", "/"),
                    "line": text.count("\n", 0, match.start()) + 1,
                    "surface": match["surface"], "literal": value,
                }
                candidates.append(entry)
            files.append({
                "file": str(path.relative_to(ROOT)).replace("\\", "/"),
                "direct_literal_candidates": len(candidates),
                "uses_generated_l10n": "AppLocalizations" in text,
                "uses_locale": bool(re.search(r"localeOf|LanguageProvider|languageCode", text)),
                "scope": directory,
            })
            literals.extend(candidates)
    return {
        "files": files, "direct_literal_candidates": literals,
        "limitations": "Heuristic inventory, not a count of confirmed defects. Product names and code can be intentional. Indirect strings are undercounted.",
    }


def evidence(path, needle):
    text = (ROOT / path).read_text(encoding="utf-8")
    offset = text.index(needle)
    return {"file": path, "line": text.count("\n", 0, offset) + 1,
            "excerpt": needle}


def verified_findings():
    return [
        {
            "id": "NOTIFICATIONS", "severity": "high", "languages": "All 31 non-English UI languages",
            "summary": "Scheduled notification text, in-app notifications and their screen controls are constructed in English without a locale parameter.",
            "evidence": [
                evidence("lib/services/notification_service.dart", 'title: "🚀 Ready for Today'),
                evidence("lib/services/in_app_notification_service.dart", "title: 'Daily Reward Available!'"),
                evidence("lib/screens/notification_screen.dart", "'Stay Updated'"),
            ],
        },
        {
            "id": "LEARNING-CONTROLS", "severity": "high", "languages": "29 languages other than English, Hindi and Marathi",
            "summary": "Learning-screen search, filter and navigation copy has only English/Hindi/Marathi variants; other locales receive English.",
            "evidence": [
                evidence("lib/screens/learning_screen.dart", "_ => english"),
                evidence("lib/screens/learning_screen.dart", "'Search cards'"),
            ],
        },
        {
            "id": "ACCOUNT-AND-WELCOME", "severity": "medium", "languages": "All 31 non-English UI languages",
            "summary": "The welcome headline and Settings title are localized, but account actions, guest labels, confirmations and errors remain English.",
            "evidence": [
                evidence("lib/screens/settings_screen.dart", "label: const Text('Connect Google Account')"),
                evidence("lib/screens/settings_screen.dart", "title: 'Sign Out?'"),
                evidence("lib/screens/welcome_screen.dart", "child: Text(\n                            'Continue with Google'"),
            ],
        },
        {
            "id": "SHARED-DIALOGS", "severity": "medium", "languages": "All 31 non-English UI languages",
            "summary": "Shared level picker and daily reward dialogs still contain English labels and messages.",
            "evidence": [
                evidence("lib/widgets/level_picker_dialog.dart", "title: const Text('Choose level')"),
                evidence("lib/widgets/daily_login_bonus_dialog.dart", "'Daily Login Bonus'"),
            ],
        },
        {
            "id": "ACHIEVEMENTS-AND-THEMES", "severity": "medium", "languages": "All 31 non-English UI languages",
            "summary": "Unlock popup headings are localized, but achievement names/descriptions and theme names remain English.",
            "evidence": [
                evidence("lib/services/achievement_service.dart", 'description: "Complete your first quiz."'),
                evidence("lib/widgets/unlock_notifications.dart", "achievement?.title ?? theme!.name"),
                evidence("lib/widgets/unlock_notifications.dart", "Text(achievement.description"),
            ],
        },
        {
            "id": "GAME-HINT-CONTENT", "severity": "high", "languages": "All 31 non-English UI languages",
            "summary": "Word Guess hints and Command Match descriptions are English-only; preserved technical command names do not justify untranslated prose.",
            "evidence": [
                evidence("lib/services/word_guess_level_service.dart", "hint: 'Tracks changes in source code.'"),
                evidence("lib/screens/command_match_screen.dart", "_Pair('ls -la', 'List all files with details')"),
            ],
        },
        {
            "id": "EXPORTS-AND-CERTIFICATES", "severity": "medium", "languages": "All 31 non-English UI languages",
            "summary": "Certificate wording and PDF report labels are English-only. Exported non-Latin font rendering is not certified by this audit.",
            "evidence": [
                evidence("lib/widgets/certificate_view.dart", "'COURSE COMPLETION CERTIFICATE'"),
                evidence("lib/services/quiz_pdf_service.dart", "pw.Text('Quiz Report'"),
            ],
        },
        {
            "id": "SECONDARY-NAVIGATION", "severity": "medium", "languages": "All 31 non-English UI languages",
            "summary": "Localized drawer entries open some English-titled screens, including Cloud Computing, Scripting and Challenge Mode.",
            "evidence": [
                evidence("lib/screens/cloud_screen.dart", 'title: const Text("Cloud Computing")'),
                evidence("lib/screens/scripting_screen.dart", 'title: const Text("Scripting")'),
                evidence("lib/screens/challenge_screen.dart", 'title: const Text("🏆 Challenge Mode")'),
            ],
        },
        {
            "id": "FRAMEWORK-FALLBACK", "severity": "medium",
            "languages": "Unsupported Material/Cupertino locales; exact runtime list is recorded per language",
            "summary": "Flutter built-in controls fall back to English or Urdu for locales not provided by Flutter, even though the app language is selectable.",
            "evidence": [evidence("lib/app_localization_delegates.dart", "? 'ur' : 'en'")],
        },
    ]


def make_report(report):
    esc = lambda value: html.escape(str(value))
    rows = []
    for code, language in report["languages"].items():
        rows.append("<tr>" + "".join(f"<td>{esc(value)}</td>" for value in [
            f"{language['name']} ({code})", language["ui_status"],
            language["question_status"], language["learning_status"],
            language["runtime_status"], language["verdict"],
        ]) + "</tr>")
    findings = []
    for finding in report["findings"]:
        references = "".join(
            f"<li>{esc(e['file'])}:{e['line']}<pre>{esc(e['excerpt'])}</pre></li>"
            for e in finding.get("evidence", [])
        )
        findings.append(
            f"<section><h3>{esc(finding['id'])}: {esc(finding['summary'])}</h3>"
            f"<p>{esc(finding['severity'])} | {esc(finding['languages'])}</p><ul>{references}</ul></section>"
        )
    details = []
    for code, data in report["details"].items():
        failures = [case for case in data["question_cases"] if case["status"] != "passed"]
        details.append(
            f"<details><summary>{esc(report['languages'][code]['name'])} ({esc(code)}) — evidence</summary>"
            f"<h4>UI bundle</h4><pre>{esc(json.dumps(data['ui'], ensure_ascii=False, indent=2))}</pre>"
            f"<h4>Question-bank failures</h4><pre>{esc(json.dumps(failures, ensure_ascii=False, indent=2))}</pre>"
            f"<h4>Confirmed untranslated option samples</h4><pre>{esc(json.dumps(data['questions']['confirmed_untranslated_prose_samples'], ensure_ascii=False, indent=2))}</pre>"
            f"<h4>Learning coverage</h4><pre>{esc(json.dumps(data['learning'], ensure_ascii=False, indent=2))}</pre>"
            f"<h4>Runtime probes</h4><pre>{esc(json.dumps(data.get('runtime', {}), ensure_ascii=False, indent=2))}</pre>"
            f"<p>Unchanged English option candidates: {len(data['questions']['unchanged_english_option_candidates'])}; "
            f"option-token review candidates: {len(data['questions']['option_token_review_candidates'])}. "
            "Full candidate lists are in report.json; these are not automatic semantic verdicts.</p></details>"
        )
    source_rows = "".join(
        f"<tr><td>{esc(entry['file'])}</td><td>{entry['direct_literal_candidates']}</td>"
        f"<td>{esc(entry['uses_generated_l10n'])}</td></tr>"
        for entry in report["source_inventory"]["files"] if entry["scope"] == "screens"
    )
    tests = report.get("tests", [])
    failures = [test for test in tests if test["status"] == "failed"]
    return f"""<!doctype html><html lang=en><meta charset=utf-8>
<meta name=viewport content="width=device-width, initial-scale=1">
<title>Whole-app 32-language translation audit</title>
<style>body{{font:15px Segoe UI,sans-serif;margin:24px;color:#17233b}}main{{max-width:1450px;margin:auto}}
table{{border-collapse:collapse;width:100%}}td,th{{border:1px solid #ccd5e5;padding:8px;vertical-align:top;text-align:left}}
th{{background:#e8eefb}}pre{{white-space:pre-wrap;overflow-wrap:anywhere;background:#f5f7fb;padding:12px}}
details,section{{border:1px solid #ddd;padding:12px;margin:12px 0}}summary{{cursor:pointer;font-weight:bold}}
.warning{{background:#fff1cf;padding:14px}}.table{{overflow:auto}}</style><main>
<h1>Whole-app translation audit: 32 selectable languages</h1>
<p>{esc(report['updated_at'])} | <b>{esc(report['status'])}</b></p>
<p class=warning>This is a structural, source and runtime audit, not a native-speaker certification.
Passing tests do not mean every string is translated. Real-device font rendering, online flows and
semantic review of every question were not certified. No translation content was changed.</p>
<p><a href="/">Live tracker</a> | Automated tests: {sum(t['status']=='passed' for t in tests)} passed,
{len(failures)} failed, {sum(t['status']=='skipped' for t in tests)} skipped.</p>
<h2>Per-language results</h2><div class=table><table><tr><th>Language</th><th>UI bundles</th>
<th>Question integrity</th><th>Effective learning</th><th>Runtime</th><th>Verdict</th></tr>
{''.join(rows)}</table></div>
<h2>Confirmed findings</h2>{''.join(findings)}
<h2>Coverage and limits</h2><pre>{esc(json.dumps(report['coverage'], ensure_ascii=False, indent=2))}</pre>
<h2>Every screen: direct-literal inventory</h2>
<p>{esc(report['source_inventory']['limitations'])}</p>
<table><tr><th>Screen</th><th>Direct UI literal candidates</th><th>Generated localization referenced</th></tr>{source_rows}</table>
<h2>Per-language evidence</h2>{''.join(details)}
<h2>Test failures</h2><pre>{esc(json.dumps(failures, ensure_ascii=False, indent=2))}</pre>
</main></html>"""


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--timeout-seconds", type=int, default=1200)
    parser.add_argument("--data-only", action="store_true")
    args = parser.parse_args()
    OUTPUT.mkdir(parents=True, exist_ok=True)
    state = read(STATE)
    state["status"] = "in_progress"
    state["findings"] = []
    checkpoint(state, "Checking all selectable language bundles", 0)
    provider = (ROOT / "lib" / "language_provider.dart").read_text(encoding="utf-8")
    codes = re.findall(r"AppLanguage\('([^']+)'", provider)
    assert len(codes) == 32 and set(codes) == set(state["languages"]), "Selectable-language inventory changed"
    for runtime in (OUTPUT / "runtime").glob("*.json"):
        if runtime.stem in codes:
            runtime.unlink()
    details = {code: {"ui": ui_audit(code)} for code in codes}
    for code, language in state["languages"].items():
        ui = details[code]["ui"]
        language["ui_status"] = (
            f"{ui['message_count']} messages; {len(ui['errors'])} structural errors; "
            f"{len(ui['unchanged_english_prose_candidates'])} English-prose candidates"
        )
        language["runtime_status"] = "pending"
        language["verdict"] = "in progress"
    checkpoint(state, "UI bundle structure checked; this does not cover hardcoded screens", 0, True)

    checkpoint(state, "Auditing every category/language/set question file", 1)
    cases, fingerprints = audit_data()
    write(OUTPUT / "question_checks.json", {"cases": cases, "fingerprints": fingerprints})
    catalog = read(ROOT / "assets" / "questions" / "catalog.json")
    for code, language in state["languages"].items():
        selected = [case for case in cases if case["id"].endswith("/" + code)]
        details[code]["question_cases"] = selected
        details[code]["questions"] = question_details(code, catalog)
        failed = sum(case["status"] == "failed" for case in selected)
        language["question_status"] = (
            f"{len(selected)-failed}/{len(selected)} banks pass integrity checks; "
            f"{details[code]['questions']['records']} records"
        )
        confirmed_count = len(details[code]["questions"]["confirmed_untranslated_prose_samples"])
        if confirmed_count:
            language["question_status"] += f"; {confirmed_count} confirmed English-prose samples"
    checkpoint(state, "Question counts, answer positions, scripts and source fingerprints checked", 1, True)

    checkpoint(state, "Checking effective learning-card coverage, including live question overlays", 2)
    cards = source_cards()
    for code, language in state["languages"].items():
        learning = learning_audit(code, cards, catalog)
        details[code]["learning"] = learning
        language["learning_status"] = (
            f"{learning['effective_entries']}/{learning['total']} available; "
            f"{len(learning['missing_ids'])} missing"
        )
    checkpoint(state, "Learning-card availability checked for every language", 2, True)

    checkpoint(state, "Inventorying English-only UI and runtime localization paths", 3)
    inventory = source_inventory()
    findings = verified_findings()
    sampled = [
        (code, entry) for code in codes
        for entry in details[code]["questions"]["confirmed_untranslated_prose_samples"]
    ]
    if sampled:
        findings.append({
            "id": "QUESTION-ENGLISH-PROSE", "severity": "high",
            "languages": ", ".join(sorted({code for code, _ in sampled})),
            "summary": "Reviewed samples contain unchanged English answer prose inside non-English questions, including Hindi/Marathi banks that pass structural alignment checks.",
            "evidence": [
                {"file": entry["file"], "line": entry["line"],
                 "excerpt": f"Set {entry['set']}, question {entry['question']}, option {entry['option']}: {entry['english']}"}
                for code, entry in sampled[:8]
            ],
        })
    duplicate_languages = [code for code in codes if details[code]["ui"]["duplicate_keys"]]
    if duplicate_languages:
        findings.append({
            "id": "ARB-DUPLICATES", "severity": "medium",
            "languages": ", ".join(duplicate_languages),
            "summary": "Some UI bundles contain duplicate JSON keys; last-value-wins loading hides earlier text, including conflicting English values.",
            "evidence": [evidence("lib/l10n/app_en.arb", '"outstanding"')],
        })
    failed_languages = [
        code for code in codes if any(case["status"] == "failed" for case in details[code]["question_cases"])
    ]
    missing_card_languages = [code for code in codes if details[code]["learning"]["missing_ids"]]
    findings[:0] = [
        {
            "id": "QUESTION-TRANSLATIONS", "severity": "high",
            "languages": ", ".join(failed_languages),
            "summary": "Question-bank integrity/source-alignment checks fail in these languages; per-record errors are listed below.",
            "evidence": [evidence("assets/questions/catalog.json", '"pending_translation_records"')],
        },
        {
            "id": "LEARNING-CONTENT", "severity": "high",
            "languages": ", ".join(missing_card_languages),
            "summary": "Independent learning-command cards are missing translations despite question-derived overlays; per-language missing IDs are listed below.",
            "evidence": [evidence("lib/screens/learning_screen.dart", "_translations!.containsKey(card.id)")],
        },
    ]
    state["findings"] = [finding["summary"] for finding in findings]
    checkpoint(state, "Confirmed English-only game, notification, account and learning-control surfaces", 3, True)

    report = {
        "status": "IN PROGRESS", "updated_at": now(),
        "languages": state["languages"], "details": details,
        "findings": findings, "source_inventory": inventory, "tests": [],
        "coverage": {
            "selectable_languages": codes, "extra_question_locale_not_selectable": ["ko"],
            "question_files_checked": len(fingerprints),
            "selectable_question_records": sum(data["questions"]["records"] for data in details.values()),
            "all_screen_files_inventoried": sum(entry["scope"] == "screens" for entry in inventory["files"]),
            "source_files_inventoried": len(inventory["files"]),
            "direct_literal_candidates": len(inventory["direct_literal_candidates"]),
            "linguistic_sampling": {
                "reviewed_scope": "Five distinct English prose answers checked in every target bank",
                "confirmed_untranslated_occurrences": len(sampled),
                "not_a_complete_semantic_review": True,
            },
            "limitations": [
                "Native speakers have not reviewed every translated field.",
                "Heuristic English/code/script candidates are not all confirmed semantic defects.",
                "Runtime probes cover selected real screens and data loaders, not every possible action.",
                "OS notification delivery, real sign-in/cloud behavior and device font coverage are manual checks.",
                "Known untranslated controls make non-English whole-app localization incomplete even when ARB files pass.",
            ],
        },
    }
    write(OUTPUT / "report.json", report)
    (OUTPUT / "report.html").write_text(make_report(report), encoding="utf-8")
    write(OUTPUT / "source_inventory.json", inventory)

    checkpoint(state, "Running per-language runtime probes and existing localization regressions", 4)
    started = time.monotonic()
    tests = [] if args.data_only else flutter_tests(OUTPUT, args.timeout_seconds, SELECTORS)
    for code, language in state["languages"].items():
        runtime = OUTPUT / "runtime" / f"{code}.json"
        if runtime.exists():
            probe = read(runtime)
            details[code]["runtime"] = probe
            language["runtime_status"] = (
                f"{probe['probe_status']}; {len(probe['untranslated_surfaces'])} untranslated surfaces observed"
            )
            predicted = details[code]["learning"]
            actual = probe.get("learning", {})
            if actual and (
                    actual["effective_entries"] != predicted["effective_entries"] or
                    set(actual["missing_ids"]) != set(predicted["missing_ids"])):
                raise ValueError(f"Learning prediction/runtime disagreement: {code}")
        else:
            language["runtime_status"] = "NOT RUN" if args.data_only else "NO RESULT - inspect test failures"
        language["verdict"] = (
            "English baseline; duplicate UI keys need cleanup" if code == "en"
            else "PARTIAL - whole app is not fully translated"
        )
    checkpoint(state, "Runtime execution finished; passing harness tests are not full translation passes", 4, not args.data_only)
    report.update(
        status="AUDIT COMPLETE - LOCALIZATION INCOMPLETE" if not args.data_only else "DATA/SOURCE ONLY - RUNTIME NOT RUN",
        updated_at=now(), languages=state["languages"], details=details, tests=tests,
        runtime_duration_seconds=round(time.monotonic() - started, 1),
    )
    report["coverage"]["framework_fallback_languages"] = [
        code for code, data in details.items()
        if data.get("runtime", {}).get("framework_controls", {}).get("fallback_language")
    ]
    report["coverage"]["runtime_languages_completed"] = [
        code for code, data in details.items()
        if data.get("runtime", {}).get("probe_status") == "completed"
    ]
    write(OUTPUT / "report.json", report)
    (OUTPUT / "report.html").write_text(make_report(report), encoding="utf-8")
    state["status"] = "completed_with_findings" if not args.data_only else "partial_audit"
    state["findings"].append(
        f"Automated harness: {sum(test['status']=='passed' for test in tests)} passed, "
        f"{sum(test['status']=='failed' for test in tests)} failed. "
        "These counts do not measure translation completeness."
    )
    checkpoint(state, "Published evidence for all 32 languages; translation remediation remains separate", 5, True)
    print(json.dumps({
        "question_failure_languages": failed_languages,
        "missing_learning_languages": missing_card_languages,
        "test_passed": sum(test["status"] == "passed" for test in tests),
        "test_failed": sum(test["status"] == "failed" for test in tests),
        "report": str(OUTPUT / "report.html"),
    }))
    return 1 if findings else 0


if __name__ == "__main__":
    raise SystemExit(main())
