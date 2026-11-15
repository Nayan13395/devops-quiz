# devops_quiz

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Indian App Languages

The language picker includes 20 scheduled Indian languages: Assamese,
Bengali, Dogri, Gujarati, Hindi, Kannada, Konkani, Maithili,
Malayalam, Manipuri (Meitei Mayek), Marathi, Nepali, Odia, Punjabi, Sanskrit,
Santali (Ol Chiki), Sindhi, Tamil, Telugu and Urdu. Selected languages persist
between launches. The existing international languages remain available.

All 89 existing app-localization messages have entries in these bundles. The
17 newly added translations are offline drafts and require native-speaker
review before claiming production linguistic quality. This does not translate
hardcoded text in screens that do not yet use the localization API. Quiz
questions use their separate language assets and fall back to English when a
translation is unavailable.

Flutter's own controls use native framework translations where supported.
Unsupported control locales fall back to English, or Urdu for right-to-left
scripts. Sindhi and Urdu retain right-to-left layout. Font/glyph
coverage depends on the platform; verify Meitei Mayek and Ol Chiki on release
devices.

## Notification localization

Scheduled reminders, update/streak notifications, the in-app notification feed
and notification-screen controls use the persisted app language. Changing the
language replaces pending daily schedules while retaining notification IDs and
read state. Catalogs live in `assets/notifications/`; regenerate them with one
worker using `python tool\translate_notification_localizations.py --workers 1`
and verify them with the same command plus `--verify`. Generated translations
are machine-translated drafts and still require native-speaker review before
claiming production linguistic quality.

## Spot the Difference pictures

Spot the Difference now has **96 picture pairs with five differences each**.
The 20 scenes with baked-in jigsaw seams have been removed from this game, along
with the previously retired 93 procedural animal/habitat scenes. Their assets
remain in the shared catalog for Jigsaw. Clean supplied pictures, the five
original HD animal/underwater pictures and all 21 named category pictures remain.

The first three levels are the champion salute, red-brushstroke wrestler and
jeweled wrestling mask. Levels 4–12 use the other clean recent pictures.
Levels 13–33 contain the DevOps categories; 34–50 contain the earlier clean scenes
and original HD artwork; 51–57 retain the first seven supplied reference pictures.
Levels 58–80 contain the 23 original
puzzle-book scenes, including a bakery, greenhouse, harbor, workshops, campsite,
library and aquarium shop. Levels **81–96** append 16 supplied nature pictures:
autumn leaves, moonlit trees, foxes, a canoe, dew, a stag, a bicycle, a tiger,
fishing, lilies, riverside deer and sunset scenes. The original 80 playable levels
retain their order and Picture A assets. Each picture is used only once.

Saved completions migrate from old level numbers to stable image asset IDs in
`spot_difference_completed_assets_v2`. The old list is retained, including
receipts for retired pictures, but is not reapplied after migration. Previously
earned points are untouched, and a completed picture never becomes a new reward
just because its number changes. Completed pictures remain replayable; the
screen opens the first unfinished level, not the highest historical number.

Picture B changes named scene objects: missing details, altered object colors,
and reversed patterns. The old five yellow/blue tint blobs are removed.
Object masks preserve outlines and texture rather than painting arbitrary spots.
Found rings appear only after a correct tap; hints briefly reveal one unfound
region. Pinch or use the zoom button to inspect both pictures together, then pan
either picture; the shared view resets when changing levels.

Each pair has five mapped difference regions. The artwork keeps its own aspect
ratio on phones and larger screens; taps and hint/found outlines use normalized
coordinates on either image. Existing level progress, 100-point first-clear
rewards and 20-point hints are preserved. Hints are disabled until both pictures
have loaded.
Every successful completion opens a dialog with **You earned 100 points!** and
**Next level**, plus **Levels** for the picker. Replays also show the dialog but
explicitly award no additional points. The last level offers the picker without
an out-of-range Next action. The popup appears only after progress and reward
operations succeed; save errors remain visible instead of showing success.
Paid hints still cost 20 points immediately and are not deducted a second time.
Run `flutter test test/spot_the_difference_game_test.dart test/jigsaw_puzzle_test.dart`
to check ordering, migration, replay protection, popup navigation and gameplay.

Regenerate with `python tool/generate_spot_pictures.py` (requires Pillow, numpy
and opencv-python-headless). Object edit recipes are in `tool/spot_scene_edits.py`;
the 23 original expansion crops are retained alongside the existing sources.
The nature batch has its own reviewed recipes, attachment references and crops in
`tool/spot_picture_sources/nature_sources.json`. Import those attachments once
with `--import-nature --levels 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209`;
subsequent rebuilds use retained source PNGs without requiring the attachments.
IDs 194–209 are stable manifest IDs, not the displayed Spot level numbers.
For clone edits, the fourth recipe field identifies a reviewed source point in
the same image; an optional fifth field selects the foreground pigment, so local
background texture replaces the named detail rather than a rectangular patch.
Object-color masks retain the picture's shading and outlines.
Run `python -m unittest discover -s tool -p test_spot_picture_edits.py` to check
object masking, background preservation, removals and invalid-edit rejection.
Jigsaw-seamed sources are marked `hasJigsawLines` in
`tool/spot_picture_sources/shared_sources.json`. Run the picture generator with
`--catalog-only` to refresh eligibility metadata without changing image pixels.
The retained reference crops are in `tool/spot_picture_sources/`; these are not
bundled as extra app assets. Run the generator with `--validate-only` to check
image uniqueness, independent changes and complete pixel-to-target coverage.
The initial `--import-references` option is only for the original attachment
paths. Source image publication rights must be confirmed before distributing
user-supplied artwork; no third-party image license is asserted here.
Twelve numbered PNG previews from the nature batch (1, 2, 3, 4, 5, 7, 8, 9,
10, 15, 16 and 18) carry Unsplash+ or Magnific watermarks. They are excluded,
not de-watermarked, pending licensed originals or confirmation of applicable rights.
The one-time `python tool/import_shared_game_pictures.py` imports the later
attachments into retained sources. Normal regeneration needs no attachments.
The kitten and clownfish have AI-restored source copies to remove obstructing
UI and restore the complete subject; other screenshots use illustration crops.

All game images are lossless PNGs with a **minimum 1080-pixel short edge**,
including every earlier Spot the Difference pair. Smaller sources are enlarged
with Lanczos resampling, not native-HD recovery: fine detail absent from the
screenshots cannot be restored by resizing. Cropping excludes numbered badges,
menus and buttons; screenshots with embedded puzzle lines are retained only for
Jigsaw, not offered as Spot the Difference levels. Provenance is recorded in the
source and output manifests.
The 21 category pictures are drawn at **native 1600 x 1600**, not enlarged
screenshots. Names come directly from the question catalog, with illustrative
cloud, code, infrastructure and automation motifs rather than official logos.
Run `python tool/generate_category_pictures.py` before the pair generator to
rebuild them. It requires Pillow and Arial/Consolas fonts from Windows Fonts;
`--font-dir` can select an equivalent installed font directory. The supplied
fantasy and DevOps-cycle pictures were AI-restored to complete missing regions
and remove puzzle seams/UI; house crops retain baked-in seams and limited
screenshot detail.

## Jigsaw pictures

Jigsaw now has **186** pictures. It keeps all **170** base pictures in their existing order, including the
procedural and jigsaw-seamed scenes retired from Spot the Difference. The 57
retained original Spot pictures
reuse these assets rather than duplicating files. Jigsaw's original first five
pictures, remaining level order, saved completion and rewards are unchanged.
Levels **171–186** append the same 16 nature Picture A assets as Spot levels
81–96, without duplicating them or adding the earlier 23 Spot-only expansion scenes.

Artwork lives in `assets/jigsaw/` and `assets/spot_difference/` and needs no
network access. Each level decodes one image shared by the preview and every piece,
preserving portrait and landscape aspect ratios, so the preview
matches the assembled board without stretching or losing the picture edges.
Loading failures show an explicit error and Retry instead of a substitute
picture. **Every level now uses standard rectangular grid cuts**, including the
levels that formerly used interlocking tabs. Levels 1–20 remain 3×3, 21–75 remain
4×4, and 76–186 use 5×5 grids. Preview and tile scaling preserve the source ratio
after accounting for cell spacing. Deterministic shuffles, fixed-piece highlighting,
saved completion/selection and first-clear rewards are unchanged.
Run `flutter test test/jigsaw_puzzle_test.dart` to verify assets and gameplay.

## Sound and game rewards

Settings includes a localized sound toggle and **Test sound** control in all
32 app languages. Five original WAV effects are bundled for offline playback;
Android uses game/media audio rather than system UI clicks. Muting stops the
current effect and cancels queued effects. Device volume, iOS silent mode and
browser audio permissions still apply. The sounds can be regenerated with
`python tool/generate_game_sounds.py`.

Word Guess, Find Words, Memory Match, Spot the Difference and Jigsaw award
100 points for a first level clear; replaying cleared puzzles does not pay again.
Snake and Ladders awards 100 points for a human win; restoring a finished game
does not award it again. Other non-level game payouts are unchanged.
Paid hints in Word Guess, Find Words and Spot the Difference cost 20 points
immediately, require sufficient balance, and are not deducted again from the
100-point completion reward. Hint purchases reduce the spendable balance,
not the gross earned-points counters or leaderboard totals.

## Welcome screen animation

The personalized greeting and localized welcome message enter with staggered
upward slides and fades, followed by a gentle five-second shimmer. The username
sits in a theme-colored badge; both lines wrap instead of scrolling or clipping
long names and translations. The shimmer follows the text direction in RTL
languages and uses the active light/dark color scheme.

Reduced-motion or accessible-navigation preferences show the greeting immediately
without movement. Greeting animations pause
when their route's tickers are disabled and dispose when the screen closes.
Sign-in, guest mode, quiz navigation and rewards are unchanged.
Run `flutter test test/welcome_greeting_test.dart test/welcome_celebrations_test.dart`
to check the animation, accessibility, localization and welcome layout.

The welcome logo uses the approved **moving-arrow preview**: eight blue arrow
sections carry PLAN, CODE, BUILD, TEST, RELEASE, DEPLOY, OPERATE and MONITOR
around the infinity route in a smooth **24-second circuit**. The pipeline keeps
its full 120-pixel source-coordinate width; only the arrow-shaped separator gaps
are thin (6 pixels). Each label is centered between its two separators and
moves at the same speed as its arrow. Letters follow the bends and reverse their
orientation on return curves. The return arm passes behind the forward arm.
The infinity layout and central DEV / OPS remain fixed, without scaling.
The existing username/message animation is independent and unchanged.

`assets/images/devops_logo.png` is untouched and still used by other screens.
A derived `devops_logo_pipe.png` removes only the baked-in stage glyphs; the
pipe colors, DEV / OPS and alpha are preserved. The animation now draws vector
arrow sections and clips their labels to those shapes, using only the center
DEV / OPS pixels from the derived image. The earlier `devops_logo_pipe_mask.png`
is retained for artwork validation but is no longer decoded by the animation.
`python tool/prepare_welcome_logo.py --validate-only` verifies both layers and
the original checksum; omit the flag to regenerate them (requires Pillow).

Everything is bundled offline with no new Flutter dependencies. Reduced motion
and accessible navigation show the original static logo. Arrow/text motion pauses
offscreen and when the app is inactive, and resumes from the same position.
Missing animation assets show an explicit error and Retry, not a substitute logo.
Run `flutter test test/animated_devops_logo_test.dart` for movement, fixed-pixel,
loop, lifecycle, semantics, resizing and asset-loading checks.

## Guided app tour

For the new question folder layout, offline checks, report files and release
checklist, see [the offline ATF guide](docs/OFFLINE_ATF_GUIDE.md).

The first category-screen visit offers a seven-step tour with highlighted
controls for search, quizzes, navigation, Learning, Games, Achievements and
Settings. Instructions follow the selected app language, including right-to-left
layout. Back, Next, Skip and Finish controls let users move at their own pace.
Finishing or skipping is remembered locally. **Settings > App tour** replays
the guide without resetting progress or bookmarks. Unlock notifications wait
until the tour ends.

## Saved Data

Open **Settings > Save data** to review bookmarked learning cards and quiz
questions. Use the bookmark button in Learning or in a quiz to save an item;
the saved-data screen can remove it. Bookmarks persist locally on the device
(including guest sessions); they are not cloud backups and Reset App Data
clears them.

Questions retain their original option order and show the correct answer with
a green background and a check icon. They reload in the selected app language.
Bookmarks identify questions by bank, set and position in the aligned language
files, not by translated text or shuffled quiz order. Reordering source banks
requires migrating these IDs; replacing a question in place updates its saved
content.

Learning translations are bundled offline in `assets/learning/cards_*.json`.
All 11 foreign-language catalogs (Spanish, French, German, Italian, Portuguese,
Arabic, Indonesian, Turkish, Russian, Japanese and Chinese) have all 1,000
learning cards available. English, Hindi, Marathi, Bengali, Assamese, Gujarati,
Kannada, Malayalam, Nepali, Odia, Punjabi, Tamil, Telugu and Urdu are also complete:
**25 languages have 1,000 cards each**.
Dogri, Konkani, Maithili, Manipuri, Sanskrit, Santali and Sindhi remain partial
and require qualified language review;
the full-catalog translation request
is **not complete**. Untranslated cards show an explicit notice rather than
silently displaying English. `assets/learning/coverage.json` tracks exact gaps.
Commands, examples and card IDs are preserved. New translations are drafts
and still require native-speaker review.

The regional pass adds 6,070 command descriptions across ten languages, after the
5,463-description foreign-language pass and earlier Spanish, Indonesian and
Bengali additions. Commands, flags
and example code are unchanged. Commands and examples render left-to-right even
when the surrounding card prose is right-to-left.
Concept content follows the current category/language/set question banks.
Copied English concept questions and demonstrably misaligned answers are
withheld with the existing unavailable message, not counted as translations.
Question-bank linguistic review and untranslated learning-screen controls remain
separate work; catalog availability alone does not certify complete localization.

Rebuild with `python translator/learning/build_catalogs.py`, then validate with
`python translator/learning/validate_catalogs.py`. Maintenance inputs and
the catalog builder are in `translator/learning/`; explicit command descriptions
are in `command_translations_*.json`. The builder reads all five nested question
sets, validates authored descriptions before writing, and never invokes Ollama.
Use `python translator/learning/validate_catalogs.py --require-foreign-complete`
to require all eleven foreign-language catalogs without treating paused
regional-language work as part of that completion gate.
Use `--require-all-complete` instead to gate completion across all 32 app
languages. It currently fails for the seven review-blocked languages rather
than treating missing cards as complete. Exact review requests are retained in
`build/remaining-card-review/`; back them up before running `flutter clean`.
Run `python -m unittest discover -s translator/learning -p test_catalogs.py`
for catalog-tool regressions. Run
`flutter test test/saved_data_test.dart` for bookmark persistence, settings
navigation, multilingual question/answer alignment and saved-card coverage.

The retained offline draft generator overwrites the 19 new ARBs, so do not
rerun it over manually reviewed translations without preserving those changes:

```text
python translator/generate_indian_ui_drafts.py
flutter gen-l10n
flutter test test/indian_localization_test.dart
```

After editing ARBs directly, run only the last two commands. The existing
Ollama translator remains in `translator/translate_l10n.py` for future use;
it requires a separately installed model. Generated locale metadata and ICU
placeholders are validated independently of linguistic review.

## Welcome Celebrations

The globe button on the welcome screen selects and saves a country/region for
national-day decorations. No country is inferred from language, sign-in or IP
address; without a selection, only global celebrations appear. National effects
are filtered by that exact country code and the user's local calendar date.
India displays a waving tricolour on 26 January and 15 August.

The offline calendar includes 249 country/region choices and dated national
observances where defined. Countries without an applicable national day have no
invented independence date. National/republic/foundation days retain their actual
names rather than being relabelled as independence days. Global observances
include Halloween, Gandhi Jayanti, International Day of Peace, sport/football/
basketball days, World Animal Day and World Wildlife Day. Buddha Purnima follows
the Indian Vaishakha full-moon rule using the existing lunar-calendar engine;
observance dates can vary between traditions.

Refresh the bundled national-day data annually with:

```text
python tools/update_national_days.py
```

The importer uses public-domain World Factbook data from
https://github.com/factbook/factbook.json and ISO country mappings from
https://github.com/datasets/country-codes. Year-specific Israeli Independence
Day dates use https://www.hebcal.com/home/developer-apis and span the generation
year minus one through ten years ahead. The bundled JSON records its sources
and generation date. Global sports dates follow UN observances; World Animal
Day is 4 October. Refreshing data requires internet; normal calendar use does not.

## Personal Points

The leaderboard currently shows My Progress only. The Universal view is retained
behind `_universalEnabled` in the leaderboard screen; prize advertising and
automatic daily-prize collection have been removed from that screen.

Quiz and game earnings are recorded separately when points are awarded. Existing
lifetime points, applied past rewards, and daily point history are unchanged.
Older earnings cannot be reliably assigned a source and are not retroactively
classified. Login bonuses, achievements and other non-quiz/non-game rewards still
count toward total and daily points, but not either source counter. Reward
questions launched from games count as game earnings.

## Refer And Earn

Referrals use the existing Google/Firebase sign-in and direct Firestore
transactions; no paid referral SDK, Firebase Dynamic Links, Cloud Functions or
scheduled jobs are required. A verified Google account receives a server-owned
code. A friend signs in, opens Refer & Earn, and manually enters that code once.
The code owner receives 1,000 in-app points after successful redemption.
Sharing/copying an invitation alone never earns points. These are in-app points,
not cash rewards, and this flow verifies accounts rather than app installations
or unique people.

Firestore rules atomically create the redemption receipt and increment the
inviter's balance. Self-referrals, code changes, repeat claims, inflated reward
amounts and direct balance edits are rejected. Code owners can refresh Refer &
Earn or My Progress to sync newly verified rewards; repeated refreshes do not
credit the same server balance again. Referral bonuses remain outside the quiz
and game source counters.

This can operate within Firebase's free tier, but is not unlimited free hosting.
The default Firestore database has quotas including 50,000 reads and 20,000 writes
per day, shared with the rest of the app. Security-rule lookups and transaction
retries also consume reads. Existing billing-plan overage rules still apply;
this implementation does not change billing. Check current limits at
https://firebase.google.com/docs/firestore/quotas. It does not prevent a person
from creating several Google accounts; App Check and additional abuse controls
may be appropriate at larger scale.

Run the retained backend security tests from the repository root (Firebase CLI,
Java and the functions development dependencies are required):

```text
npm --prefix functions install
firebase emulators:exec --only firestore --project demo-devops-referrals --config firebase.referral-tests.json "node --test functions/referral_rules.test.js"
```

The security suite skips without an emulator. To deploy only the rules, without
deploying the separate existing Cloud Functions:

```text
firebase deploy --only firestore:rules --project devops-quiz-13395 --non-interactive
```

The Firebase JavaScript packages used by the emulator tests are development-only.
Their current dependency tree reports five high-severity npm advisories via its
nested gRPC dependency. Review upstream patches before using this test toolchain
outside a local environment. The existing Functions runtime targets Node 22;
the local verification machine currently runs Node 24. The referral feature
does not deploy or run these JavaScript test packages in the Flutter app.
