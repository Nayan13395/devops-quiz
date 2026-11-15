"""Build offline learning assets without guessing quiz offsets or filling gaps.

Run from the repository root: python translator\\learning\\build_catalogs.py
Only cards whose translated fields are available are emitted for each locale.
"""

import ast
import csv
import hashlib
import json
import re
from pathlib import Path


MAINTENANCE = Path(__file__).resolve().parent
ROOT = MAINTENANCE.parent.parent
HERE = ROOT / "assets" / "learning"
LANGUAGES = "en hi mr es fr de it pt ar id tr ru ja zh bn as doi gu kn gom mai ml mni ne or pa sa sat sd ta te ur".split()
FOREIGN_LANGUAGES = "es fr de it pt ar id tr ru ja zh".split()
TRANSLATED_SOURCE_SHA256 = "36f2b2e58779c5aa4cd8f4f4c834ae95a77fb4a2933cf15b55bf1c9e9b617c5c"
SCRIPTS = {
    **dict.fromkeys(("hi", "mr", "doi", "gom", "mai", "ne", "sa"), r"[\u0900-\u097f]"),
    **dict.fromkeys(("ar", "sd", "ur"), r"[\u0600-\u06ff]"),
    **dict.fromkeys(("bn", "as"), r"[\u0980-\u09ff]"),
    "gu": r"[\u0a80-\u0aff]", "kn": r"[\u0c80-\u0cff]",
    "ml": r"[\u0d00-\u0d7f]", "or": r"[\u0b00-\u0b7f]",
    "pa": r"[\u0a00-\u0a7f]", "ta": r"[\u0b80-\u0bff]",
    "te": r"[\u0c00-\u0c7f]", "mni": r"[\uabc0-\uabff]",
    "sat": r"[\u1c50-\u1c7f]", "ru": r"[\u0400-\u04ff]",
    "ja": r"[\u3040-\u30ff\u4e00-\u9fff]", "zh": r"[\u4e00-\u9fff]",
}
TOPICS = {
    "Ansible": "Ansible", "AWS": "AWS", "Azure": "Azure", "Bash": "BASH",
    "Docker": "Docker", "GCP": "GCP", "Git": "Git", "Hybrid Cloud": "Hybridcloud",
    "IBM Cloud": "IBM", "JavaScript": "Javascript", "Jenkins": "Jenkins",
    "Kubernetes": "K8s", "Linux": "Linux", "Multi Cloud": "Multicloud",
    "Networking": "Networking", "Oracle Cloud": "Oracle", "Perl": "Perl",
    "PowerShell": "Powershell", "Python": "Python", "Ruby": "Ruby",
    "Terraform": "Terraform",
}
STRING = r"""r?(?:'(?:\\.|[^'\\])*'|"(?:\\.|[^"\\])*")"""
# The remaining concept answers are code, product/service names, UI labels,
# acronyms, or proper names, and must remain byte-for-byte identical.
PROSE_ANSWER_IDS = set("""
git-013 networking-011 networking-016 networking-017 networking-024
jenkins-010 jenkins-013 jenkins-015 jenkins-016 jenkins-017 jenkins-024
terraform-012 terraform-018 ansible-011 ansible-013 ansible-017
bash-012 bash-017 bash-018 bash-019 javascript-001 ruby-001 ruby-022
multicloud-001 multicloud-002 multicloud-006 multicloud-013 multicloud-014
multicloud-021 multicloud-022 multicloud-023 multicloud-024
hybridcloud-001 hybridcloud-002 hybridcloud-014 hybridcloud-022
""".split())
PRESERVED_NAMES = re.compile(
    r"(?<![\w-])(?:Ansible|AWS|Azure|Bash|Dockerfile|Docker|GCP|Git|IBM|JavaScript|"
    r"Jenkins|Kubernetes|Linux|Oracle|Perl|PowerShell|Python|Ruby|Terraform|Google|"
    r"Microsoft|Amazon|HashiCorp|OpenShift|Entra|Graphviz|OCI|SYN-ACK|SYN|ACK|IPsec|"
    r"IPAM|IPv4|ICMPv6|HTTP/2|HTTP|TCP|UDP|POSIX|systemd-logind|systemd|sysstat|"
    r"seccomp|terraform_data|CalledProcessError|TimeoutExpired|ValueError|JSON::PP|"
    r"UTF-8|NUL|-WhatIf|-Confirm|PyPI|ReplicaSet|Deployment|YAML|JSON|CLI|API|"
    r"SQL|TOML|UUID|XML|S3|EC2|IAM|VPC|VCN|VNIC|TLS|DNS|CPU|ASCII|IP)\b"
)


def missing_identifiers(card, entry):
    return {
        field: sorted(set(PRESERVED_NAMES.findall(card[field])) - {
            token for token in PRESERVED_NAMES.findall(card[field]) if token in entry[field]
        })
        for field in ("command", "description")
        if any(token not in entry[field] for token in PRESERVED_NAMES.findall(card[field]))
    }


def catalog_fingerprint(cards):
    content = [
        {key: card[key] for key in ("id", "topic", "command", "description", "example", "isConcept")}
        for card in cards
    ]
    return hashlib.sha256(json.dumps(content, ensure_ascii=False, sort_keys=True).encode("utf-8")).hexdigest()


def decode(value):
    return ast.literal_eval(value if value.startswith("r") else value.replace("\\$", "$"))


def read_json(path):
    def unique(pairs):
        result = {}
        for key, value in pairs:
            if key in result:
                raise ValueError(f"Duplicate key in {path}: {key}")
            result[key] = value
        return result
    return json.loads(path.read_text(encoding="utf-8-sig"), object_pairs_hook=unique)


def source_cards():
    source = (ROOT / "lib" / "screens" / "learning_screen.dart").read_text(encoding="utf-8")
    source = source.split("const List<DevOpsCard> _baseLearningCards = [", 1)[1]
    source = source.split("\n];", 1)[0]
    cards = []
    for block in re.findall(r"DevOpsCard\((.*?)\n  \),", source, re.S):
        card = {
            key: decode(value)
            for key, value in re.findall(r"(\w+):\s*(" + STRING + r")", block)
        }
        card["isConcept"] = bool(re.search(r"isConcept:\s*true", block))
        question = re.search(r"sourceQuestion:\s*(\d+)", block)
        if question:
            card["sourceQuestion"] = int(question[1])
        assert all(key in card for key in ("id", "topic", "command", "description", "example"))
        cards.append(card)
    assert len(cards) == 500, len(cards)
    seeds = (ROOT / "lib" / "data" / "additional_learning_card_seeds.dart").read_text(encoding="utf-8")
    seeds = seeds.split("additionalLearningCardSeeds = [", 1)[1]
    tokens = [
        decode(match[0])
        for match in re.finditer(r"//[^\n]*|" + STRING, seeds)
        if not match[0].startswith("//")
    ]
    assert len(tokens) == 2000, len(tokens)
    for index in range(500):
        topic, command, description, example = tokens[index * 4:index * 4 + 4]
        cards.append(dict(id=f"extra-{index + 1:03}", topic=topic, command=command,
                          description=description, example=example, isConcept=False))
    assert len({card["id"] for card in cards}) == 1000
    return cards


def quiz_assets():
    quizzes = {}
    for topic, directory in TOPICS.items():
        for language in LANGUAGES:
            bank = []
            for number in range(1, 6):
                path = ROOT / "assets" / "questions" / directory / language / f"set{number}" / "questions.json"
                data = read_json(path)
                if not isinstance(data, list) or len(data) != 25 or any(q["set"] != number for q in data):
                    raise ValueError(f"Invalid question set: {path}")
                bank.extend(data)
            quizzes[topic, language] = bank
    return quizzes


def translation_sources(cards, quizzes):
    sources = {}
    for card in cards:
        if not card["isConcept"]:
            continue
        english = quizzes[card["topic"], "en"]
        matches = [
            index for index, quiz in enumerate(english)
            if (quiz["question"], quiz["answer"]) == (card["command"], card["description"])
        ]
        if len(matches) == 1:
            sources[card["id"]] = matches[0]
        elif len(matches) > 1 and card.get("sourceQuestion") in matches:
            sources[card["id"]] = card["sourceQuestion"]
    return sources


def validate_description(card, language, description):
    label = f"{language}/{card['id']}"
    if not isinstance(description, str) or not description.strip() or "\ufffd" in description:
        raise ValueError(f"Invalid translated description: {label}")
    if description == card["description"]:
        raise ValueError(f"Copied English description: {label}")
    if language in SCRIPTS and not re.search(SCRIPTS[language], description):
        raise ValueError(f"Missing native script: {label}")
    entry = dict(command=card["command"], description=description)
    missing = missing_identifiers(card, entry)
    if missing:
        raise ValueError(f"Missing identifiers: {label}: {missing}")
    for token in re.findall(r"(?<![\w-])--?[A-Za-z][\w-]*|\b\d+(?:\.\d+)?\b", card["description"]):
        if token not in description:
            raise ValueError(f"Missing protected token: {label}: {token}")


def command_overrides(cards):
    source = {card["id"]: card for card in cards if not card["isConcept"]}
    descriptions = {}
    for path in sorted(MAINTENANCE.glob("command_translations_*.json")):
        for language, entries in read_json(path).items():
            if language not in LANGUAGES or language in ("en", "hi", "mr"):
                raise ValueError(f"Unexpected command translation locale: {language}")
            for card_id, description in entries.items():
                if card_id not in source:
                    raise ValueError(f"Unknown command card: {language}/{card_id}")
                if card_id in descriptions.setdefault(language, {}):
                    raise ValueError(f"Duplicate command translation: {language}/{card_id}")
                validate_description(source[card_id], language, description)
                descriptions[language][card_id] = description
    return descriptions


def build():
    cards = source_cards()
    if catalog_fingerprint(cards) != TRANSLATED_SOURCE_SHA256:
        raise ValueError("Source catalog changed: review translations before updating its fingerprint.")
    quizzes = quiz_assets()
    matches = translation_sources(cards, quizzes)
    descriptions = command_overrides(cards)
    overrides_path = MAINTENANCE / "manual_translations.json"
    overrides = read_json(overrides_path) if overrides_path.exists() else {}
    source_ids = {card["id"] for card in cards}
    assert set(overrides) <= set(LANGUAGES)
    assert all(set(entries) <= source_ids for entries in overrides.values())
    with (MAINTENANCE / "seed_translations.tsv").open(encoding="utf-8", newline="") as source:
        rows = list(csv.reader(source, delimiter="\t"))
    assert len(rows) == 500 and len({row[0] for row in rows}) == 500
    for row in rows:
        assert len(row) == 3, row
        card_id, hindi, marathi = row
        assert card_id in source_ids and card_id.startswith("extra-")
        for language, description in (("hi", hindi), ("mr", marathi)):
            assert card_id not in overrides.setdefault(language, {})
            overrides[language][card_id] = {"description": description}
    report = {
        "total": len(cards), "concepts": sum(card["isConcept"] for card in cards),
        "sourceCatalogSha256": catalog_fingerprint(cards),
        "exactQuizMatches": len(matches),
        "remappedQuizOffsets": {
            card["id"]: {"original": card["sourceQuestion"], "matched": matches[card["id"]]}
            for card in cards if card["id"] in matches and card["sourceQuestion"] != matches[card["id"]]
        },
        "unmatchedConceptIds": [card["id"] for card in cards if card["isConcept"] and card["id"] not in matches],
        "policy": {
            "englishFallbackEmitted": False,
            "quizReuse": "Concept cards resolve current category/set-ordered quiz references, exactly as the runtime loader does.",
            "protectedAnswers": "Code, product names, UI labels, acronyms and proper names remain unchanged.",
            "manualTranslations": "Hindi/Marathi base and seed overrides, plus explicit command_translations_*.json description files.",
            "quality": "Manually authored translations and reused repository quiz translations; not independently native-speaker reviewed.",
            "translationMethod": "Explicit authored translations; no Ollama or external translation API.",
            "blocker": "Unfinished descriptions and uncertain languages remain explicitly missing, never English placeholders.",
        },
        "locales": {},
    }
    catalogs = {}
    for language in LANGUAGES:
        catalog = {}
        rejected = {}
        for card in cards:
            entry = None
            if card["isConcept"]:
                # This is the runtime's current-bank view, not an old embedded
                # question at a guessed position in the retired flat layout.
                index = card["sourceQuestion"]
                bank = quizzes[card["topic"], language]
                english = quizzes[card["topic"], "en"][index]
                quiz = bank[index]
                if (quiz["answer"] not in quiz["options"]
                        or english["answer"] not in english["options"]
                        or quiz["options"].index(quiz["answer"]) != english["options"].index(english["answer"])):
                    rejected[card["id"]] = "Misaligned concept answer in source question bank"
                    continue
                if language != "en" and quiz["question"] == english["question"]:
                    rejected[card["id"]] = "Untranslated concept question in source question bank"
                    continue
                catalog[card["id"]] = dict(command=quiz["question"], description=quiz["answer"])
                continue
            if language == "en":
                entry = {key: card[key] for key in ("command", "description")}
            elif language in ("hi", "mr"):
                prefix = "hindi" if language == "hi" else "marathi"
                if prefix + "Description" in card:
                    command = card.get(prefix + "Command", card["command"])
                    if not card["isConcept"] or command != card["command"]:
                        entry = dict(command=command, description=card[prefix + "Description"])
            elif card["id"] in descriptions.get(language, {}):
                entry = dict(command=card["command"], description=descriptions[language][card["id"]])
            manual = overrides.get(language, {}).get(card["id"])
            if manual:
                entry = dict(command=card["command"], description=card["description"]) if entry is None else entry
                entry.update(manual)
            if entry:
                if language != "en":
                    if entry["description"] == card["description"]:
                        # Do not publish English prose as a translation.
                        rejected[card["id"]] = "Untranslated prose answer in source"
                        continue
                    if card["isConcept"] and entry["command"] == card["command"]:
                        rejected[card["id"]] = "Untranslated concept question in source"
                        continue
                    missing = missing_identifiers(card, entry)
                    if missing:
                        rejected[card["id"]] = {"missingIdentifiers": missing}
                        continue
                assert set(entry) == {"command", "description"}
                assert all(isinstance(value, str) and value.strip() for value in entry.values())
                if not card["isConcept"]:
                    assert entry["command"] == card["command"], (language, card["id"])
                catalog[card["id"]] = entry
        catalogs[language] = catalog
        report["locales"][language] = {
            "translated": len(catalog),
            "conceptsFromQuestionBanks": sum(card["isConcept"] and card["id"] in catalog for card in cards),
            "commandDescriptions": sum(not card["isConcept"] and card["id"] in catalog for card in cards),
            "complete": len(catalog) == len(cards),
            "rejectedSourceTranslations": rejected,
            "missingIds": [card["id"] for card in cards if card["id"] not in catalog],
        }
    report["allLocalesComplete"] = all(data["complete"] for data in report["locales"].values())
    report["foreignLocalesComplete"] = all(report["locales"][code]["complete"] for code in FOREIGN_LANGUAGES)
    report["foreignMissingCount"] = sum(len(report["locales"][code]["missingIds"]) for code in FOREIGN_LANGUAGES)
    report["policy"]["coverageMeaning"] = "Content availability, not native-speaker review or certification of source question translations."
    return catalogs, report


def main():
    catalogs, report = build()
    for language, catalog in catalogs.items():
        target = HERE / f"cards_{language}.json"
        temporary = target.with_suffix(".json.tmp")
        temporary.write_text(json.dumps(catalog, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
        temporary.replace(target)
    (HERE / "coverage.json").write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"Catalog: {report['total']} cards; current-bank concepts: {report['concepts']}")
    print(" ".join(f"{language}={data['translated']}" for language, data in report["locales"].items()))


if __name__ == "__main__":
    main()
