import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:devops_quiz/screens/chess_screen.dart';
import 'package:devops_quiz/screens/tic_tac_toe_screen.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Tic-Tac-Toe alternates the opening move each round', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: TicTacToeScreen()));
    await tester.pumpAndSettle();

    expect(find.text('Your turn'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('tic-tac-toe-cell-0')));
    await tester.pumpAndSettle();
    expect(
      find.descendant(
        of: find.byKey(const ValueKey('tic-tac-toe-cell-0')),
        matching: find.text('X'),
      ),
      findsOneWidget,
    );

    await tester.tap(find.byTooltip('New round'));
    await tester.pumpAndSettle();
    expect(
      find.descendant(
        of: find.byKey(const ValueKey('tic-tac-toe-cell-4')),
        matching: find.text('O'),
      ),
      findsOneWidget,
    );
    expect(find.text('Your turn'), findsOneWidget);

    await tester.tap(find.byTooltip('New round'));
    await tester.pumpAndSettle();
    expect(
      find.descendant(
        of: find.byKey(const ValueKey('tic-tac-toe-cell-4')),
        matching: find.text('O'),
      ),
      findsNothing,
    );
    final finalCell = find.byKey(const ValueKey('tic-tac-toe-cell-8'));
    await tester.ensureVisible(finalCell);
    await tester.tap(finalCell);
    await tester.pumpAndSettle();
    expect(
      find.descendant(
        of: find.byKey(const ValueKey('tic-tac-toe-cell-8')),
        matching: find.text('X'),
      ),
      findsOneWidget,
    );
  });

  testWidgets('Chess alternates the user color and bot opening', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: ChessScreen()));
    await tester.pumpAndSettle();

    expect(find.text('You are White · Computer is Black'), findsOneWidget);
    expect(find.text('White to move'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('chess-square-e2')));
    await tester.tap(find.byKey(const ValueKey('chess-square-e4')));
    await tester.pumpAndSettle();
    expect(find.text('Black to move'), findsOneWidget);
    expect(_moveCount(tester), 1);
    await tester.pump(const Duration(milliseconds: 1300));
    await tester.pumpAndSettle();
    expect(_moveCount(tester), 2);
    expect(find.text('White to move'), findsOneWidget);

    await tester.tap(find.byTooltip('New game'));
    await tester.pumpAndSettle();
    expect(find.text('You are Black · Computer is White'), findsOneWidget);
    expect(find.text('White to move'), findsOneWidget);
    expect(_moveCount(tester), 0);
    await tester.pump(const Duration(milliseconds: 1300));
    await tester.pumpAndSettle();
    expect(find.text('Black to move'), findsOneWidget);
    expect(_moveCount(tester), 1);

    await tester.tap(find.byKey(const ValueKey('chess-square-e7')));
    await tester.tap(find.byKey(const ValueKey('chess-square-e5')));
    await tester.pumpAndSettle();
    expect(find.text('White to move'), findsOneWidget);
    expect(_moveCount(tester), 2);
    await tester.pump(const Duration(milliseconds: 1300));
    await tester.pumpAndSettle();
    expect(_moveCount(tester), 3);
    expect(find.text('Black to move'), findsOneWidget);

    await tester.tap(find.byTooltip('New game'));
    await tester.pumpAndSettle();
    expect(find.text('You are White · Computer is Black'), findsOneWidget);
    expect(find.text('White to move'), findsOneWidget);
    expect(_moveCount(tester), 0);
  });
}

int _moveCount(WidgetTester tester) {
  final text = tester.widget<Text>(
    find.byKey(const ValueKey('chess-move-list')),
  );
  if (text.data == null || text.data!.startsWith('Tap a piece')) return 0;
  return text.data!.trim().split(RegExp(r'\s+')).length;
}
