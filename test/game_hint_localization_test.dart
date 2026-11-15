import 'dart:convert';
import 'dart:io';

import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/l10n/game_hint_localizations.dart';
import 'package:devops_quiz/language_provider.dart';
import 'package:devops_quiz/screens/command_match_screen.dart';
import 'package:devops_quiz/screens/word_guess_levels_screen.dart';
import 'package:devops_quiz/services/word_guess_level_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget _localizedGame(String code, Widget child) {
  return MaterialApp(
    locale: Locale(code),
    supportedLocales: AppLocalizations.supportedLocales,
    localizationsDelegates: appLocalizationDelegates,
    home: child,
  );
}

final Map<String, RegExp> _nativeScripts = {
  for (final code in ['hi', 'mr', 'doi', 'gom', 'mai', 'ne', 'sa'])
    code: RegExp(r'[\u0900-\u097f]'),
  for (final code in ['ar', 'sd', 'ur']) code: RegExp(r'[\u0600-\u06ff]'),
  for (final code in ['bn', 'as']) code: RegExp(r'[\u0980-\u09ff]'),
  'gu': RegExp(r'[\u0a80-\u0aff]'),
  'kn': RegExp(r'[\u0c80-\u0cff]'),
  'ml': RegExp(r'[\u0d00-\u0d7f]'),
  'or': RegExp(r'[\u0b00-\u0b7f]'),
  'pa': RegExp(r'[\u0a00-\u0a7f]'),
  'ta': RegExp(r'[\u0b80-\u0bff]'),
  'te': RegExp(r'[\u0c00-\u0c7f]'),
  'mni': RegExp(r'[\uabc0-\uabff]'),
  'sat': RegExp(r'[\u1c50-\u1c7f]'),
  'ru': RegExp(r'[\u0400-\u04ff]'),
  'ja': RegExp(r'[\u3040-\u30ff\u4e00-\u9fff]'),
  'zh': RegExp(r'[\u4e00-\u9fff]'),
};

final RegExp _preservedTokens = RegExp(
  r'(?<![\w-])(?:Ansible|AWS|Azure|Bash|Dockerfile|Docker|GCP|GitOps|Git|IBM|'
  r'JavaScript|Jenkins|Kubernetes|Linux|Oracle|Perl|PowerShell|Python|Ruby|'
  r'Terraform|Google|Microsoft|Amazon|HashiCorp|systemd|API|HTTP|IPv4|IPv6|IP|'
  r'ICMP|TLS|DNS|TCP|UDP|JSON|NoSQL|MySQL|PostgreSQL|SQL|XML|DDoS|URL|CI|ETL|'
  r'JVM|Control-C)\b',
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'all 500 Word Guess hints and 30 Command Match meanings localize across 32 locales while preserving answer/command tokens',
    () async {
      final levels = WordGuessLevelService.levels;
      final pairs = CommandMatchScreen.commandPairs;
      expect(levels, hasLength(500));
      expect(pairs, hasLength(30));

      for (final level in levels) {
        expect(RegExp(r'^[A-Z]{3,14}$').hasMatch(level.word), isTrue);
        expect(level.hint.trim(), isNotEmpty);
      }
      for (final (command, meaning) in pairs) {
        expect(command.trim(), isNotEmpty);
        expect(meaning.trim(), isNotEmpty);
      }

      final englishArb =
          jsonDecode(File('lib/l10n/app_en.arb').readAsStringSync())
              as Map<String, dynamic>;
      final hintKeys = englishArb.keys
          .where((key) => key.startsWith('gameHint'))
          .toList();
      expect(hintKeys, hasLength(530));

      for (final language in LanguageProvider.availableLanguages) {
        final code = language.code;
        final l10n = await AppLocalizations.delegate.load(Locale(code));
        final script = _nativeScripts[code];

        for (final (command, meaning) in pairs) {
          final localized = gameHintTextForL10n(l10n, meaning);
          expect(
            localized.trim(),
            isNotEmpty,
            reason: '$code command "$command"',
          );
          if (code == 'en') {
            expect(localized, meaning);
          } else {
            expect(
              localized,
              isNot(meaning),
              reason: '$code command "$command" meaning remained English',
            );
            if (script != null) {
              expect(
                script.hasMatch(localized),
                isTrue,
                reason: '$code command "$command" lacks native script',
              );
            }
          }
          for (final match in _preservedTokens.allMatches(meaning)) {
            final token = match.group(0)!;
            expect(
              localized,
              contains(token),
              reason: '$code command "$command" lost token $token',
            );
          }
        }

        for (final level in levels) {
          final localized = level.localizedHintForL10n(l10n);
          expect(
            localized.trim(),
            isNotEmpty,
            reason: '$code word "${level.word}"',
          );
          if (code == 'en') {
            expect(localized, level.hint);
          } else {
            expect(
              localized,
              isNot(level.hint),
              reason: '$code word "${level.word}" hint remained English',
            );
            if (script != null) {
              expect(
                script.hasMatch(localized),
                isTrue,
                reason: '$code word "${level.word}" lacks native script',
              );
            }
          }
          for (final match in _preservedTokens.allMatches(level.hint)) {
            final token = match.group(0)!;
            expect(
              localized,
              contains(token),
              reason: '$code word "${level.word}" lost token $token',
            );
          }
        }
      }
    },
  );

  for (final code in ['en', 'hi', 'ar', 'es', 'ja', 'sat', 'mni']) {
    testWidgets(
      'Word Guess renders localized hints and remains solvable in $code',
      (tester) async {
        SharedPreferences.setMockInitialValues({
          'languageCode': code,
          'game_sound_enabled': false,
        });
        tester.view.physicalSize = const Size(1080, 1920);
        tester.view.devicePixelRatio = 1.0;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);

        final l10n = await AppLocalizations.delegate.load(Locale(code));
        final level1Hint = WordGuessLevelService.levels[0].localizedHintForL10n(
          l10n,
        );
        final level2Hint = WordGuessLevelService.levels[1].localizedHintForL10n(
          l10n,
        );

        await tester.pumpWidget(
          _localizedGame(code, const WordGuessLevelsScreen()),
        );
        await tester.pumpAndSettle();

        expect(find.text(level1Hint), findsOneWidget);
        if (code != 'en') {
          expect(
            find.text(WordGuessLevelService.levels[0].hint),
            findsNothing,
          );
        }

        // Level 1 word is GIT; slots 0 ('G') and 2 ('T') are pre-revealed, leaving 'I' to enter and submit.
        await tester.tap(find.byKey(const ValueKey('word-guess-key-I')));
        await tester.pump();
        await tester.tap(find.byKey(const ValueKey('word-guess-enter')));
        await tester.pumpAndSettle();

        // Advance to level 2 via the completion dialog's Next Level button.
        final nextLevelButton = find.text(l10n.gameUiNextLevel254fd73);
        expect(nextLevelButton, findsOneWidget);
        await tester.tap(nextLevelButton);
        await tester.pumpAndSettle();

        expect(find.text(level2Hint), findsOneWidget);
        expect(level2Hint, contains('Amazon'));
      },
    );

    testWidgets(
      'Command Match renders localized descriptions, preserves commands, and matches pairs in $code',
      (tester) async {
        SharedPreferences.setMockInitialValues({
          'languageCode': code,
          'game_sound_enabled': false,
        });
        tester.view.physicalSize = const Size(1080, 1920);
        tester.view.devicePixelRatio = 1.0;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);

        final l10n = await AppLocalizations.delegate.load(Locale(code));
        await tester.pumpWidget(
          _localizedGame(code, const CommandMatchScreen()),
        );
        await tester.pumpAndSettle();

        // Find which command pairs are in the active round (5 pairs per round).
        final visiblePairs = <(String, String, String)>[];
        for (final (command, meaning) in CommandMatchScreen.commandPairs) {
          if (find.text(command).evaluate().isNotEmpty) {
            final localizedMeaning = gameHintTextForL10n(l10n, meaning);
            expect(
              find.text(localizedMeaning),
              findsOneWidget,
              reason: '$code missing localized meaning for $command',
            );
            if (code != 'en') {
              expect(find.text(meaning), findsNothing);
            }
            visiblePairs.add((command, meaning, localizedMeaning));
          }
        }
        expect(visiblePairs, hasLength(5));

        // Match all 5 visible command pairs with their localized meanings to complete round 1.
        for (final (cmd, _, localizedMeaning) in visiblePairs) {
          await tester.tap(find.text(cmd));
          await tester.pumpAndSettle();
          await tester.tap(find.text(localizedMeaning));
          await tester.pumpAndSettle();
        }

        expect(find.text('⭐ 50'), findsOneWidget);
      },
    );
  }
}
