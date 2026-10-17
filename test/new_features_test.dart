import 'dart:convert';

import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/language_provider.dart';
import 'package:devops_quiz/models/app_theme.dart';
import 'package:devops_quiz/models/question.dart';
import 'package:devops_quiz/screens/certificates_screen.dart';
import 'package:devops_quiz/screens/arrow_puzzle_screen.dart';
import 'package:devops_quiz/screens/chess_screen.dart';
import 'package:devops_quiz/screens/connect_four_screen.dart';
import 'package:devops_quiz/screens/command_match_screen.dart';
import 'package:devops_quiz/screens/games_screen.dart';
import 'package:devops_quiz/screens/ludo_game_screen.dart';
import 'package:devops_quiz/screens/port_master_screen.dart';
import 'package:devops_quiz/screens/tic_tac_toe_screen.dart';
import 'package:devops_quiz/screens/true_false_blitz_screen.dart';
import 'package:devops_quiz/screens/snake_ladders_screen.dart';
import 'package:devops_quiz/screens/word_guess_levels_screen.dart';
import 'package:devops_quiz/services/achievement_service.dart';
import 'package:devops_quiz/services/arrow_puzzle_service.dart';
import 'package:devops_quiz/services/certificate_service.dart';
import 'package:devops_quiz/services/daily_login_bonus_service.dart';
import 'package:devops_quiz/services/festival_calendar_service.dart';
import 'package:devops_quiz/services/in_app_notification_service.dart';
import 'package:devops_quiz/services/question_service.dart';
import 'package:devops_quiz/services/rate_prompt_service.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:devops_quiz/services/streak_service.dart';
import 'package:devops_quiz/services/whats_new_service.dart';
import 'package:devops_quiz/services/word_guess_level_service.dart';
import 'package:devops_quiz/widgets/festival_celebration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget gameApp(Widget home, {double textScale = 1.3}) {
  return MaterialApp(
    builder: (context, child) => MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaler: TextScaler.linear(textScale)),
      child: child!,
    ),
    home: home,
  );
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  // ==========================================================
  // QUESTION DATA
  // ==========================================================

  test(
    'every set has 25 unique aligned questions in English, Hindi, and Marathi',
    () async {
      final service = QuestionService();
      final banks = <String, Map<String, List<Question>>>{};

      for (final language in ['en', 'hi', 'mr']) {
        final categories = <String, List<Question>>{};
        for (final category in QuestionService.categoryFiles.keys) {
          final questions = await service.loadQuestions(
            Locale(language),
            category,
          );
          categories[category] = questions;

          for (int set = 1; set <= QuestionService.setsPerCategory; set++) {
            final setQuestions = questions
                .where((question) => question.set == set)
                .toList();
            expect(
              setQuestions,
              hasLength(25),
              reason: '$language $category set $set',
            );

            final normalized = setQuestions
                .map(
                  (question) => question.question
                      .trim()
                      .replaceAll(RegExp(r'\s+'), ' ')
                      .toLowerCase(),
                )
                .toSet();
            expect(
              normalized,
              hasLength(25),
              reason: '$language $category set $set has duplicate questions',
            );

            for (final question in setQuestions) {
              expect(
                question.options,
                hasLength(4),
                reason: '$language $category set $set',
              );
              expect(
                question.options,
                contains(question.answer),
                reason: '$language $category set $set',
              );
            }
          }
        }
        banks[language] = categories;
      }

      for (final category in QuestionService.categoryFiles.keys) {
        final english = banks['en']![category]!;
        final hindi = banks['hi']![category]!;
        final marathi = banks['mr']![category]!;

        for (int index = 0; index < english.length; index++) {
          expect(hindi[index].category, english[index].category);
          expect(hindi[index].set, english[index].set);
          expect(marathi[index].category, english[index].category);
          expect(marathi[index].set, english[index].set);
          expect(
            hindi[index].options.indexOf(hindi[index].answer),
            english[index].options.indexOf(english[index].answer),
          );
          expect(
            marathi[index].options.indexOf(marathi[index].answer),
            english[index].options.indexOf(english[index].answer),
          );
        }
      }
    },
  );

  test('Word Guess levels are unique and ordered from easy to hard', () {
    final levels = WordGuessLevelService.levels;
    final words = levels.map((level) => level.word).toSet();

    expect(levels, hasLength(100));
    expect(words, hasLength(100));
    expect(levels.first.word, 'GIT');
    expect(levels[1].word, 'AWS');
    expect(levels.last.word, 'KUBERNETES');
    expect(levels.first.difficulty, WordGuessDifficulty.easy);
    expect(levels[33].difficulty, WordGuessDifficulty.easy);
    expect(levels[34].difficulty, WordGuessDifficulty.medium);
    expect(levels[65].difficulty, WordGuessDifficulty.medium);
    expect(levels[66].difficulty, WordGuessDifficulty.medium);
    expect(levels[67].difficulty, WordGuessDifficulty.hard);
    expect(levels.last.difficulty, WordGuessDifficulty.hard);
    expect(levels.every((level) => level.hint.isNotEmpty), isTrue);
  });

  testWidgets('Word Guess advances and awards 100 points without hints', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(
      gameApp(const WordGuessLevelsScreen(), textScale: 1),
    );
    await tester.pumpAndSettle();

    expect(find.text('Level 1/100'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('word-guess-key-G')));
    await tester.tap(find.byKey(const ValueKey('word-guess-key-I')));
    await tester.tap(find.byKey(const ValueKey('word-guess-key-T')));
    await tester.tap(find.byKey(const ValueKey('word-guess-enter')));
    await tester.pumpAndSettle();

    expect(find.text('Level 1 Complete!'), findsOneWidget);
    expect(await PointService.getTotalPoints(), 100);
    await tester.tap(find.text('Next Level'));
    await tester.pumpAndSettle();
    expect(find.text('Level 2/100'), findsOneWidget);
  });

  testWidgets('Word Guess hint reveals a letter and deducts 20 points', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(
      gameApp(const WordGuessLevelsScreen(), textScale: 1),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const ValueKey('word-guess-hint')));
    await tester.tap(find.byKey(const ValueKey('word-guess-key-I')));
    await tester.tap(find.byKey(const ValueKey('word-guess-key-T')));
    await tester.tap(find.byKey(const ValueKey('word-guess-enter')));
    await tester.pumpAndSettle();

    expect(find.text('Level 1 Complete!'), findsOneWidget);
    expect(
      find.textContaining('You earned 80 points after 1 hint.'),
      findsOneWidget,
    );
    expect(await PointService.getTotalPoints(), 80);
  });

  test(
    'Linux Set 5 has 25 unique questions not repeated in earlier sets',
    () async {
      final data =
          jsonDecode(
                await rootBundle.loadString(
                  'assets/questions/Linux/linux_en.json',
                ),
              )
              as List;
      final questions = data.cast<Map<String, dynamic>>();
      String normalize(String question) =>
          question.trim().replaceAll(RegExp(r'\s+'), ' ').toLowerCase();
      final setFive = questions.where((question) => question['set'] == 5);
      final setFiveQuestions = setFive
          .map((question) => normalize(question['question'] as String))
          .toSet();
      final earlierQuestions = questions
          .where((question) => question['set'] != 5)
          .map((question) => normalize(question['question'] as String))
          .toSet();

      expect(setFive, hasLength(25));
      expect(setFiveQuestions, hasLength(25));
      expect(setFiveQuestions.intersection(earlierQuestions), isEmpty);
    },
  );

  test('Tap Away generates 100 unique levels that can all be cleared', () {
    final levels = ArrowPuzzleService.levels;

    expect(levels, hasLength(100));
    expect(levels.map((level) => level.signature).toSet(), hasLength(100));

    for (final level in levels) {
      expect(level.size, inInclusiveRange(5, 7));
      final removed = <int>{};

      while (removed.length < level.size * level.size) {
        final available = [
          for (int cell = 0; cell < level.size * level.size; cell++)
            if (level.canRemove(cell, removed)) cell,
        ];

        expect(available, isNotEmpty, reason: 'Level ${level.number} locked');
        removed.add(available.first);
      }

      expect(removed.length, level.size * level.size);
    }
  });

  test('arrow levels unlock sequentially and award 100 points once', () async {
    SharedPreferences.setMockInitialValues({});

    expect(await ArrowPuzzleService.loadSolvedLevels(), isEmpty);
    expect(ArrowPuzzleService.isUnlocked(1, {}), isTrue);
    expect(ArrowPuzzleService.isUnlocked(2, {}), isFalse);

    expect(await ArrowPuzzleService.completeLevel(2), isFalse);
    expect(await ArrowPuzzleService.completeLevel(1), isTrue);
    expect(await ArrowPuzzleService.completeLevel(2), isTrue);
    expect(await PointService.getTotalPoints(), 200);
    expect(ArrowPuzzleService.isUnlocked(3, {1, 2}), isTrue);
    expect(ArrowPuzzleService.isUnlocked(4, {1, 2}), isFalse);

    expect(await ArrowPuzzleService.completeLevel(2), isFalse);
    expect(await PointService.getTotalPoints(), 200);
    expect(await ArrowPuzzleService.completeLevel(101), isFalse);
  });

  testWidgets('Tap Away fits phone and desktop viewports', (tester) async {
    for (final size in [
      const Size(320, 568),
      const Size(360, 640),
      const Size(844, 390),
      const Size(1280, 800),
    ]) {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = size;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      SharedPreferences.setMockInitialValues({});

      await tester.pumpWidget(gameApp(const ArrowPuzzleScreen(), textScale: 1));
      await tester.pumpAndSettle();

      expect(find.text('Level 1'), findsOneWidget, reason: '$size');
      expect(
        find.text('Tap an arrow that can escape the board.'),
        findsOneWidget,
        reason: '$size',
      );
      expect(tester.takeException(), isNull, reason: '$size');
    }
  });

  testWidgets('clearing a board awards points and unlocks the next level', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(gameApp(const ArrowPuzzleScreen(), textScale: 1));
    await tester.pumpAndSettle();

    final level = ArrowPuzzleService.levels.first;
    final removed = <int>{};

    while (removed.length < level.size * level.size) {
      final cell = List<int>.generate(
        level.size * level.size,
        (i) => i,
      ).firstWhere((i) => level.canRemove(i, removed));
      final tile = find.byKey(ValueKey<String>('arrow-cell-$cell'));

      await tester.ensureVisible(tile);
      await tester.tap(tile);
      await tester.pump(const Duration(milliseconds: 240));
      removed.add(cell);
    }

    await tester.pumpAndSettle();

    expect(find.text('Level 1 cleared!'), findsOneWidget);
    expect(await PointService.getTotalPoints(), 100);

    await tester.tap(find.text('Next level'));
    await tester.pumpAndSettle();

    expect(find.text('Level 2'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('tapping a blocked arrow costs a heart', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(gameApp(const ArrowPuzzleScreen(), textScale: 1));
    await tester.pumpAndSettle();

    final level = ArrowPuzzleService.levels.first;
    final available = level.availableArrows.toSet();
    final blocked = List<int>.generate(
      level.size * level.size,
      (i) => i,
    ).firstWhere((cell) => !available.contains(cell));

    await tester.tap(find.byKey(ValueKey<String>('arrow-cell-$blocked')));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    expect(
      find.text('That arrow is blocked. You lost a heart.'),
      findsOneWidget,
    );
    expect(
      tester
          .widget<Icon>(find.byKey(const ValueKey<String>('arrow-life-2')))
          .color,
      isNot(Theme.of(tester.element(find.byType(Scaffold))).colorScheme.error),
    );
    expect(tester.takeException(), isNull);
  });

  test('untranslated sets and languages fall back to English', () async {
    final hindi = await QuestionService().loadQuestions(
      const Locale('hi'),
      'Linux',
    );
    final spanish = await QuestionService().loadQuestions(
      const Locale('es'),
      'Linux',
    );

    expect(hindi.where((q) => q.set == 1), isNotEmpty);
    expect(hindi.where((q) => q.set == 5), isNotEmpty);
    expect(spanish.where((q) => q.set == 5), isNotEmpty);
  });

  test('all supported UI locales are recognized for question banks', () async {
    final supported = LanguageProvider.languages.map(
      (language) => language.code,
    );

    for (final code in supported) {
      expect(
        QuestionService.questionLanguage(Locale(code)),
        code,
        reason: code,
      );
    }
    expect(QuestionService.questionLanguage(const Locale('xx')), 'en');

    final devOpsQuestions = await QuestionService().loadQuestions(
      const Locale('es'),
      'DevOps',
    );
    expect(
      devOpsQuestions.map((question) => question.category).toSet(),
      hasLength(21),
    );
  });

  test('remaining 19 scheduled Indian languages are registered', () {
    const scheduledIndian = {
      'as',
      'bn',
      'brx',
      'doi',
      'gu',
      'hi',
      'kn',
      'ks',
      'gom',
      'mai',
      'ml',
      'mni',
      'mr',
      'ne',
      'or',
      'pa',
      'sa',
      'sat',
      'sd',
      'ta',
      'te',
      'ur',
    };
    final registered = LanguageProvider.languages
        .map((language) => language.code)
        .toSet();

    expect(scheduledIndian.difference(registered), isEmpty);
    expect(
      QuestionService.supportedQuestionLanguages,
      containsAll(scheduledIndian),
    );
    expect(scheduledIndian.difference({'hi', 'mr', 'bn'}), hasLength(19));
    expect(
      scheduledIndian
          .difference({'hi', 'mr', 'bn'})
          .every(LanguageProvider.isUiAvailable),
      isFalse,
    );
  });

  test('daily quiz mixes all 21 categories and is stable per day', () async {
    final pool = await QuestionService().loadQuestions(
      const Locale('en'),
      'DailyQuiz',
    );

    final day = DateTime(2026, 10, 4);
    final quiz = QuestionService.buildDailyQuiz(pool, date: day);

    expect(quiz, hasLength(25));
    expect(quiz.map((q) => q.question).toSet(), hasLength(25));
    expect(
      quiz.map((q) => q.category).toSet().length,
      greaterThanOrEqualTo(21),
    );

    final again = QuestionService.buildDailyQuiz(pool, date: day);
    expect(again.map((q) => q.question), quiz.map((q) => q.question));

    final other = QuestionService.buildDailyQuiz(
      pool,
      date: DateTime(2026, 10, 5),
    );
    expect(other.map((q) => q.question), isNot(quiz.map((q) => q.question)));
  });

  // ==========================================================
  // CERTIFICATES
  // ==========================================================

  test('certificate is issued once, when the fifth set is finished', () async {
    SharedPreferences.setMockInitialValues({});

    for (int set = 1; set <= 4; set++) {
      expect(
        await CertificateService.recordSetCompletion(
          category: 'Linux',
          setNumber: set,
          score: 10,
          totalQuestions: 15,
        ),
        isNull,
      );
    }

    expect((await CertificateService.progressFor('Linux')).keys, [1, 2, 3, 4]);
    expect(await CertificateService.certificateCount(), 0);

    final info = await CertificateService.recordSetCompletion(
      category: 'Linux',
      setNumber: 5,
      score: 15,
      totalQuestions: 15,
    );

    expect(info, isNotNull);
    expect(info!.category, 'Linux');
    expect(info.certificateId, startsWith('DQ-LIN-'));
    expect(info.averagePercent, 74);
    expect(await CertificateService.certificateCount(), 1);

    // Replaying a set keeps the best score and never re-issues.
    expect(
      await CertificateService.recordSetCompletion(
        category: 'Linux',
        setNumber: 5,
        score: 1,
        totalQuestions: 15,
      ),
      isNull,
    );
    expect((await CertificateService.progressFor('Linux'))[5], 100);
    expect(await CertificateService.totalSetsCompleted(), 5);
  });

  test('sets outside a category are not recorded', () async {
    SharedPreferences.setMockInitialValues({});

    for (final (category, set) in [
      ('DailyQuiz', 0),
      ('DevOps', 0),
      ('Linux', 6),
    ]) {
      expect(
        await CertificateService.recordSetCompletion(
          category: category,
          setNumber: set,
          score: 5,
          totalQuestions: 5,
        ),
        isNull,
      );
    }

    expect(await CertificateService.totalSetsCompleted(), 0);
  });

  testWidgets('certificates screen shows progress and the earned certificate', (
    tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 568);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    SharedPreferences.setMockInitialValues({});

    for (int set = 1; set <= 5; set++) {
      await CertificateService.recordSetCompletion(
        category: 'Docker',
        setNumber: set,
        score: 12,
        totalQuestions: 15,
      );
    }
    await CertificateService.recordSetCompletion(
      category: 'Git',
      setNumber: 1,
      score: 12,
      totalQuestions: 15,
    );

    await tester.pumpWidget(gameApp(const CertificatesScreen()));
    await tester.pumpAndSettle();

    expect(find.text('1 of 21 certificates earned'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('View certificate'),
      200,
      scrollable: find.byType(Scrollable).first,
    );
    expect(find.text('View certificate'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('certificate preview fits phone and desktop screens', (
    tester,
  ) async {
    final info = CertificateInfo(
      category: 'Kubernetes',
      certificateId: 'DQ-KUB-20261004-1234',
      issuedOn: DateTime(2026, 10, 4),
      averagePercent: 91,
    );

    for (final size in [const Size(320, 568), const Size(1280, 800)]) {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = size;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      await tester.pumpWidget(
        gameApp(CertificateDetailScreen(info: info, holderName: 'Asha Patil')),
      );
      await tester.pumpAndSettle();

      expect(find.text('Asha Patil'), findsOneWidget);
      expect(find.text('Download PDF'), findsOneWidget);
      expect(tester.takeException(), isNull, reason: '$size');
    }
  });

  // ==========================================================
  // RATE PROMPT, UPDATE AND NEW-FEATURE NOTIFICATIONS
  // ==========================================================

  test(
    'rating is requested after two quizzes until the user answers',
    () async {
      SharedPreferences.setMockInitialValues({'quiz_count': 1});
      expect(await RatePromptService.shouldPrompt(), isFalse);
      expect(await RatePromptService.isRatingPending(), isFalse);

      SharedPreferences.setMockInitialValues({'quiz_count': 2});
      expect(await RatePromptService.shouldPrompt(), isTrue);
      expect(await RatePromptService.isRatingPending(), isTrue);

      SharedPreferences.setMockInitialValues({
        'quiz_count': 5,
        'rate_prompt_last_count': 2,
      });
      expect(await RatePromptService.shouldPrompt(), isFalse);

      SharedPreferences.setMockInitialValues({
        'quiz_count': 12,
        'rate_prompt_last_count': 2,
      });
      expect(await RatePromptService.shouldPrompt(), isTrue);

      await RatePromptService.markRated();
      expect(await RatePromptService.shouldPrompt(), isFalse);
      expect(await RatePromptService.isRatingPending(), isFalse);
    },
  );

  test(
    'in-app notifications include update, rating and certificates',
    () async {
      SharedPreferences.setMockInitialValues({
        'quiz_count': 3,
        'update_available_version': '9.9.9',
      });

      for (int set = 1; set <= 5; set++) {
        await CertificateService.recordSetCompletion(
          category: 'Ansible',
          setNumber: set,
          score: 9,
          totalQuestions: 10,
        );
      }

      final notifications = await InAppNotificationService.getNotifications();
      final ids = notifications.map((n) => n.id).toSet();

      expect(
        ids,
        containsAll(<String>[
          'app_update_9.9.9',
          'rate_app_v1',
          'certificate_Ansible',
          'certificates_v1',
          'new_sets_v1',
          'board_games_v1',
          'themes_v2',
          'languages_v1',
          'milestones_v1',
          'whats_new_v1102',
        ]),
      );
      expect(
        notifications
            .singleWhere((n) => n.id == 'app_update_9.9.9')
            .actionRoute,
        'play_store',
      );

      // Without an update or rating request those entries are not listed.
      SharedPreferences.setMockInitialValues({});
      final plain = (await InAppNotificationService.getNotifications()).map(
        (n) => n.id,
      );
      expect(plain.any((id) => id.startsWith('app_update_')), isFalse);
      expect(plain, isNot(contains('rate_app_v1')));
    },
  );

  test('every notification action has a handler route', () async {
    SharedPreferences.setMockInitialValues({'quiz_count': 3});

    const handled = {
      'claim_daily_reward',
      'daily_quiz',
      'games',
      'lucky_slots',
      'scripting',
      'certificates',
      'categories',
      'themes',
      'settings',
      'achievements',
      'whats_new',
      'rate_app',
      'play_store',
    };

    for (final n in await InAppNotificationService.getNotifications()) {
      if (n.actionRoute != null) {
        expect(handled, contains(n.actionRoute), reason: n.id);
      }
    }
  });

  test('claimed daily reward stays visible until the user reads it', () async {
    SharedPreferences.setMockInitialValues({});

    final bonus = await DailyLoginBonusService.claimDailyBonus();
    expect(bonus, isNotNull);

    final unread = await InAppNotificationService.getUnreadNotifications();
    final reward = unread.singleWhere(
      (notification) => notification.title == 'Daily Reward Collected!',
    );

    expect(reward.message, contains('$bonus points'));
    expect(reward.actionRoute, isNull);

    await InAppNotificationService.markAsRead(reward.id);
    expect(await InAppNotificationService.isRead(reward.id), isTrue);
    expect(
      (await InAppNotificationService.getUnreadNotifications()).any(
        (notification) => notification.id == reward.id,
      ),
      isFalse,
    );
  });

  test('streak reminder eligibility excludes already-broken streaks', () async {
    final today = DateTime(2026, 10, 16);

    SharedPreferences.setMockInitialValues({
      'current_streak': 5,
      'last_open_date': today.toIso8601String(),
    });
    expect(await StreakService.hasStreakToSave(date: today), isTrue);

    SharedPreferences.setMockInitialValues({
      'current_streak': 5,
      'last_open_date': today
          .subtract(const Duration(days: 1))
          .toIso8601String(),
    });
    expect(await StreakService.hasStreakToSave(date: today), isTrue);

    SharedPreferences.setMockInitialValues({
      'current_streak': 5,
      'last_open_date': today
          .subtract(const Duration(days: 2))
          .toIso8601String(),
    });
    expect(await StreakService.hasStreakToSave(date: today), isFalse);

    SharedPreferences.setMockInitialValues({
      'current_streak': 0,
      'last_open_date': today.toIso8601String(),
    });
    expect(await StreakService.hasStreakToSave(date: today), isFalse);
  });

  test(
    'festival windows follow the Indian calendar and expire on schedule',
    () {
      final windows = FestivalCalendarService.windowsForYear(2026);
      final diwali = windows.singleWhere(
        (window) => window.kind == FestivalKind.diwali,
      );
      final ganapati = windows.singleWhere(
        (window) => window.kind == FestivalKind.ganapati,
      );
      final navratri = windows.singleWhere(
        (window) => window.kind == FestivalKind.navratri,
      );

      expect(diwali.endsOn.difference(diwali.startsOn).inDays + 1, 5);
      expect(ganapati.endsOn.difference(ganapati.startsOn).inDays + 1, 10);
      expect(navratri.endsOn.difference(navratri.startsOn).inDays + 1, 9);

      for (final window in windows) {
        expect(
          FestivalCalendarService.activeOn(window.startsOn)?.kind,
          window.kind,
        );
        expect(
          FestivalCalendarService.activeOn(window.endsOn)?.kind,
          window.kind,
        );
        expect(
          FestivalCalendarService.activeOn(
            window.endsOn.add(const Duration(days: 1)),
          )?.kind,
          isNot(window.kind),
        );
      }

      expect(
        FestivalCalendarService.activeOn(DateTime.utc(2026, 6, 1)),
        isNull,
      );
    },
  );

  testWidgets('festival artwork does not block Welcome controls', (
    tester,
  ) async {
    final diwali = FestivalCalendarService.windowsForYear(
      2026,
    ).singleWhere((window) => window.kind == FestivalKind.diwali);
    for (final size in [const Size(320, 568), const Size(1280, 800)]) {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = size;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      var tapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Stack(
              children: [
                Positioned.fill(child: FestivalCelebration(window: diwali)),
                Center(
                  child: TextButton(
                    onPressed: () => tapped = true,
                    child: const Text('Start'),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      await tester.pump(const Duration(milliseconds: 250));
      await tester.tap(find.text('Start'));
      await tester.pump();

      expect(tapped, isTrue);
      expect(tester.takeException(), isNull);
    }
  });

  test('release highlights are shown once per release', () async {
    SharedPreferences.setMockInitialValues({});

    expect(await WhatsNewService.shouldShowRelease(), isTrue);
    await WhatsNewService.markReleaseShown();
    expect(await WhatsNewService.shouldShowRelease(), isFalse);

    expect(await WhatsNewService.isFeatureNew(WhatsNewService.games), isTrue);
    await WhatsNewService.markFeatureSeen(WhatsNewService.games);
    expect(await WhatsNewService.isFeatureNew(WhatsNewService.games), isFalse);
    expect(await WhatsNewService.isFeatureNew(WhatsNewService.themes), isTrue);
  });

  // ==========================================================
  // MILESTONES
  // ==========================================================

  test('new milestones unlock from quiz, set and certificate counts', () async {
    SharedPreferences.setMockInitialValues({'quiz_count': 24});

    for (int set = 1; set <= 5; set++) {
      await CertificateService.recordSetCompletion(
        category: 'Python',
        setNumber: set,
        score: 20,
        totalQuestions: 25,
      );
    }

    final unlocked = await AchievementService.checkAchievements(
      score: 1,
      totalQuestions: 2,
    );
    final ids = unlocked.map((a) => a.id);

    expect(ids, containsAll(<String>['quiz_25', 'sets_5', 'cert_1']));
    expect(ids, isNot(contains('quiz_50')));

    final all = await AchievementService.getAchievements();
    expect(all.length, greaterThan(40));
    expect(all.singleWhere((a) => a.id == 'quiz_50').current, 25);
  });

  // ==========================================================
  // THEMES AND LANGUAGES
  // ==========================================================

  test('every theme type has exactly one theme definition', () {
    expect(AppThemes.all.length, AppThemeType.values.length);
    expect(
      AppThemes.all.map((t) => t.type).toSet(),
      AppThemeType.values.toSet(),
    );
    expect(
      AppThemes.all.map((t) => t.name).toSet(),
      hasLength(AppThemes.all.length),
    );

    for (final type in [
      AppThemeType.sakura,
      AppThemeType.sunset,
      AppThemeType.coffee,
      AppThemeType.aurora,
      AppThemeType.matrix,
    ]) {
      expect(AppThemes.getTheme(type).requiredPoints, greaterThan(0));
    }
  });

  test('generated UI locales are selectable and translated', () async {
    final codes = LanguageProvider.availableLanguages
        .map((language) => language.code)
        .toList();

    expect(codes, hasLength(13));
    expect(
      AppLocalizations.supportedLocales.map((l) => l.languageCode).toSet(),
      codes.toSet(),
    );

    final english = await AppLocalizations.delegate.load(const Locale('en'));

    for (final code in codes) {
      final strings = await AppLocalizations.delegate.load(Locale(code));

      expect(strings.appName, isNotEmpty, reason: code);
      expect(strings.certificates, isNotEmpty, reason: code);
      expect(strings.whatsNew, isNotEmpty, reason: code);
      expect(
        strings.shareMessage(5, 10, 50, 0, '50'),
        contains('5'),
        reason: code,
      );

      if (code != 'en') {
        expect(strings.settings, isNot(english.settings), reason: code);
        expect(strings.dailyQuiz, isNot(english.dailyQuiz), reason: code);
      }
    }
  });

  // ==========================================================
  // NEW GAMES
  // ==========================================================

  final newGames = <(String, Widget, String)>[
    ('true or false blitz', const TrueFalseBlitzScreen(), 'Start'),
    (
      'command match',
      const CommandMatchScreen(),
      'Tap a command, then tap its meaning.',
    ),
    ('port master', const PortMasterScreen(), 'Default port of'),
    ('tic-tac-toe', const TicTacToeScreen(), 'Your turn'),
    ('connect four', const ConnectFourScreen(), 'Red to move'),
    ('ludo', const LudoGameScreen(), 'Ludo'),
    ('chess', const ChessScreen(), 'White to move'),
    ('snake and ladders', const SnakeLaddersScreen(), 'Player 1 rolls first'),
  ];

  final dailyLimitedGames = <Widget>[
    const TrueFalseBlitzScreen(),
    const CommandMatchScreen(),
    const PortMasterScreen(),
  ];

  for (final size in [
    const Size(320, 568),
    const Size(360, 640),
    const Size(844, 390),
    const Size(1280, 800),
  ]) {
    testWidgets('new games fit viewport $size', (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = size;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      for (final (name, screen, marker) in newGames) {
        SharedPreferences.setMockInitialValues({});
        await tester.pumpWidget(gameApp(screen));
        await tester.pumpAndSettle();

        expect(find.text(marker), findsOneWidget, reason: '$name at $size');
        expect(tester.takeException(), isNull, reason: '$name at $size');
      }
    });
  }

  testWidgets('games hub lists board games and omits Tap Away', (tester) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1280, 900);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(gameApp(const GamesScreen(), textScale: 1));
    await tester.pumpAndSettle();

    for (final title in [
      'True or False Blitz 🆕',
      'Command Match 🆕',
      'Port Master 🆕',
      'Tic-Tac-Toe',
      'Connect Four',
      'Ludo',
      'Chess',
      'Snake and Ladders',
    ]) {
      await tester.scrollUntilVisible(
        find.text(title),
        200,
        scrollable: find.byType(Scrollable).first,
      );
      expect(find.text(title), findsOneWidget);
    }
    expect(find.text('Tap Away Arrows: 100 Levels 🆕'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('games search filters names and descriptions', (tester) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1280, 900);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(gameApp(const GamesScreen(), textScale: 1));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('games-search')), 'snake');
    await tester.pumpAndSettle();

    expect(find.text('Snake and Ladders'), findsOneWidget);
    expect(find.text('Chess'), findsNothing);

    await tester.enterText(
      find.byKey(const ValueKey('games-search')),
      'no such game',
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('No games match'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('chess board accepts a legal opening move', (tester) async {
    await tester.pumpWidget(gameApp(const ChessScreen(), textScale: 1));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const ValueKey('chess-square-e2')));
    await tester.tap(find.byKey(const ValueKey('chess-square-e4')));
    await tester.pumpAndSettle();

    expect(find.text('Black to move'), findsOneWidget);
    expect(find.textContaining('e4'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Snake and Ladders applies ladder jumps', (tester) async {
    await tester.pumpWidget(
      gameApp(SnakeLaddersScreen(diceRoller: () => 4), textScale: 1),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('snake-ladder-roll')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('snake-ladder-roll')));
    await tester.pumpAndSettle();

    expect(find.text('P1: 25'), findsOneWidget);
    expect(find.textContaining('climbed a ladder to 25'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Tic-Tac-Toe responds with a computer move', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(gameApp(const TicTacToeScreen(), textScale: 1));
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const ValueKey('tic-tac-toe-cell-0')));
    await tester.pump();

    expect(find.text('O'), findsOneWidget);
    expect(find.text('Your turn'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Connect Four detects a vertical four-disc win', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(gameApp(const ConnectFourScreen(), textScale: 1));
    await tester.pumpAndSettle();

    for (final column in [0, 1, 0, 1, 0, 1, 0]) {
      await tester.tap(find.byKey(ValueKey('connect-four-cell-$column')));
      await tester.pump();
    }

    expect(find.text('Red wins!'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('new games are limited to one play per day', (tester) async {
    final today = DateTime.now().toIso8601String().substring(0, 10);

    SharedPreferences.setMockInitialValues({
      'true_false_blitz_last_played': today,
      'command_match_last_played': today,
      'port_master_last_played': today,
    });

    for (final screen in dailyLimitedGames) {
      await tester.pumpWidget(gameApp(screen));
      await tester.pumpAndSettle();

      expect(find.text('Already Played Today!'), findsOneWidget);
    }
  });

  testWidgets(
    'port master scores a correct answer and loses a life on a miss',
    (tester) async {
      SharedPreferences.setMockInitialValues({});

      await tester.pumpWidget(gameApp(const PortMasterScreen(), textScale: 1));
      await tester.pumpAndSettle();

      expect(find.text('❤️❤️❤️'), findsOneWidget);

      // Four numeric options are shown; at most one of them is correct.
      final options = find.byType(FilledButton);
      expect(options, findsNWidgets(4));

      await tester.tap(options.first);
      await tester.pump(const Duration(milliseconds: 1000));
      await tester.pump();

      final lostLife = find.text('❤️❤️🖤').evaluate().isNotEmpty;
      final gainedPoints = find.textContaining('⭐ 15').evaluate().isNotEmpty;

      expect(lostLife || gainedPoints, isTrue);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('true or false blitz runs a timed round', (tester) async {
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(
      gameApp(const TrueFalseBlitzScreen(), textScale: 1),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('Start'));
    await tester.pump();
    expect(find.text('⏱ 45 s'), findsOneWidget);

    await tester.tap(find.text('True'));
    await tester.pump(const Duration(milliseconds: 300));

    await tester.pump(const Duration(seconds: 1));
    expect(find.textContaining('⏱ 4'), findsOneWidget);

    // Remove the game so its periodic timer is cancelled.
    await tester.pumpWidget(const SizedBox());
    expect(tester.takeException(), isNull);
  });
}
