# Indian language translations

The app registers the 17 Indian Scheduled Languages not already present in the app: Assamese (`as`), Dogri (`doi`), Gujarati (`gu`), Kannada (`kn`), Konkani (`gom`), Maithili (`mai`), Malayalam (`ml`), Meitei/Manipuri (`mni`), Nepali (`ne`), Odia (`or`), Punjabi (`pa`), Sanskrit (`sa`), Santali (`sat`), Sindhi (`sd`), Tamil (`ta`), Telugu (`te`), and Urdu (`ur`). Hindi, Marathi and Bengali were already included.

Question-bank translations use a Python standard-library client for the public Google Translate endpoint. They do not use or download Ollama or a local model. Internet access is required. The separate UI-ARB script still has its existing local-model dependency and is not part of the question-bank queue.

## App interface

Translate the UI strings for one language, or all 17:

```powershell
python translator/translate_l10n.py gu
python translator/translate_l10n.py all
```

The script saves resumable progress under `translator/cache/` and writes a complete `lib/l10n/app_<locale>.arb` only after all UI strings pass placeholder checks. Once translations are generated, register their Dart localization bundles:

```powershell
flutter gen-l10n
```

The settings picker shows a language only when Flutter has generated its localization bundle. This avoids offering a UI language whose text is still English.

## Questions and options

Translate one question category or every category for a language:

```powershell
python translator/translate.py gu Linux
python translator/translate.py gu all
```

Run the queued 18 enabled Indian locales across all question categories in order, or start with Azure only:

```powershell
python translator/translate_queue.py all
python translator/translate_queue.py Azure
```

The queue starts with Azure, then Python, Ruby, Perl, and Linux, followed by the remaining folders. It processes one category and locale at a time, saves each file incrementally, and records skipped/failed tasks in `translator/logs/translation_queue_status.json`. Existing complete files are retained; empty and partial files are resumed. Correct answers are rebuilt from the English answer's option index, so grading remains aligned.

Meitei uses the endpoint's `mni-Mtei` script code and saves to the requested `_mni.json` filename.

The app resolves these locale codes for question banks, but falls back to English until the corresponding files exist. After translating a language, run the full Flutter tests and review sample questions with a fluent speaker before publishing. Machine translation of technical exam content should be treated as a draft, particularly for command-line examples and specialist terminology.
