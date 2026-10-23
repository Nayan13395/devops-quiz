import 'package:devops_quiz/services/ludo_save_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ludo/flutter_ludo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'saves full two to four player snapshots and pending dice choices',
    () async {
      for (final count in [2, 3, 4]) {
        SharedPreferences.setMockInitialValues({});
        final controller = LudoController(
          players: [
            for (int seat = 0; seat < count; seat++)
              LudoPlayer(
                name: 'P${seat + 1}',
                color: [
                  Colors.red,
                  Colors.blue,
                  Colors.green,
                  Colors.amber,
                ][seat],
              ),
          ],
          diceRoller: () => 6,
          autoMoveSingleChoice: false,
          stepAnimationDuration: Duration.zero,
        );
        controller.rollDice();
        await LudoSaveService.save(controller, rewarded: true);
        final saved = (await LudoSaveService.load())!;
        expect(saved.state.toJson(), controller.state.toJson());
        expect(saved.state.players, hasLength(count));
        expect(saved.state.phase, LudoTurnPhase.awaitingPieceSelection);
        expect(saved.state.diceValue, 6);
        expect(saved.rewarded, isTrue);
        expect(saved.botPlayers, isEmpty);
        controller.dispose();
      }
    },
  );

  test('saves bot seats and ignores invalid saved JSON', () async {
    SharedPreferences.setMockInitialValues({});
    final controller = LudoController(
      players: const [
        LudoPlayer(name: 'You', color: Colors.red),
        LudoPlayer(name: 'Bot', color: Colors.blue),
      ],
      botPlayers: {1},
    );
    await LudoSaveService.save(controller, rewarded: false);
    final saved = (await LudoSaveService.load())!;
    expect(saved.botPlayers, {1});
    expect(saved.rewarded, isFalse);
    controller.dispose();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(LudoSaveService.saveKey, 'invalid');
    expect(await LudoSaveService.load(), isNull);
  });
}
