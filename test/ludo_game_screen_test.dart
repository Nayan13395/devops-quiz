import 'package:devops_quiz/screens/ludo_game_screen.dart';
import 'package:devops_quiz/services/ludo_match_history_service.dart';
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
    expect(
      view.controller.stepAnimationDuration,
      const Duration(milliseconds: 90),
    );
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
    expect(
      tester.getRect(find.byKey(const ValueKey('ludo-finish-icon'))).width,
      closeTo(board.width * 3 / 15, 1),
    );
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

  testWidgets('migrates saved player colours to the standard palette', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    const oldColours = [
      Color(0xFF8B0000),
      Color(0xFFFF7F24),
      Color(0xFFFFD84D),
      Color(0xFF8FCF7A),
    ];
    final controller = LudoController(
      players: [
        for (int seat = 0; seat < oldColours.length; seat++)
          LudoPlayer(name: 'Player ${seat + 1}', color: oldColours[seat]),
      ],
    );
    await LudoSaveService.save(controller, rewarded: false);
    controller.dispose();

    await tester.pumpWidget(const MaterialApp(home: LudoGameScreen()));
    await tester.pumpAndSettle();

    final view = tester.widget<LudoBoardView>(find.byType(LudoBoardView));
    expect(
      view.controller.state.players.map((player) => player.color).toList(),
      ludoPlayerColours,
    );
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
      expect(controller.state.players, hasLength(count == 2 ? 3 : count));
      expect(controller.botPlayers, isEmpty);
      final saved = (await LudoSaveService.load())!;
      expect(saved.state.players, hasLength(count == 2 ? 3 : count));
      final board = tester.getRect(
        find.byKey(const ValueKey('ludo-bottom-left-orientation')),
      );
      final first = tester.getCenter(
        find.byKey(const ValueKey('ludo-seat-label-0')),
      );
      expect(first.dx, lessThan(board.center.dx));
      expect(first.dy, greaterThan(board.center.dy));
      if (count == 2) {
        expect(saved.state.players[1].name, ludoInactiveSeatName);
        final second = tester.getCenter(
          find.byKey(const ValueKey('ludo-seat-label-2')),
        );
        expect(second.dx, greaterThan(board.center.dx));
        expect(second.dy, lessThan(board.center.dy));
        expect(find.byKey(const ValueKey('ludo-seat-label-1')), findsNothing);
      } else {
        final second = tester.getCenter(
          find.byKey(const ValueKey('ludo-seat-label-1')),
        );
        final third = tester.getCenter(
          find.byKey(const ValueKey('ludo-seat-label-2')),
        );
        expect(second.dx, lessThan(board.center.dx));
        expect(second.dy, lessThan(board.center.dy));
        expect(third.dx, greaterThan(board.center.dx));
        expect(third.dy, lessThan(board.center.dy));
      }
      expect(saved.botPlayers, isEmpty);
    }
  });

  testWidgets('shows persisted Ludo played, won, and lost totals', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await LudoMatchHistoryService.recordMatch(
      matchId: 'match-1',
      players: ['You', 'Bot 1'],
      winner: 'You',
    );
    await tester.pumpWidget(const MaterialApp(home: LudoGameScreen()));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Match stats'));
    await tester.pumpAndSettle();

    expect(find.text('Ludo match stats'), findsOneWidget);
    expect(find.text('Played 1  ·  Won 1  ·  Lost 0'), findsOneWidget);
    expect(find.text('Played 1  ·  Won 0  ·  Lost 1'), findsOneWidget);
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
      saved.state.players
          .where((player) => player.name != ludoInactiveSeatName)
          .map((player) => player.color)
          .toSet(),
      hasLength(2),
    );
  });

  testWidgets(
    'finished pieces fit separately on the logo in requested colors',
    (tester) async {
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(700, 700);
      final controller = LudoController(
        players: [
          for (int player = 0; player < 4; player++)
            LudoPlayer(
              name: 'Player ${player + 1}',
              color: ludoPlayerColours[player],
            ),
        ],
      );
      controller.restore(
        controller.state.copyWith(
          phase: LudoTurnPhase.gameOver,
          winners: [0],
          pieces: [
            for (final piece in controller.state.pieces)
              piece.copyWith(trackPosition: LudoPiece.finished),
          ],
        ),
      );
      addTearDown(controller.dispose);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: SizedBox.square(
                dimension: 560,
                child: LudoBoardView(controller: controller),
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(ludoPlayerColours, const [
        Color(0xFFE53935),
        Color(0xFF43A047),
        Color(0xFFFDD835),
        Color(0xFF1E88E5),
      ]);
      expect(ludoColourNames, ['Red', 'Green', 'Yellow', 'Blue']);

      final logo = tester.getRect(
        find.byKey(const ValueKey('ludo-finish-icon')),
      );
      final pieceRects = [
        for (int piece = 0; piece < 16; piece++)
          tester.getRect(find.byKey(ValueKey('ludo-piece-$piece'))),
      ];
      for (int first = 0; first < pieceRects.length; first++) {
        expect(logo.contains(pieceRects[first].center), isTrue);
        for (int second = first + 1; second < pieceRects.length; second++) {
          expect(
            pieceRects[first].overlaps(pieceRects[second]),
            isFalse,
            reason: 'Pieces $first and $second overlap on the finish logo',
          );
        }
      }
    },
  );

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
      if (size == const Size(320, 568)) {
        expect(
          tester.getRect(find.byKey(const ValueKey('ludo-roll'))).bottom,
          greaterThan(size.height - 72),
        );
      }
      expect(tester.takeException(), isNull, reason: '$size');
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
    }
  });
}
