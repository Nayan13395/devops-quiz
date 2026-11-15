import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/screens/about_screen.dart';
import 'package:devops_quiz/screens/achievement_screen.dart';
import 'package:devops_quiz/screens/category_screen.dart';
import 'package:devops_quiz/screens/certificates_screen.dart';
import 'package:devops_quiz/screens/challenge_screen.dart';
import 'package:devops_quiz/screens/games_screen.dart';
import 'package:devops_quiz/screens/leaderboard_screen.dart';
import 'package:devops_quiz/screens/learning_screen.dart';
import 'package:devops_quiz/screens/quiz_screen.dart';
import 'package:devops_quiz/screens/refer_earn_screen.dart';
import 'package:devops_quiz/screens/settings_screen.dart';
import 'package:devops_quiz/screens/welcome_screen.dart';
import 'package:devops_quiz/widgets/app_drawer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _Routes extends NavigatorObserver {
  final pushed = <Route<dynamic>>[];

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) =>
      pushed.add(route);
}

Widget _host(
  GlobalKey<ScaffoldState> key,
  _Routes observer, {
  Locale locale = const Locale('en'),
}) => MaterialApp(
  locale: locale,
  localizationsDelegates: appLocalizationDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  navigatorObservers: [observer],
  home: Scaffold(
    key: key,
    drawer: const AppDrawer(),
    appBar: AppBar(title: const Text('Offline navigation fixture')),
    body: const SizedBox(),
  ),
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setupFirebaseCoreMocks();
  setUpAll(() async => Firebase.initializeApp());
  setUp(
    () => SharedPreferences.setMockInitialValues({
      'game_sound_enabled': false,
      'app_tour_completed_v1': true,
    }),
  );

  testWidgets('ATF: drawer labels render in every app locale', (tester) async {
    for (final locale in AppLocalizations.supportedLocales) {
      final key = GlobalKey<ScaffoldState>();
      await tester.pumpWidget(_host(key, _Routes(), locale: locale));
      key.currentState!.openDrawer();
      await tester.pumpAndSettle();
      final l10n = await AppLocalizations.delegate.load(locale);
      for (final label in [
        l10n.home,
        l10n.switchCategory,
        l10n.dailyQuiz,
        l10n.learning,
        l10n.leaderboard,
        l10n.challengeMode,
        l10n.games,
        l10n.achievements,
        l10n.certificates,
        l10n.settings,
        l10n.referAndEarn,
        l10n.rateApp,
        l10n.about,
      ]) {
        expect(
          find.text(label),
          findsOneWidget,
          reason: '${locale.languageCode}/$label',
        );
      }
      expect(tester.takeException(), isNull, reason: locale.languageCode);
      await tester.pumpWidget(const SizedBox());
    }
  });

  testWidgets('ATF: every internal drawer action selects its intended screen', (
    tester,
  ) async {
    final l10n = await AppLocalizations.delegate.load(const Locale('en'));
    final destinations = <String, Type>{
      l10n.home: WelcomeScreen,
      l10n.switchCategory: CategoryScreen,
      l10n.dailyQuiz: QuizScreen,
      l10n.learning: LearningScreen,
      l10n.leaderboard: LeaderboardScreen,
      l10n.challengeMode: ChallengeScreen,
      l10n.games: GamesScreen,
      l10n.achievements: AchievementScreen,
      l10n.certificates: CertificatesScreen,
      l10n.settings: SettingsScreen,
      l10n.referAndEarn: ReferEarnScreen,
      l10n.about: AboutScreen,
    };
    for (final entry in destinations.entries) {
      final key = GlobalKey<ScaffoldState>();
      final routes = _Routes();
      await tester.pumpWidget(_host(key, routes));
      key.currentState!.openDrawer();
      await tester.pumpAndSettle();
      await tester.ensureVisible(find.text(entry.key));
      await tester.pumpAndSettle();
      final context = tester.element(find.byType(AppDrawer));
      await tester.tap(find.text(entry.key));
      expect(routes.pushed.length, 2, reason: entry.key);
      final route = routes.pushed.last as MaterialPageRoute<dynamic>;
      expect(
        route.builder(context).runtimeType,
        entry.value,
        reason: entry.key,
      );
      await tester.pumpWidget(const SizedBox());
    }
  });
}
