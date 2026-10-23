import 'package:devops_quiz/screens/arrow_puzzle_screen.dart';
import 'package:devops_quiz/screens/games_screen.dart';
import 'package:devops_quiz/services/arrow_puzzle_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Arrow Puzzle is searchable and opens its 100-level game', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(390, 844);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MaterialApp(home: GamesScreen()));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const ValueKey('games-search')), 'arrow');
    await tester.pumpAndSettle();

    expect(ArrowPuzzleService.levelCount, 100);
    expect(find.text('Arrow Puzzle'), findsOneWidget);
    expect(find.textContaining('100 levels'), findsOneWidget);

    await tester.tap(find.text('Arrow Puzzle'));
    await tester.pumpAndSettle();

    expect(find.byType(ArrowPuzzleScreen), findsOneWidget);
    expect(find.text('Level 1'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
