import 'package:chess/chess.dart' as chess;
import 'package:devops_quiz/screens/chess_screen.dart';
import 'package:devops_quiz/services/chess_save_service.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:devops_quiz/widgets/chess_piece_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Future<void> move(WidgetTester tester, String from, String to) async {
    final source = find.byKey(ValueKey('chess-square-$from'));
    await tester.ensureVisible(source);
    await tester.pumpAndSettle();
    await tester.tap(source);
    final target = find.byKey(ValueKey('chess-square-$to'));
    await tester.ensureVisible(target);
    await tester.pumpAndSettle();
    await tester.tap(target);
    await tester.pumpAndSettle();
  }

  testWidgets('two players can finish checkmate and receive one reward', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: ChessScreen()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('2 players'));
    await tester.pumpAndSettle();
    expect(find.text('Player 1 · White / Player 2 · Black'), findsOneWidget);
    for (final squares in [
      ('f2', 'f3'),
      ('e7', 'e5'),
      ('g2', 'g4'),
      ('d8', 'h4'),
    ]) {
      await move(tester, squares.$1, squares.$2);
    }
    expect(find.text('Black wins by checkmate'), findsOneWidget);
    expect(find.byKey(const ValueKey('chess-move-list')), findsNothing);
    expect(find.textContaining('Qh4'), findsNothing);
    expect(await PointService.getTotalPoints(), 50);
    final saved = (await ChessSaveService.load())!;
    expect(saved.game.in_checkmate, isTrue);
    expect(saved.rewarded, isTrue);
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle();
    await tester.pumpWidget(const MaterialApp(home: ChessScreen()));
    await tester.pumpAndSettle();
    expect(find.text('Black wins by checkmate'), findsOneWidget);
    expect(await PointService.getTotalPoints(), 50);
  });

  testWidgets(
    'unfinished local match resumes with the correct turn and history',
    (tester) async {
      SharedPreferences.setMockInitialValues({});
      final game = chess.Chess()
        ..move('e4')
        ..move('e5')
        ..move('Nf3');
      await ChessSaveService.save(
        ChessSavedGame(
          game: game,
          againstComputer: false,
          userIsWhite: true,
          botStartsNext: true,
          rewarded: false,
        ),
      );
      await tester.pumpWidget(const MaterialApp(home: ChessScreen()));
      await tester.pumpAndSettle();
      expect(find.text('Black to move'), findsOneWidget);
      expect(find.byKey(const ValueKey('chess-piece-f3')), findsOneWidget);
      expect(find.byKey(const ValueKey('chess-move-list')), findsNothing);
      await move(tester, 'b8', 'c6');
      final saved = (await ChessSaveService.load())!;
      expect(saved.game.history, hasLength(4));
      expect(
        saved.game.fen,
        (chess.Chess()
              ..move('e4')
              ..move('e5')
              ..move('Nf3')
              ..move('Nc6'))
            .fen,
      );
      expect(saved.game.turn, chess.Color.WHITE);
      expect(await PointService.getTotalPoints(), 0);
    },
  );

  testWidgets('computer responds while local mode does not run bot moves', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: ChessScreen()));
    await tester.pumpAndSettle();
    await move(tester, 'e2', 'e4');
    await tester.pump(const Duration(milliseconds: 1300));
    await tester.pumpAndSettle();
    expect((await ChessSaveService.load())!.game.history, hasLength(2));
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle();
  });

  testWidgets('computer waits in background and resumes its pending turn', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: ChessScreen()));
    await tester.pumpAndSettle();
    await move(tester, 'e2', 'e4');
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
    await tester.pump(const Duration(seconds: 2));
    expect((await ChessSaveService.load())!.game.history, hasLength(1));
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
    await tester.pump(const Duration(milliseconds: 1300));
    await tester.pumpAndSettle();
    expect((await ChessSaveService.load())!.game.history, hasLength(2));
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle();
  });

  testWidgets('all sculpted pieces render on a 2D board at phone sizes', (
    tester,
  ) async {
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    tester.view.devicePixelRatio = 1;
    for (final size in [
      const Size(320, 568),
      const Size(844, 390),
      const Size(1280, 900),
    ]) {
      SharedPreferences.setMockInitialValues({});
      tester.view.physicalSize = size;
      await tester.pumpWidget(const MaterialApp(home: ChessScreen()));
      await tester.pumpAndSettle();
      expect(find.byType(ChessPieceView), findsNWidgets(32));
      final types = tester
          .widgetList<ChessPieceView>(find.byType(ChessPieceView))
          .map((piece) => piece.type)
          .toSet();
      expect(types, {'k', 'q', 'r', 'b', 'n', 'p'});
      expect(tester.takeException(), isNull, reason: '$size');
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
    }
  });
}
