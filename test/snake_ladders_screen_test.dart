import 'package:devops_quiz/screens/snake_ladders_screen.dart';
import 'package:devops_quiz/services/snake_ladders_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('six keeps the turn and saves it without move commentary', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(
      MaterialApp(home: SnakeLaddersScreen(diceRoller: () => 6)),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('snake-ladder-roll')));
    await tester.tap(find.byKey(const ValueKey('snake-ladder-roll')));
    await tester.pumpAndSettle();
    expect(find.text('Player 1 rolls again'), findsOneWidget);
    expect(find.textContaining('climbed'), findsNothing);
    expect(find.textContaining('slid'), findsNothing);
    final saved = (await SnakeLaddersService.load())!;
    expect(saved.currentPlayer, 0);
    expect(saved.lastRoll, 6);
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpWidget(const MaterialApp(home: SnakeLaddersScreen()));
    await tester.pumpAndSettle();
    expect(find.text('Player 1 rolls again'), findsOneWidget);
    expect(find.text('P1: ${saved.positions[0]}'), findsOneWidget);
  });

  testWidgets('player selector offers bot and two to four players', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: SnakeLaddersScreen()));
    await tester.pumpAndSettle();
    await tester.tap(find.byType(DropdownButtonFormField<SnakeLaddersMode>));
    await tester.pumpAndSettle();
    expect(find.text('Play against bot'), findsOneWidget);
    expect(find.text('3 players'), findsOneWidget);
    await tester.tap(find.text('4 players'));
    await tester.pumpAndSettle();
    expect(find.text('P3: 0'), findsOneWidget);
    expect(find.text('P4: 0'), findsOneWidget);
  });

  testWidgets('bot completes its turn and returns control', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await SnakeLaddersService.save(
      SnakeLaddersGame.create(mode: SnakeLaddersMode.bot),
    );
    await tester.pumpWidget(
      MaterialApp(home: SnakeLaddersScreen(diceRoller: () => 1)),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const ValueKey('snake-ladder-roll')));
    await tester.tap(find.byKey(const ValueKey('snake-ladder-roll')));
    await tester.pumpAndSettle();
    await tester.pump(const Duration(seconds: 1));
    await tester.pumpAndSettle();
    final saved = (await SnakeLaddersService.load())!;
    expect(saved.currentPlayer, 0);
    expect(saved.positions, [1, 1]);
    expect(find.text('Player 1 to roll'), findsOneWidget);
  });

  testWidgets('four-player board fits phone and desktop without exceptions', (
    tester,
  ) async {
    for (final size in [
      const Size(320, 568),
      const Size(844, 390),
      const Size(1280, 800),
    ]) {
      SharedPreferences.setMockInitialValues({});
      await SnakeLaddersService.save(
        SnakeLaddersGame.create(mode: SnakeLaddersMode.fourPlayers),
      );
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = size;
      await tester.pumpWidget(const MaterialApp(home: SnakeLaddersScreen()));
      await tester.pumpAndSettle();
      expect(
        find.byKey(const ValueKey('snake-ladder-artwork')),
        findsOneWidget,
      );
      expect(tester.takeException(), isNull, reason: '$size');
      await tester.pumpWidget(const SizedBox.shrink());
    }
    tester.view.resetPhysicalSize();
    tester.view.resetDevicePixelRatio();
  });
}
