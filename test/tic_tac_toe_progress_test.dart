import 'dart:convert';

import 'package:devops_quiz/screens/tic_tac_toe_screen.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const saveKey = 'tic_tac_toe_saved_game_v1';

  Future<void> reopen(WidgetTester tester) async {
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle();
    await tester.pumpWidget(const MaterialApp(home: TicTacToeScreen()));
    await tester.pumpAndSettle();
  }

  Finder marker(int index, String text) => find.descendant(
    of: find.byKey(ValueKey('tic-tac-toe-cell-$index')),
    matching: find.text(text),
  );

  testWidgets('local board, next turn and score survive exiting', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: TicTacToeScreen()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('2 players'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('tic-tac-toe-cell-0')));
    await tester.pumpAndSettle();
    await reopen(tester);
    expect(marker(0, 'X'), findsOneWidget);
    expect(find.text('Player O to move'), findsOneWidget);
    for (final cell in [3, 1, 4, 2]) {
      await tester.tap(find.byKey(ValueKey('tic-tac-toe-cell-$cell')));
      await tester.pumpAndSettle();
    }
    expect(find.text('X wins!'), findsOneWidget);
    final prefs = await SharedPreferences.getInstance();
    expect((jsonDecode(prefs.getString(saveKey)!) as Map)['xWins'], 1);
    await reopen(tester);
    expect(find.text('X wins!'), findsOneWidget);
    expect((jsonDecode(prefs.getString(saveKey)!) as Map)['xWins'], 1);
  });

  testWidgets('computer moves and alternating next opener are restored', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: TicTacToeScreen()));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('tic-tac-toe-cell-0')));
    await tester.pumpAndSettle();
    await reopen(tester);
    expect(marker(0, 'X'), findsOneWidget);
    expect(marker(4, 'O'), findsOneWidget);
    await tester.tap(find.byTooltip('New round'));
    await tester.pumpAndSettle();
    expect(marker(4, 'O'), findsOneWidget);
    await reopen(tester);
    expect(marker(4, 'O'), findsOneWidget);
    await tester.tap(find.byTooltip('New round'));
    await tester.pumpAndSettle();
    expect(find.text('O'), findsNothing);
    expect(find.text('Your turn'), findsOneWidget);
  });

  testWidgets(
    'pending computer turn resumes and finished wins do not pay again',
    (tester) async {
      Map<String, dynamic> snapshot(
        List<String?> board,
        String turn,
        int wins,
      ) => {
        'board': board,
        'mode': 'computer',
        'turn': turn,
        'computerStartsNext': true,
        'xWins': wins,
        'oWins': 0,
        'draws': 0,
      };
      SharedPreferences.setMockInitialValues({
        saveKey: jsonEncode(
          snapshot(
            ['X', null, null, null, null, null, null, null, null],
            'O',
            0,
          ),
        ),
      });
      await tester.pumpWidget(const MaterialApp(home: TicTacToeScreen()));
      await tester.pumpAndSettle();
      expect(marker(4, 'O'), findsOneWidget);
      expect(find.text('Your turn'), findsOneWidget);
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(
        saveKey,
        jsonEncode(
          snapshot(['X', 'X', 'X', 'O', 'O', null, null, null, null], 'X', 1),
        ),
      );
      await tester.pumpWidget(const MaterialApp(home: TicTacToeScreen()));
      await tester.pumpAndSettle();
      expect(find.text('You win!'), findsOneWidget);
      expect(await PointService.getTotalPoints(), 0);
    },
  );

  testWidgets('invalid saved data falls back to a new board', (tester) async {
    SharedPreferences.setMockInitialValues({saveKey: '{invalid'});
    await tester.pumpWidget(const MaterialApp(home: TicTacToeScreen()));
    await tester.pumpAndSettle();
    expect(find.text('Your turn'), findsOneWidget);
    expect(find.text('X'), findsNothing);
    expect(find.text('O'), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
