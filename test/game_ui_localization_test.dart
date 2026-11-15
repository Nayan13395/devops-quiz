import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/l10n/game_localizations.dart';
import 'package:devops_quiz/l10n/game_scene_localizations.dart';
import 'package:devops_quiz/screens/games_screen.dart';
import 'package:devops_quiz/screens/port_master_screen.dart';
import 'package:devops_quiz/screens/tic_tac_toe_screen.dart';
import 'package:devops_quiz/services/spot_difference_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget _app(Widget home, String language, {double scale = 1}) => MaterialApp(
  locale: Locale(language),
  supportedLocales: AppLocalizations.supportedLocales,
  localizationsDelegates: appLocalizationDelegates,
  builder: (context, child) => MediaQuery(
    data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)),
    child: child!,
  ),
  home: home,
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('game cards stay compact at every grid breakpoint', (
    tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final title = lookupAppLocalizations(const Locale('en')).gameUiSpinWheel;
    for (final width in [430.0, 600.0, 800.0, 1100.0, 1600.0]) {
      tester.view.physicalSize = Size(width, 900);
      await tester.pumpWidget(_app(const GamesScreen(), 'en'));
      await tester.pumpAndSettle();
      final card = find.ancestor(
        of: find.text(title),
        matching: find.byType(Card),
      );
      expect(
        tester.getSize(card).height,
        lessThanOrEqualTo(100),
        reason: '$width',
      );
      expect(
        find.descendant(
          of: card,
          matching: find.byIcon(Icons.play_circle_fill_rounded),
        ),
        findsOneWidget,
      );
      expect(tester.takeException(), isNull, reason: '$width');
      await tester.pumpWidget(const SizedBox());
    }
  });

  testWidgets('compact game cards accommodate enlarged localized text', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(600, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    for (final language in ['en', 'ar', 'hi', 'mni', 'sat']) {
      final title = lookupAppLocalizations(Locale(language)).gameUiSpinWheel;
      await tester.pumpWidget(_app(const GamesScreen(), language, scale: 2));
      await tester.pumpAndSettle();
      final card = find.ancestor(
        of: find.text(title),
        matching: find.byType(Card),
      );
      expect(tester.getSize(card).height, lessThanOrEqualTo(200));
      expect(tester.takeException(), isNull, reason: language);
      await tester.pumpWidget(const SizedBox());
    }
  });

  testWidgets('every locale searches the visible localized game titles', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(430, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    for (final locale in AppLocalizations.supportedLocales) {
      final l10n = lookupAppLocalizations(locale);
      await tester.pumpWidget(_app(const GamesScreen(), locale.languageCode));
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(const ValueKey('games-search')),
        l10n.gameUiSpinWheel,
      );
      await tester.pumpAndSettle();
      expect(find.widgetWithText(Card, l10n.gameUiSpinWheel), findsOneWidget);
      expect(find.text(l10n.gameUiPlayEarn), findsOneWidget);
      expect(tester.takeException(), isNull, reason: locale.languageCode);
      await tester.pumpWidget(const SizedBox());
    }
  });

  testWidgets(
    'game search uses displayed descriptions without false empty states',
    (tester) async {
      const locale = Locale('es');
      final l10n = lookupAppLocalizations(locale);
      await tester.pumpWidget(_app(const GamesScreen(), 'es'));
      await tester.pumpAndSettle();
      final description = l10n.gameUiSwipeToFindDevOpsWordsIn500Levels;
      await tester.enterText(
        find.byKey(const ValueKey('games-search')),
        description,
      );
      await tester.pumpAndSettle();
      expect(find.text(l10n.gameUiFindWords), findsOneWidget);
      expect(find.text(l10n.gameUiNoGamesMatch(description)), findsNothing);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'switching a running board to RTL keeps its state and fits large text',
    (tester) async {
      tester.view.physicalSize = const Size(430, 900);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(_app(const TicTacToeScreen(), 'hi', scale: 1.4));
      await tester.pumpAndSettle();
      final state = tester.state(find.byType(TicTacToeScreen));
      await tester.pumpWidget(_app(const TicTacToeScreen(), 'ar', scale: 1.4));
      await tester.pumpAndSettle();
      final l10n = lookupAppLocalizations(const Locale('ar'));
      expect(tester.state(find.byType(TicTacToeScreen)), same(state));
      expect(find.text(l10n.gameUiTicTacToe), findsOneWidget);
      expect(find.byTooltip(l10n.gameUiNewRound), findsOneWidget);
      expect(
        Directionality.of(tester.element(find.byType(TicTacToeScreen))),
        TextDirection.rtl,
      );
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'daily game completion and picture captions use the active locale',
    (tester) async {
      SharedPreferences.setMockInitialValues({
        'port_master_last_played': DateTime.now().toIso8601String().substring(
          0,
          10,
        ),
      });
      for (final language in ['hi', 'ar', 'mni', 'sat']) {
        final l10n = lookupAppLocalizations(Locale(language));
        await tester.pumpWidget(_app(const PortMasterScreen(), language));
        await tester.pumpAndSettle();
        expect(find.text(l10n.gameUiAlreadyPlayedToday), findsOneWidget);
        expect(find.text('Already Played Today!'), findsNothing);
        final context = tester.element(find.byType(PortMasterScreen));
        expect(SpotDifferenceService.levels, hasLength(100));
        expect(
          gameSceneTitle(context, '3D Scene 1'),
          l10n.gameScene3dScene('1'),
        );
        expect(
          gameSceneTitle(context, '3D Scene 100'),
          l10n.gameScene3dScene('100'),
        );
        for (final level in SpotDifferenceService.levels) {
          expect(gameSceneTitle(context, level.title), isNot(level.title));
        }
        expect(gamePlayerName(context, 'Player 2'), l10n.gameUiPlayerName('2'));
        expect(gamePlayerName(context, 'Bot 1'), l10n.gameUiBotName('1'));
        expect(gamePlayerName(context, 'Custom Name'), 'Custom Name');
        expect(rewardGameName(context, 'Mystery Deal'), l10n.gameUiMysteryDeal);
        expect(tester.takeException(), isNull);
        await tester.pumpWidget(const SizedBox());
      }
    },
  );
}
