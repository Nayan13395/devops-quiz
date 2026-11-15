# Indian language translations

The app registers the 17 Indian Scheduled Languages not already present in the app: Assamese (`as`), Dogri (`doi`), Gujarati (`gu`), Kannada (`kn`), Konkani (`gom`), Maithili (`mai`), Malayalam (`ml`), Meitei/Manipuri (`mni`), Nepali (`ne`), Odia (`or`), Punjabi (`pa`), Sanskrit (`sa`), Santali (`sat`), Sindhi (`sd`), Tamil (`ta`), Telugu (`te`), and Urdu (`ur`). Hindi, Marathi and Bengali were already included.

The older question-bank queue below uses a Python standard-library client for the public Google Translate endpoint. The newer `tools\translate_docker_languages.py` question runner and the learning-card runner use GitHub Copilot CLI instead. Neither downloads a local model. The separate UI-ARB script still has its existing local-model dependency.

## Learning cards

Resume the seven requested card languages using the same Python/Copilot CLI approach as the newer question translator:

```powershell
python translator\learning\translate_cards.py doi gom mai mni sa sat sd --dry-run
python translator\learning\translate_cards.py doi gom mai mni sa sat sd --workers 2
```

The runner retains validated descriptions, translates missing descriptions in batches, and repairs concept source records with invalid answer alignment, untranslated questions or missing native script. It validates each batch before applying it and rebuilds the card catalogs. The active tracker must contain tasks for the requested language codes, as in `tools\active_work_state.json`.

Source-fingerprinted batch responses are cached in `translator\cache\learning`; CLI logs are in `translator\logs\learning`. Failed batches leave published translations intact and are reported as blocked. Rerun the same command to resume. `--batch-size` and `--timeout` control batch size and the per-CLI-call timeout. Commands, flags, numbers and protected technical names are checked mechanically. Completion reports content availability, not independent native-speaker review.

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

For the separately tracked remaining English answer prose, use the scoped
Python/Copilot runner:

```powershell
python tool\translate_answer_prose.py --dry-run
python tool\translate_answer_prose.py --workers 4
python tool\translate_answer_prose.py --verify
```

Its reviewed policy preserves product names, code and literal UI labels. It changes
only selected options and the matching answer, retaining the existing answer
position even in banks awaiting separate alignment repair. Snapshots, validated
batches and verification evidence are retained in `translator\cache\answer_prose`.
Rerun to resume; conflicting edits stop application. Verification compares all
question files and integrity errors with the original snapshot, without clearing
pending alignment flags. Rebuild dependent cards with
`python translator\learning\build_catalogs.py` after the queue finishes.

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
