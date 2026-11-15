# Offline app regression guide

## Purpose and limits

The offline ATF runs data-integrity checks and the Flutter regression tests. Its
target is **100% passing automated checks**, not a claim that every possible
device interaction, factual statement, or translation has been certified.

The report separates failed, passed, skipped, and unrun manual checks. Pending
translations are failures, not English fallback successes. Native-speaker
review and subject-matter review remain required for release-quality content.
Ollama is not used in this workflow.

## Question layout

Each set is an independent JSON array of exactly 25 records:

```text
assets\questions\Docker\en\set1\questions.json
assets\questions\Docker\en\set2\questions.json
assets\questions\Docker\hi\set1\questions.json
```

`assets\questions\catalog.json` lists the categories and language folders. The
layout contains 21 categories, 33 content languages including English, and five
sets per language: **3,465 set files**. The app currently offers 32 UI languages;
Korean question assets are retained even though Korean is not in the UI picker.

Every record retains `category`, `set`, `question`, `options`, and `answer`.
Options must contain four distinct strings; `answer` must exactly equal the
correct option. Translated files must match the English question sequence and
correct-answer position for that set. The app shuffles a full selected set
without replacement; it does not fill a short set from another set.

The old flat banks and unused temporary variants were backed up under:

```text
build\question_layout_backup\
```

Original manually edited English files were also backed up in the Copilot
session artifacts before additions. Do not run the old filler generator
`tools\replace_repeated_questions.py`.

## Prerequisites

Use the project's installed Flutter/Dart SDK and Python 3. Dependencies and the
Flutter test engine must already be cached before disconnecting the network.
If setup is missing, perform the normal project bootstrap while online:

```powershell
Set-Location C:\devops_quiz
flutter pub get
flutter test --no-pub test\question_layout_test.dart
```

Do not install or update dependencies during an offline verification run.
The runner refuses to silently download a missing test engine.

## Run the suite

```powershell
Set-Location C:\devops_quiz
python tool\run_offline_atf.py
```

The runner:

1. Reads every category/language/set file and validates counts, schema,
   metadata, duplicates, answer positions, expected scripts, and protected tokens.
2. Checks source-version and content fingerprints for rebuilt translations.
3. Runs `flutter test --no-pub --machine --dart-define=ATF_OFFLINE=true`.
4. Writes JSON and self-contained HTML reports, retaining the raw test output.

The test harness blocks real Dart HTTP clients. Unit/widget tests use fixtures
or mocked platform boundaries; they are **not** real Firebase or OS integration tests.

For a quicker diagnostic that does **not** count as a full app run:

```powershell
python tool\run_offline_atf.py --data-only
```

You can change the timeout or output directory:

```powershell
python tool\run_offline_atf.py --timeout-seconds 1800 --output build\atf
```

Exit code `0` means the automated checks in the selected scope passed. Exit code
`1` means at least one failed. Read the report even after exit code `0`; manual
and online checks remain explicitly unrun.

## Reports and live tracker

```text
build\atf\report.html
build\atf\report.json
build\atf\flutter-machine.jsonl
```

Open the HTML file locally:

```powershell
Start-Process .\build\atf\report.html
```

When the tracker is running, its report link is:

```text
http://localhost:8080/atf-report
```

The tracker reads `tools\app_delivery_state.json`. Translation draft counts
are separate from validated/applied bank counts. A supplied draft is not
automatically a verified translation.

## Whole-app translation audit

To check localization rather than only general regression behavior:

```powershell
Set-Location C:\devops_quiz
python tool\audit_app_translations.py
Start-Process .\build\translation_audit\report.html
```

This audit covers all 32 selectable locales (including English), all question
sets, effective learning-card availability, UI keys/placeholders/duplicate keys,
and a source inventory of every screen. Per-locale runtime probes check language
switching/persistence, text direction, framework-control fallbacks, question
loaders, Port Master templates, drawer labels, Games, Learning, saved questions,
Settings and Notifications. Existing localization regressions run alongside them.
The accepted native-control fallback behavior is documented in
[`FRAMEWORK_CONTROL_LOCALIZATION.md`](FRAMEWORK_CONTROL_LOCALIZATION.md).
Technical names and commands are not automatically treated as untranslated prose.

The report separates successful probe execution from actual localization
coverage. A passing widget test does **not** make an English-only screen translated.
Source-only findings, sampled semantic issues and required native-speaker/device
review are explicitly distinguished. The audit never rewrites translation data.
It returns exit code `1` when findings remain; inspect the report rather than
assuming every nonzero exit is a test-runner crash. `--data-only` skips runtime
checks and is not a full localization audit.

Results are in `build\translation_audit\report.html`, `report.json`,
`question_checks.json`, `source_inventory.json` and per-language `runtime\`
files. The live server gives this audit precedence when
`tools\translation_audit_state.json` exists:

```text
http://localhost:8080/
http://localhost:8080/translation-audit-report
http://localhost:8080/translation-audit.json
```

When `tools\active_work_state.json` exists, the root page shows only unfinished
delivery/fix tasks. Completed items are filtered out, not deleted from historical
reports. Each active task's percentage is computed from its `checks` list in
`tools\active_work_state.json`; mark a check `done: true` only after verifying it.
The overall percentage counts all checks, including completed tasks hidden from
the list. These are checklist-completion percentages, not time estimates or
translation-quality scores; blocked work retains a visible Blocked label.
The audit status page remains at `/translation-audit`, the previous
delivery tracker at `/delivery`, and the general ATF report at `/atf-report`.
Start the tracker with
`python tools\progress_server.py` if it is not already running; do not start a
second copy on the same port. Use the host's current LAN IP instead of localhost
when opening it from another device on the same reachable network.

## Coverage

| Area | Automated evidence |
|---|---|
| Questions | Catalog paths, 25 records per set, exact answer matching, source positions, duplicates, source/content fingerprints |
| Localization | Every selectable locale's UI keys and ICU placeholders; localized drawer labels and RTL controls |
| Menus | Every internal drawer action selects its intended screen |
| Games | Existing game-specific move, scoring, level, hint, layout, save/resume and progression tests |
| Learning | Card catalog, swipe directions, search, shuffle, timed movement, bookmarks and translation availability |
| Notifications | In-app routing/read state and eligibility logic; not real OS delivery |
| Sound | Persisted toggle, mute/cancellation and playback calls through a fake audio player |
| Tour and unlocks | Highlight targets, replay/skip/completion, popup sequencing and acknowledgement persistence |
| Certificates/referrals | Local rendering/state logic and mocked integration boundaries |

Game-specific tests, rather than the menu-routing test, exercise individual
screens. A routing test proves which screen is selected; it does not certify
every operation inside that screen.

## Completing pending translations

Explicit translation requests and responses are stored under:

```text
build\translation_rebuild\requests\
build\translation_rebuild\responses\
build\translation_rebuild\progress_international.json
build\translation_rebuild\progress_regional.json
```

Each response maps a request ID to a translated string. Preserve commands,
flags, code, product names, numeric values, and placeholders. Do not copy
English prose into another language or substitute Hindi for another Indian
language. Have uncertain language content reviewed by a competent native speaker.

Apply only complete validated banks:

```powershell
python tool\align_question_translations.py apply
```

This command leaves incomplete banks pending and returns a nonzero exit code
while any remain. It derives each answer from the translated option at the
English answer position and records source/content fingerprints.
If English changes after preparation, it refuses stale translations.

The current response plan covers the eight rebuilt categories. The full ATF
also checks the other categories: legacy translation defects there are reported
separately and are not silently fixed by this plan. Review those language records
against their English set before treating the whole-app data checks as complete.
Explicit `pending_translation_records` entries in the catalog must remain until
the indicated records have been translated and reviewed; do not delete flags
merely to improve the pass rate.
Question-based learning cards resolve their displayed text from the active
question banks; independent command-card translations retain their own catalog
and explicitly show when a translation is unavailable.

## Release checks that need people or real devices

Before release, complete the manual checklist embedded in the report:

1. Install and cold-start on supported real platforms.
2. Inspect all scripts, fonts, clipping, RTL and accessibility on phones/tablets.
3. Hear audio effects and confirm actual device mute/volume behavior.
4. Grant/deny notification permissions and verify real scheduled delivery.
5. Exercise touch gameplay, lifecycle, persistence and interrupted actions.
6. Verify PDF viewing, printing, sharing and file permissions.
7. Test real Google sign-in, Firebase authorization, referrals and leaderboards online.
8. Verify store/update/external links.
9. Obtain factual and native-language content review.

Existing saved-question IDs use category, set and position. Replacing question
content at a position changes the content associated with old bookmarks; review
and re-save important bookmarks after a major bank rebuild.

Do not edit assertions merely to turn the report green. Investigate failures,
fix the implementation or data, rerun affected cases, and then rerun the full suite.
