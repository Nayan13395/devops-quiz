import 'package:devops_quiz/screens/ludo_game_screen.dart';
import 'package:devops_quiz/services/ludo_save_service.dart';
import 'package:devops_quiz/widgets/ludo_board_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ludo/flutter_ludo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Future<void> savePendingTurn() async {
    final controller = LudoController(
      players: [
        LudoPlayer(name: 'You', color: ludoPlayerColours[0]),
        LudoPlayer(name: 'Player 2', color: ludoPlayerColours[1]),
      ],
      diceRoller: () => 6,
      autoMoveSingleChoice: false,
    );
    controller.rollDice();
    await LudoSaveService.save(controller, rewarded: false);
    controller.dispose();
  }

  testWidgets('restores pending dice and puts user pieces at bottom left', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await savePendingTurn();
    await tester.pumpWidget(const MaterialApp(home: LudoGameScreen()));
    await tester.pumpAndSettle();
    final view = tester.widget<LudoBoardView>(find.byType(LudoBoardView));
    expect(view.controller.state.diceValue, 6);
    expect(view.controller.canSelectPiece, isTrue);
    final board = tester.getRect(
      find.byKey(const ValueKey('ludo-bottom-left-orientation')),
    );
    for (int piece = 0; piece < 4; piece++) {
      final position = tester.getCenter(
        find.byKey(ValueKey('ludo-piece-$piece')),
      );
      expect(position.dx, lessThan(board.center.dx));
      expect(position.dy, greaterThan(board.center.dy));
    }
    expect(find.byKey(const ValueKey('ludo-finish-icon')), findsOneWidget);
    expect(find.byIcon(Icons.favorite), findsNWidgets(10));
    expect(find.byIcon(Icons.star), findsNothing);
    await tester.ensureVisible(find.byKey(const ValueKey('ludo-piece-0')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('ludo-piece-0')));
    await tester.pumpAndSettle();
    expect(view.controller.state.pieceById(0).trackPosition, 0);
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pumpAndSettle();
    final saved = (await LudoSaveService.load())!;
    expect(saved.state.pieceById(0).trackPosition, 0);
  });

  testWidgets('new game supports two and three local players', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: LudoGameScreen()));
    await tester.pumpAndSettle();
    for (final count in [2, 3]) {
      await tester.tap(find.byTooltip('New game'));
      await tester.pumpAndSettle();
      await tester.tap(
        find.descendant(
          of: find.byType(AlertDialog),
          matching: find.text('$count'),
        ),
      );
      final toggle = tester.widget<SwitchListTile>(find.byType(SwitchListTile));
      if (toggle.value) {
        await tester.tap(find.text('Bot opponents'));
        await tester.pumpAndSettle();
      }
      await tester.tap(find.text('Start game'));
      await tester.pumpAndSettle();
      final controller = tester
          .widget<LudoBoardView>(find.byType(LudoBoardView))
          .controller;
      expect(controller.state.players, hasLength(count));
      expect(controller.botPlayers, isEmpty);
      final saved = (await LudoSaveService.load())!;
      expect(saved.state.players, hasLength(count));
      expect(saved.botPlayers, isEmpty);
    }
  });

  testWidgets('colour choice persists without resetting the current turn', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await savePendingTurn();
    await tester.pumpWidget(const MaterialApp(home: LudoGameScreen()));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Player colours'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('ludo-colour-0-2')));
    await tester.tap(find.text('Apply'));
    await tester.pumpAndSettle();
    final saved = (await LudoSaveService.load())!;
    expect(saved.state.players.first.color, ludoPlayerColours[2]);
    expect(saved.state.diceValue, 6);
    expect(saved.state.rollCount, 1);
    expect(
      saved.state.players.map((player) => player.color).toSet(),
      hasLength(2),
    );
  });

  testWidgets('phone, landscape and desktop boards have no overflow', (
    tester,
  ) async {
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    tester.view.devicePixelRatio = 1;
    for (final size in [
      const Size(320, 568),
      const Size(844, 390),
      const Size(1280, 800),
    ]) {
      tester.view.physicalSize = size;
      SharedPreferences.setMockInitialValues({});
      await tester.pumpWidget(const MaterialApp(home: LudoGameScreen()));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('ludo-white-dice')), findsOneWidget);
      expect(tester.takeException(), isNull, reason: '$size');
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
    }
  });
}
