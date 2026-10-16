# Indian language translations

The app registers the 19 Indian Scheduled Languages not already present in the app: Assamese (`as`), Bodo (`brx`), Dogri (`doi`), Gujarati (`gu`), Kannada (`kn`), Kashmiri (`ks`), Konkani (`gom`), Maithili (`mai`), Malayalam (`ml`), Meitei/Manipuri (`mni`), Nepali (`ne`), Odia (`or`), Punjabi (`pa`), Sanskrit (`sa`), Santali (`sat`), Sindhi (`sd`), Tamil (`ta`), Telugu (`te`), and Urdu (`ur`). Hindi, Marathi and Bengali were already included.

The scripts use the local Ollama model configured in `config.py` (`qwen3:8b`). Install Ollama, pull the model, then install the Python client:

```powershell
ollama pull qwen3:8b
python -m pip install -r translator/requirements.txt
```

## App interface

Translate the UI strings for one language, or all 19:

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

Translate one question category or every category:

```powershell
python translator/translate.py gu Linux
python translator/translate.py gu all
```

Run this once for each target language. The English banks contain about 2,200 questions across 21 categories. Translation is saved incrementally to files such as `assets/questions/Linux/linux_gu.json`; rerunning resumes from the saved count. Each translated answer is selected using the original correct option's index, so translating the options does not break grading.

The app resolves these locale codes for question banks, but falls back to English until the corresponding files exist. After translating a language, run the full Flutter tests and review sample questions with a fluent speaker before publishing. Machine translation of technical exam content should be treated as a draft, particularly for command-line examples and specialist terminology.
