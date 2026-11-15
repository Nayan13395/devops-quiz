"""Scoped, resumable game-interface localization maintenance."""

import argparse
from collections import Counter
from concurrent.futures import ThreadPoolExecutor
from datetime import datetime
import hashlib
import json
from pathlib import Path
import re
import shutil
import sys
import threading

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "translator" / "learning"))
import translate_cards as translation
import build_catalogs as cards

WORK = ROOT / "translator" / "cache" / "game_ui"
PROGRESS = WORK
SCREENS = [
    "games", "spin_wheel", "scratch_card", "lucky_slot", "mystery_deal",
    "memory_match", "word_guess_levels", "find_words", "spot_the_difference",
    "jigsaw_puzzle", "higher_lower", "true_false_blitz", "command_match",
    "port_master", "tic_tac_toe", "connect_four", "ludo_game", "chess",
    "snake_ladders", "reward_question",
]
FILES = [ROOT / "lib" / "screens" / f"{name}_screen.dart" for name in SCREENS]
FILES += [ROOT / "lib" / "widgets" / f"{name}.dart" for name in ("daily_game_gate", "ludo_board_view")]
LOCK = threading.Lock()


def quoted(text, start):
    raw = text[start] == "r"
    pos = start + int(raw)
    quote = text[pos]
    delimiter = quote * (3 if text[pos:pos + 3] == quote * 3 else 1)
    pos += len(delimiter)
    parts = []
    literal = ""
    while pos < len(text):
        if text.startswith(delimiter, pos):
            parts.append(("text", literal))
            return pos + len(delimiter), parts
        char = text[pos]
        if char == "\\" and not raw:
            pos += 1
            escaped = text[pos]
            literal += {"n": "\n", "r": "\r", "t": "\t"}.get(escaped, escaped)
            pos += 1
        elif char == "$" and not raw:
            parts.append(("text", literal))
            literal = ""
            if text[pos + 1] == "{":
                begin = pos + 2
                pos = begin
                depth = 1
                while depth:
                    if text[pos] in "'\"":
                        pos, _ = quoted(text, pos)
                        continue
                    depth += (text[pos] == "{") - (text[pos] == "}")
                    pos += 1
                parts.append(("expression", text[begin:pos - 1]))
            else:
                match = re.match(r"\w+", text[pos + 1:])
                if not match:
                    raise ValueError(f"Invalid interpolation at {start}")
                parts.append(("expression", match.group()))
                pos += 1 + len(match.group())
        else:
            literal += char
            pos += 1
    raise ValueError(f"Unclosed string at {start}")


def strings(text):
    tokens = []
    pos = 0
    while pos < len(text):
        if text.startswith("//", pos):
            end = text.find("\n", pos)
            pos = len(text) if end < 0 else end
        elif text.startswith("/*", pos):
            pos = text.index("*/", pos + 2) + 2
        elif text[pos] in "'\"" or (text[pos] == "r" and text[pos + 1:pos + 2] in ("'", '"')):
            end, parts = quoted(text, pos)
            if tokens and text[tokens[-1][1]:pos].isspace():
                start, _, previous = tokens.pop()
                tokens.append((start, end, previous + parts))
            else:
                tokens.append((pos, end, parts))
            pos = end
        else:
            pos += 1
    return tokens


def message(parts):
    expressions = []
    value = ""
    for kind, part in parts:
        if kind == "text":
            value += part
        else:
            expressions.append(part)
            value += "{value" + str(len(expressions)) + "}"
    return value, expressions


def candidates(path, text):
    for start, end, parts in strings(text):
        value, expressions = message(parts)
        prose = re.sub(r"\{value\d+\}", "", value)
        if not re.search(r"[A-Za-z]{2}", prose):
            continue
        prefix = text[max(0, start - 100):start]
        if re.search(r"(?:import|export|part)\s+$|(?:ValueKey|debugPrint|Exception|FormatException)\s*\($", prefix):
            continue
        if value.startswith(("assets/", "package:", "dart:")) or re.fullmatch(r"[a-z][A-Za-z0-9_]*", value):
            continue
        if "_" in prose or re.match(r"^\w[\w-]*-\w", prose) and " " not in prose:
            if value != "Tic-Tac-Toe":
                continue
        if path.name == "command_match_screen.dart" and start < text.index("class CommandMatchScreen"):
            continue
        if value in ("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "CPU", "RewardGame", "diceRoller result"):
            continue
        if re.search(r"gameName:\s*$|==\s*$", prefix):
            continue
        if path.name == "ludo_game_screen.dart" and start < text.index("Future<void> _showMatchStats"):
            continue
        yield start, end, value, expressions


def inventory():
    result = []
    for path in FILES:
        text = path.read_text(encoding="utf-8")
        for start, end, value, expressions in candidates(path, text):
            result.append({
                "file": str(path.relative_to(ROOT)), "line": text.count("\n", 0, start) + 1,
                "source": text[start:end], "value": value, "expressions": expressions,
            })
    translation.write_json(WORK / "inventory.json", result)
    for index, item in enumerate(result):
        print(f"{index}: {Path(item['file']).stem}:{item['line']} {json.dumps(item['value'], ensure_ascii=False)}")


def const_edits(text, replacements):
    masked = list(text)
    for start, end, _ in strings(text):
        masked[start:end] = " " * (end - start)
    masked = re.sub(r"//[^\n]*|/\*.*?\*/", lambda match: " " * len(match[0]), "".join(masked), flags=re.S)
    stack = []
    ends = {}
    for index, char in enumerate(masked):
        if char in "([":
            stack.append(index)
        elif char in ")]" and stack:
            ends[stack.pop()] = index + 1
    changes = []
    for match in re.finditer(r"\bconst\s+(?:<[^;]+?>\s*)?(?:[\w.]+(?:<[^;]+?>)?\s*)?[\[(]", masked):
        end = ends.get(match.end() - 1)
        if end is not None and any(match.end() <= start < end for start, _, _ in replacements):
            changes.append((match.start(), match.start() + 6, ""))
            for child in re.finditer(r"\b[A-Z]\w*(?:\.\w+)?(?:<[^;]+?>)?\s*\(", masked[match.end():end]):
                start = match.end() + child.start()
                opening = match.end() + child.end() - 1
                stop = ends.get(opening)
                if (stop and not any(start <= position < stop for position, _, _ in replacements)
                        and not re.search(r"\bconst\s*$", masked[max(0, start - 10):start])):
                    changes.append((start, start, "const "))
    return list(set(changes))


def prepare():
    if (WORK / "plan.json").exists():
        raise ValueError("Game UI plan already exists; do not overwrite the source snapshot")
    english = cards.read_json(ROOT / "lib" / "l10n" / "app_en.arb")
    existing = {value: key for key, value in reversed(list(english.items()))
                if isinstance(value, str) and not key.startswith("@") and "{" not in value}
    messages = {}
    keys = {}

    def register(value):
        if value in keys:
            return keys[value]
        key = existing.get(value)
        if key is None:
            words = re.findall(r"[A-Za-z0-9]+", re.sub(r"\{value\d+\}", "", value))[:9]
            key = "gameUi" + "".join(word[0].upper() + word[1:] for word in words)
            if key in english or key in messages:
                key += hashlib.sha256(value.encode()).hexdigest()[:7]
            messages[key] = value
        keys[value] = key
        return key

    def rewrite(path, text, nested=False):
        replacements = []
        choices = candidates(path, text) if not nested else (
            (start, end, *message(parts)) for start, end, parts in strings(text)
            if re.search(r"[A-Za-z]{2}", "".join(value for kind, value in parts if kind == "text"))
        )
        for start, end, value, expressions in choices:
            key = register(value)
            call = f"gameL10n(context).{key}"
            if expressions:
                arguments = [f"({rewrite(path, expression, True)}).toString()" for expression in expressions]
                call += "(" + ", ".join(arguments) + ")"
            replacements.append((start, end, call))
        edits = replacements + const_edits(text, replacements)
        for start, end, value in sorted(set(edits), reverse=True):
            text = text[:start] + value + text[end:]
        return text

    changes = {}
    for path in FILES:
        original = path.read_text(encoding="utf-8")
        updated = rewrite(path, original)
        if updated != original:
            updated = "import '../l10n/game_localizations.dart';\n" + updated
            changes[str(path.relative_to(ROOT))] = {"before": original, "after": updated}
    plan = {"messages": messages, "keys": keys, "changes": changes,
            "arb_before": {code: (ROOT / "lib" / "l10n" / f"app_{code}.arb").read_text(encoding="utf-8")
                           for code in cards.LANGUAGES}}
    translation.write_json(WORK / "plan.json", plan)
    for relative, change in changes.items():
        (ROOT / relative).write_text(change["after"], encoding="utf-8")
    apply_locale(plan, "en", messages)
    print(f"Prepared {len(messages)} new messages in {len(changes)} game files.")


def apply_locale(plan, code, output):
    path = ROOT / "lib" / "l10n" / f"app_{code}.arb"
    original = plan["arb_before"][code]
    previous = cards.read_json(path)
    baseline = json.loads(original)
    if {key: value for key, value in previous.items() if key not in plan["messages"]
        and not (key.startswith("@") and key[1:] in plan["messages"])} != baseline:
        raise ValueError(f"Existing locale messages changed during translation: {code}")
    additions = {}
    for key, value in output.items():
        additions[key] = value
        if code == "en":
            placeholders = re.findall(r"\{(value\d+)\}", value)
            if placeholders:
                additions["@" + key] = {
                    "placeholders": {name: {"type": "String"} for name in placeholders},
                }
    addition_text = json.dumps(additions, ensure_ascii=False, indent=2)[1:-1].strip()
    path.write_text(original.rstrip()[:-1].rstrip() + ",\n  " + addition_text + "\n}\n", encoding="utf-8")


def validate_messages(source, output, code):
    if not isinstance(output, dict) or output.keys() != source.keys():
        raise ValueError("Translated message keys do not match the source")
    for key, item in source.items():
        original, result = item["description"], output[key]
        if not isinstance(result, str) or not result.strip() or "\ufffd" in result:
            raise ValueError(f"{key}: invalid translated text")
        if Counter(re.findall(r"\{[^{}]+\}", original)) != Counter(re.findall(r"\{[^{}]+\}", result)):
            raise ValueError(f"{key}: placeholders changed")
        for token in re.findall(r"\b\d+\b|\b(?:DevOps|CPU|HD|O/X)\b", re.sub(r"\{[^}]+\}", "", original)):
            if token not in result:
                raise ValueError(f"{key}: missing protected token {token}")
        prose = re.sub(r"\{[^}]+\}|\b(?:DevOps|CPU|HD|O/X)\b", "", original)
        if (code in cards.SCRIPTS and re.search(r"[A-Za-z]{2}", prose)
                and not re.search(cards.SCRIPTS[code], result)):
            raise ValueError(f"{key}: native-script text missing")
        if len(prose.split()) >= 3 and result == original:
            raise ValueError(f"{key}: explanatory text was not translated")


def checkpoint(statuses, text):
    translation.write_json(PROGRESS / "status.json", statuses)
    path = ROOT / "tools" / "active_work_state.json"
    state = cards.read_json(path)
    task = next(task for task in state["tasks"] if task["id"] == "game-ui-localization")
    done = sum(item["status"] == "done" for item in statuses.values())
    task["detail"] = f"Python/Copilot game UI translations: {done}/31 locales applied. {text}"
    state["phase"] = "Item 4 only. " + task["detail"]
    state["updated_at"] = datetime.now().astimezone().isoformat(timespec="seconds")
    translation.write_json(path, state)
    print(text, flush=True)


def prepare_supplement():
    if (WORK / "supplement.json").exists():
        raise ValueError("Supplement plan already exists")
    primary = cards.read_json(WORK / "plan.json")
    source = (ROOT / "lib" / "data" / "spot_picture_catalog.dart").read_text(encoding="utf-8")
    titles = []
    for section in re.split(r"const List<PictureLevelData> ", source)[1:]:
        catalog = section.split(" ", 1)[0]
        for match in re.finditer(
            r'title:\s*("(?:\\.|[^"])*"),(?P<fields>.*?)aspectRatio:', section, flags=re.S
        ):
            fields = match["fields"]
            if "hasJigsawLines: true" in fields:
                continue
            if catalog == "spotPictureCatalog" and "isProcedural: true" in fields:
                continue
            title = json.loads(match[1])
            if title not in titles:
                titles.append(title)
    messages = {
        "gameUiPlayerName": "Player {value1}",
        "gameUiBotName": "Bot {value1}",
        "gameUiBot": "Bot",
        "gameUiHintInsufficientPoints": "You need 20 points to use a hint.",
        "gameUiHintPurchaseFailed": "Could not purchase a hint. Please try again.",
        "gameUiChessKing": "king",
        "gameUiChessQueen": "queen",
        "gameUiChessRook": "rook",
        "gameUiChessBishop": "bishop",
        "gameUiChessKnight": "knight",
        "gameUiChessPawn": "pawn",
        "gameUiChessEmpty": "empty",
    }
    cases = []
    for title in titles:
        key = "gameScene" + "".join(word.title() for word in re.findall(r"[A-Za-z0-9]+", title))
        if key in messages:
            raise ValueError(f"Duplicate scene identifier: {key}")
        messages[key] = title
        cases.append(f"  {json.dumps(title)} => gameL10n(context).{key},")
    plan = {
        "messages": messages, "keys": {}, "changes": {},
        "arb_before": {
            "en": (ROOT / "lib" / "l10n" / "app_en.arb").read_text(encoding="utf-8"),
        },
        "primary_messages": list(primary["messages"]),
    }
    translation.write_json(WORK / "supplement.json", plan)
    apply_locale(plan, "en", messages)
    generated = (
        "// Generated by tool/localize_game_ui.py --prepare-supplement.\n"
        "import 'package:flutter/widgets.dart';\n\n"
        "import 'game_localizations.dart';\n\n"
        "String gameSceneTitle(BuildContext context, String title) => switch (title) {\n"
        + "\n".join(cases)
        + "\n  _ => throw ArgumentError.value(title, 'title', 'Unregistered game picture'),\n};\n"
    )
    (ROOT / "lib" / "l10n" / "game_scene_localizations.dart").write_text(generated, encoding="utf-8")
    print(f"Prepared {len(titles)} active scene captions and 3 player labels.")


def numbered_scene_titles():
    source = (ROOT / "lib" / "data" / "spot_picture_catalog.dart").read_text(encoding="utf-8")
    section = source.split("const List<PictureLevelData> spotPictureCatalog = [", 1)[1]
    section = section.split("\n];", 1)[0]
    titles = [
        json.loads(match.group(1))
        for match in re.finditer(r'title:\s*("(?:\\.|[^"])*"),', section)
    ]
    expected = [f"3D Scene {number}" for number in range(1, 101)]
    if titles != expected:
        raise ValueError("Expected the current Spot the Difference catalog to contain 3D Scene 1-100")
    return titles


def write_numbered_scene_localizations():
    numbered_scene_titles()
    generated = (
        "// Generated by tool/localize_game_ui.py --refresh-scene-catalog.\n"
        "import 'package:flutter/widgets.dart';\n\n"
        "import 'game_localizations.dart';\n\n"
        "String gameSceneTitle(BuildContext context, String title) {\n"
        "  final match = RegExp(r'^3D Scene ([1-9]\\d?|100)$').firstMatch(title);\n"
        "  if (match == null) {\n"
        "    throw ArgumentError.value(title, 'title', 'Unregistered game picture');\n"
        "  }\n"
        "  return gameL10n(context).gameScene3dScene(match[1]!);\n"
        "}\n"
    )
    (ROOT / "lib" / "l10n" / "game_scene_localizations.dart").write_text(
        generated, encoding="utf-8"
    )


def refresh_scene_catalog():
    titles = numbered_scene_titles()
    key = "gameScene3dScene"
    message = "3D Scene {value1}"
    progress = WORK / "scene_refresh"
    plan_path = WORK / "scene_refresh.json"
    if plan_path.exists():
        plan = cards.read_json(plan_path)
    else:
        plan = {
            "messages": {key: message},
            "keys": {},
            "changes": {},
            "arb_before": {
                code: (ROOT / "lib" / "l10n" / f"app_{code}.arb").read_text(encoding="utf-8")
                for code in cards.LANGUAGES
            },
        }
        translation.write_json(plan_path, plan)

    english = cards.read_json(ROOT / "lib" / "l10n" / "app_en.arb")
    if key not in english:
        apply_locale(plan, "en", {key: message})

    executable = shutil.which("copilot")
    if not executable:
        raise RuntimeError("GitHub Copilot CLI is required")
    translation.CACHE = WORK / "scene_refresh_batches"
    translation.LOGS = ROOT / "translator" / "logs" / "game_ui_scene_refresh"
    translation.NAMES.update(hi="Hindi", mr="Marathi")
    for code in cards.LANGUAGES:
        if code != "en":
            translation.SCRIPTS.setdefault(
                code, "the standard native script for " + translation.NAMES[code]
            )

    statuses = cards.read_json(progress / "status.json") if (progress / "status.json").exists() else {}
    source = {
        key: {
            "id": key,
            "command": "UI caption; preserve 3D and ICU {value1} exactly",
            "description": message,
        }
    }
    for code in cards.LANGUAGES:
        if code == "en" or statuses.get(code, {}).get("status") == "done":
            continue
        try:
            output = translation.translate_batch(
                source, code, "commands", executable, 1200, validator=validate_messages
            )
            apply_locale(plan, code, output)
            translation.write_json(progress / "applied" / f"{code}.json", output)
            statuses[code] = {"status": "done", "messages": len(output)}
            translation.write_json(progress / "status.json", statuses)
            print(f"PASS {code}: refreshed numbered scene caption.", flush=True)
        except (OSError, ValueError, TypeError, KeyError, RuntimeError,
                translation.subprocess.TimeoutExpired) as error:
            statuses[code] = {"status": "blocked", "error": str(error)}
            translation.write_json(progress / "status.json", statuses)
            print(f"BLOCKED {code}: {error}", flush=True)
            return 1
    write_numbered_scene_localizations()
    print(f"Refreshed localization for {len(titles)} numbered scenes.")
    return 0


def translate_locale(code, plan, statuses, executable):
    try:
        output = {}
        with LOCK:
            statuses[code] = {"status": "in_progress"}
            checkpoint(statuses, f"{code}: translating game UI messages.")
        source = {key: {"id": key, "command": "UI message; preserve ICU {valueN} placeholders exactly",
                        "description": text} for key, text in plan["messages"].items()}
        for batch in translation.batches(source, 100):
            output.update(translation.translate_batch(
                batch, code, "commands", executable, 1200, validator=validate_messages))
        with LOCK:
            apply_locale(plan, code, output)
            translation.write_json(PROGRESS / "applied" / f"{code}.json", output)
            statuses[code] = {"status": "done", "messages": len(output)}
            checkpoint(statuses, f"PASS {code}: {len(output)} game messages.")
        return True
    except (OSError, ValueError, TypeError, KeyError, RuntimeError, translation.subprocess.TimeoutExpired) as error:
        with LOCK:
            statuses[code] = {"status": "blocked", "error": str(error)}
            checkpoint(statuses, f"BLOCKED {code}: {error}")
        return False


def main():
    global PROGRESS
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--prepare", action="store_true")
    parser.add_argument("--translate", action="store_true")
    parser.add_argument("--unify-search", action="store_true")
    parser.add_argument("--prepare-supplement", action="store_true")
    parser.add_argument("--translate-supplement", action="store_true")
    parser.add_argument("--refresh-scene-catalog", action="store_true")
    parser.add_argument("--workers", type=int, default=4)
    parser.add_argument("--languages", nargs="+")
    args = parser.parse_args()
    if args.workers < 1:
        parser.error("Workers must be positive")
    if args.refresh_scene_catalog:
        return refresh_scene_catalog()
    if args.prepare_supplement:
        prepare_supplement()
    elif args.unify_search:
        path = ROOT / "lib" / "screens" / "games_screen.dart"
        text = path.read_text(encoding="utf-8")
        pairs = re.findall(
            r"_GameTile\(\s*icon:\s*'[^']*',\s*title:\s*(gameL10n\(context\)\.\w+),"
            r"\s*description:\s*(gameL10n\(context\)\.\w+),", text)
        if len(pairs) != 18:
            raise ValueError(f"Expected 18 game tiles, found {len(pairs)}")
        text = re.sub(
            r"List<\(String, String\)> get _searchableGames => \[.*?\n  \];",
            "List<(String, String)> get _searchableGames => [\n" +
            "\n".join(f"    ({title}, {description})," for title, description in pairs) + "\n  ];",
            text, flags=re.S)
        iterator = iter(pairs)
        def replace_search(match):
            title, description = next(iterator)
            return f"_matchesSearch({title}, {description})"
        text, count = re.subn(
            r"_matchesSearch\(\s*gameL10n\(context\)\.\w+,\s*gameL10n\(context\)\.\w+,\s*\)",
            replace_search, text)
        if count != 18:
            raise ValueError(f"Expected 18 filters, found {count}")
        path.write_text(text, encoding="utf-8")
    elif args.prepare:
        prepare()
    elif args.translate or args.translate_supplement:
        executable = shutil.which("copilot")
        if not executable:
            parser.error("GitHub Copilot CLI is required")
        translation.CACHE = WORK / "batches"
        translation.LOGS = ROOT / "translator" / "logs" / "game_ui"
        translation.NAMES.update(hi="Hindi", mr="Marathi")
        for code in cards.LANGUAGES:
            if code != "en":
                translation.SCRIPTS.setdefault(code, "the standard native script for " + translation.NAMES[code])
        plan = cards.read_json(WORK / ("supplement.json" if args.translate_supplement else "plan.json"))
        if args.translate_supplement:
            primary_status = cards.read_json(WORK / "status.json")
            if any(primary_status.get(code, {}).get("status") != "done"
                   for code in cards.LANGUAGES if code != "en"):
                raise ValueError("Complete the main game translations before applying the supplement")
            PROGRESS = WORK / "supplement"
            snapshot = PROGRESS / "arb_before.json"
            if not snapshot.exists():
                translation.write_json(snapshot, {
                    code: (ROOT / "lib" / "l10n" / f"app_{code}.arb").read_text(encoding="utf-8")
                    for code in cards.LANGUAGES if code != "en"
                })
            plan["arb_before"] = cards.read_json(snapshot)
            translation.CACHE = WORK / "supplement_batches"
            translation.LOGS = ROOT / "translator" / "logs" / "game_ui_supplement"
        statuses = cards.read_json(PROGRESS / "status.json") if (PROGRESS / "status.json").exists() else {}
        codes = args.languages or [code for code in cards.LANGUAGES if code != "en"]
        with ThreadPoolExecutor(max_workers=args.workers) as pool:
            passed = list(pool.map(lambda code: translate_locale(code, plan, statuses, executable), codes))
        return 0 if all(passed) else 1
    else:
        inventory()
    return 0


if __name__ == "__main__":
    sys.stdout.reconfigure(encoding="utf-8")
    raise SystemExit(main())
