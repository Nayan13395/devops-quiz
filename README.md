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

The language picker includes all 22 scheduled Indian languages: Assamese,
Bengali, Bodo, Dogri, Gujarati, Hindi, Kannada, Kashmiri, Konkani, Maithili,
Malayalam, Manipuri (Meitei Mayek), Marathi, Nepali, Odia, Punjabi, Sanskrit,
Santali (Ol Chiki), Sindhi, Tamil, Telugu and Urdu. Selected languages persist
between launches. The existing international languages remain available.

All 89 existing app-localization messages have entries in these bundles. The
19 newly added translations are offline drafts and require native-speaker
review before claiming production linguistic quality. This does not translate
hardcoded text in screens that do not yet use the localization API. Quiz
questions use their separate language assets and fall back to English when a
translation is unavailable.

Flutter's own controls use native framework translations where supported.
Unsupported control locales fall back to English, or Urdu for right-to-left
scripts. Kashmiri, Sindhi and Urdu retain right-to-left layout. Font/glyph
coverage depends on the platform; verify Meitei Mayek and Ol Chiki on release
devices.

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
