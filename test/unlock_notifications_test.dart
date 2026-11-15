import 'dart:convert';

import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/services/achievement_service.dart';
import 'package:devops_quiz/services/app_tour_service.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:devops_quiz/services/unlock_notice_service.dart';
import 'package:devops_quiz/widgets/unlock_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

final _ordinaryDay = DateTime(2026, 11, 13);

Future<void> _themeBaseline(int points) async {
  SharedPreferences.setMockInitialValues({'total_points': points});
  final achievements = await AchievementService.getAchievements();
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(
    'achievements',
    jsonEncode(achievements.map((achievement) => achievement.id).toList()),
  );
  await UnlockNoticeService.initialize(now: _ordinaryDay);
}

Widget _app(
  GlobalKey<NavigatorState> key,
  UnlockRouteObserver observer, {
  String language = 'en',
}) => MaterialApp(
  navigatorKey: key,
  navigatorObservers: [observer],
  locale: Locale(language),
  localizationsDelegates: appLocalizationDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  builder: (context, child) =>
      UnlockNotifications(navigatorKey: key, observer: observer, child: child!),
  home: const Scaffold(body: Text('Game screen')),
);

Future<void> _flushNotices(WidgetTester tester) async {
  await tester.pump(const Duration(milliseconds: 300));
  await tester.pumpAndSettle();
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('unlock popups wait while the app tour is active', (
    tester,
  ) async {
    await _themeBaseline(4999);
    AppTourService.active.value = true;
    final key = GlobalKey<NavigatorState>();
    final observer = UnlockRouteObserver();
    await tester.pumpWidget(_app(key, observer));
    await PointService.addLocalPoints(1);
    await _flushNotices(tester);
    expect(find.byType(AlertDialog), findsNothing);
    AppTourService.active.value = false;
    await _flushNotices(tester);
    expect(find.text('Sakura'), findsOneWidget);
    await tester.tap(find.text('OK'));
    await _flushNotices(tester);
    await tester.pumpWidget(const SizedBox());
  });

  test(
    'existing unlocks form a baseline rather than a popup backlog',
    () async {
      await _themeBaseline(10000);
      expect(await UnlockNoticeService.pending(now: _ordinaryDay), isEmpty);
      await PointService.addLocalPoints(100);
      expect(await UnlockNoticeService.pending(now: _ordinaryDay), isEmpty);
    },
  );

  test(
    'theme popup is pending until acknowledged and does not repeat on recrossing',
    () async {
      await _themeBaseline(4999);
      await PointService.addPoints(1, source: PointSource.game);
      var pending = await UnlockNoticeService.pending(now: _ordinaryDay);
      expect(pending.map((notice) => notice.id), ['theme:sakura']);
      await UnlockNoticeService.initialize(now: _ordinaryDay);
      pending = await UnlockNoticeService.pending(now: _ordinaryDay);
      expect(pending.single.id, 'theme:sakura');
      await UnlockNoticeService.acknowledge(pending.single);
      await PointService.spendPoints(20);
      await PointService.addLocalPoints(20);
      expect(await UnlockNoticeService.pending(now: _ordinaryDay), isEmpty);
    },
  );

  test(
    'leaderboard bonus and seasonal availability also produce notices',
    () async {
      await _themeBaseline(4990);
      await PointService.applyLeaderboardReward('2026-11-13', 10);
      expect(
        (await UnlockNoticeService.pending(now: _ordinaryDay)).map((n) => n.id),
        contains('theme:sakura'),
      );
      expect(
        (await UnlockNoticeService.pending(
          now: DateTime(2027, 2, 7),
        )).map((n) => n.id),
        contains('theme:valentineDay'),
      );
    },
  );

  test('game points do not unlock quiz point achievements', () async {
    SharedPreferences.setMockInitialValues({
      'total_points': 1000,
      'game_points_earned': 1000,
    });
    final results = await Future.wait([
      AchievementService.checkProgress(),
      AchievementService.checkProgress(),
      AchievementService.checkProgress(),
    ]);
    final unlocked = results.expand((result) => result).toList();
    expect(unlocked, isEmpty);
    expect(await PointService.getTotalPoints(), 1000);
    expect(await AchievementService.getQuizCount(), 0);

    await PointService.addLocalPoints(1000, source: PointSource.quiz);
    final quizUnlocks = await Future.wait([
      AchievementService.checkProgress(),
      AchievementService.checkProgress(),
      AchievementService.checkProgress(),
    ]);
    expect(quizUnlocks.expand((result) => result).map((a) => a.id), [
      'points_1000',
    ]);
    expect(await PointService.getTotalPoints(), 2250);
    expect(await AchievementService.checkProgress(), isEmpty);
  });

  test(
    'quiz completion still counts once and zero questions is not perfect',
    () async {
      final achievements = await AchievementService.checkAchievements(
        score: 0,
        totalQuestions: 0,
      );
      expect(achievements.map((a) => a.id), contains('first_quiz'));
      expect(achievements.map((a) => a.id), isNot(contains('perfect_score')));
      await AchievementService.checkProgress();
      expect(await AchievementService.getQuizCount(), 1);
    },
  );

  testWidgets(
    'theme popups wait for result dialogs and display one at a time',
    (tester) async {
      await _themeBaseline(4999);
      final key = GlobalKey<NavigatorState>();
      final observer = UnlockRouteObserver();
      await tester.pumpWidget(_app(key, observer));
      await _flushNotices(tester);
      final dialog = showDialog<void>(
        context: key.currentContext!,
        builder: (context) => const AlertDialog(title: Text('Level complete')),
      );
      await tester.pumpAndSettle();
      await PointService.addLocalPoints(1);
      await _flushNotices(tester);
      expect(find.text('Level complete'), findsOneWidget);
      expect(find.text('New theme available!'), findsNothing);
      key.currentState!.pop();
      await dialog;
      await _flushNotices(tester);
      expect(find.byKey(const ValueKey('unlock-theme:sakura')), findsOneWidget);
      await PointService.addLocalPoints(5000);
      await _flushNotices(tester);
      expect(find.byType(AlertDialog), findsOneWidget);
      expect(find.text('Sunset'), findsNothing);
      await tester.tap(find.text('OK'));
      await _flushNotices(tester);
      await _flushNotices(tester);
      expect(find.byKey(const ValueKey('unlock-theme:sunset')), findsOneWidget);
      expect(find.byType(AlertDialog), findsOneWidget);
      await tester.tap(find.text('OK'));
      await _flushNotices(tester);
      await _flushNotices(tester);
      expect(find.byType(AlertDialog), findsNothing);
      expect(await UnlockNoticeService.pending(now: _ordinaryDay), isEmpty);
      await tester.pumpWidget(const SizedBox());
    },
  );

  testWidgets('only quiz points trigger the quiz point achievement popup', (
    tester,
  ) async {
    await UnlockNoticeService.initialize(now: _ordinaryDay);
    final key = GlobalKey<NavigatorState>();
    final observer = UnlockRouteObserver();
    await tester.pumpWidget(_app(key, observer, language: 'hi'));
    await _flushNotices(tester);
    await PointService.addLocalPoints(1000, source: PointSource.game);
    await _flushNotices(tester);
    expect(find.byType(AlertDialog), findsNothing);
    expect(await AchievementService.getQuizCount(), 0);

    await PointService.addLocalPoints(1000, source: PointSource.quiz);
    await _flushNotices(tester);
    final l10n = await AppLocalizations.delegate.load(const Locale('hi'));
    expect(find.text(l10n.achievementUnlocked), findsOneWidget);
    expect(find.text(l10n.achLocPoints1000Title), findsOneWidget);
    expect(find.text(l10n.achLocPoints1000Description), findsOneWidget);
    expect(find.text('1000 Points'), findsNothing);
    expect(find.text('Earn 1000 total points in Quiz.'), findsNothing);
    expect(
      find.byKey(const ValueKey('unlock-achievement:points_1000')),
      findsOneWidget,
    );
    expect(await AchievementService.getQuizCount(), 0);
    await tester.tap(find.text(l10n.ok));
    await _flushNotices(tester);
    await _flushNotices(tester);
    expect(find.byType(AlertDialog), findsNothing);
    expect(await PointService.getTotalPoints(), 2250);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('theme unlock popup shows the localized theme name', (
    tester,
  ) async {
    await _themeBaseline(4999);
    await PointService.addLocalPoints(1);
    await tester.pumpWidget(
      _app(GlobalKey<NavigatorState>(), UnlockRouteObserver(), language: 'hi'),
    );
    await _flushNotices(tester);
    final l10n = await AppLocalizations.delegate.load(const Locale('hi'));
    expect(find.text(l10n.achLocThemeSakura), findsOneWidget);
    expect(find.text('Sakura'), findsNothing);
    expect(find.text(l10n.themeUnlocked), findsOneWidget);
    await tester.tap(find.text(l10n.ok));
    await _flushNotices(tester);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('unacknowledged themes survive host recreation', (tester) async {
    await _themeBaseline(4999);
    await PointService.addLocalPoints(1);
    await tester.pumpWidget(
      _app(GlobalKey<NavigatorState>(), UnlockRouteObserver()),
    );
    await _flushNotices(tester);
    expect(find.text('Sakura'), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
    await tester.pumpWidget(
      _app(GlobalKey<NavigatorState>(), UnlockRouteObserver()),
    );
    await _flushNotices(tester);
    expect(find.text('Sakura'), findsOneWidget);
    await tester.tap(find.text('OK'));
    await _flushNotices(tester);
    await tester.pumpWidget(const SizedBox());
  });
}
