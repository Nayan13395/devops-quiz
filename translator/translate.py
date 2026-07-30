import json
import re
import sys
import ollama

from config import *

# ----------------------------
# Validate language
# ----------------------------

if len(sys.argv) != 2:
    print("Usage:")
    print("python translate.py hi")
    print("python translate.py mr")
    sys.exit(1)

LANGUAGE = sys.argv[1]

if LANGUAGE not in OUTPUT_FILES:
    print("Supported languages: hi, mr")
    sys.exit(1)

OUTPUT_FILE = OUTPUT_FILES[LANGUAGE]

# ----------------------------
# Load English questions
# ----------------------------

with SOURCE_FILE.open("r", encoding="utf-8") as f:
    questions = json.load(f)

print(f"Loaded {len(questions)} questions")

# ----------------------------
# Resume support
# ----------------------------

translated_questions = []

if OUTPUT_FILE.exists():
    try:
        with OUTPUT_FILE.open("r", encoding="utf-8") as f:
            translated_questions = json.load(f)

        print(f"Resuming from question {len(translated_questions)+1}")

    except Exception:
        translated_questions = []

start = len(translated_questions)

# ----------------------------
# Translate one question
# ----------------------------

def translate_question(question):

    prompt = f"""
You are a professional technical translator.

Translate this JSON from English to {"Hindi" if LANGUAGE=="hi" else "Marathi"}.

Rules:

1. Translate ONLY
   - question
   - options (only if they are normal words)

2. DO NOT translate
   - category
   - set
   - answer
   - Linux
   - Docker
   - Kubernetes
   - Git
   - GitHub
   - Jenkins
   - Terraform
   - Helm
   - YAML
   - JSON
   - kubectl
   - Docker commands
   - Git commands

3. Keep JSON structure exactly the same.

4. Return ONLY valid JSON.

JSON:

{json.dumps(question, ensure_ascii=False, indent=2)}
"""

    for attempt in range(3):

        try:

            response = ollama.chat(
                model=MODEL,
                options={
                    "temperature": TEMPERATURE
                },
                messages=[
                    {
                        "role": "user",
                        "content": prompt,
                    }
                ],
            )

            content = response["message"]["content"]

            content = re.sub(r"```json", "", content)
            content = re.sub(r"```", "", content)
            content = content.strip()

            translated = json.loads(content)

            return translated

        except Exception as e:

            print(f"Retry {attempt+1}/3")
            print(e)

    raise Exception("Failed after 3 retries.")

# ----------------------------
# Translation loop
# ----------------------------

for i in range(start, len(questions)):

    print(f"Translating {i+1}/{len(questions)}")

    translated = translate_question(
        questions[i]
    )

    translated_questions.append(translated)

    with OUTPUT_FILE.open(
        "w",
        encoding="utf-8",
    ) as f:

        json.dump(
            translated_questions,
            f,
            ensure_ascii=False,
            indent=4,
        )

print()
print("==============================")
print("Translation Completed")
print("==============================")