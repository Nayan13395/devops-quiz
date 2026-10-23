import 'dart:convert';

import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/screens/leaderboard_screen.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget progressApp({double textScale = 1}) => MaterialApp(
  localizationsDelegates: AppLocalizations.localizationsDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  builder: (context, child) => MediaQuery(
    data: MediaQuery.of(
      context,
    ).copyWith(textScaler: TextScaler.linear(textScale)),
    child: child!,
  ),
  home: const LeaderboardScreen(),
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'My Progress shows source earnings and preserves total/daily points',
    (tester) async {
      final now = DateTime.now();
      SharedPreferences.setMockInitialValues({
        'total_points': 1000,
        'leaderboard': jsonEncode([
          {'date': '${now.day}-${now.month}-${now.year}', 'points': 200},
        ]),
      });
      await PointService.addPoints(30, source: PointSource.quiz);
      await PointService.addPoints(50, source: PointSource.game);
      await PointService.addPoints(20);
      await tester.pumpWidget(progressApp());
      await tester.pumpAndSettle();
      expect(find.text('My Progress'), findsOneWidget);
      expect(find.text('Universal'), findsNothing);
      expect(find.text('Daily universal prizes'), findsNothing);
      expect(find.textContaining('Top 5:'), findsNothing);
      for (final text in [
        'Lifetime points',
        'Earned today',
        'Quiz points',
        'Game points',
        '1100',
        '300',
        '30',
        '50',
      ]) {
        expect(find.text(text), findsOneWidget);
      }
      await PointService.addPoints(20, source: PointSource.game);
      await tester.tap(find.byTooltip('Refresh progress'));
      await tester.pumpAndSettle();
      expect(find.text('1120'), findsOneWidget);
      expect(find.text('320'), findsOneWidget);
      expect(find.text('70'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('progress breakdown fits narrow phones with larger text', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 568);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(progressApp(textScale: 1.6));
    await tester.pumpAndSettle();
    expect(find.text('Quiz points'), findsOneWidget);
    expect(find.text('Game points'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
