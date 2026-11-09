import 'package:devops_quiz/services/snake_ladders_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('six grants another turn, other rolls advance through every player', () {
    for (final mode in SnakeLaddersMode.values) {
      final game = SnakeLaddersGame.create(mode: mode);
      game.roll(6);
      expect(game.currentPlayer, 0);
      for (int player = 0; player < game.positions.length; player++) {
        expect(game.currentPlayer, player);
        game.roll(1);
      }
      expect(game.currentPlayer, 0);
    }
  });

  test('twenty levels have stable and distinct board layouts', () {
    final layouts = <String>{};
    for (int level = 1; level <= snakeLaddersLevelCount; level++) {
      final game = SnakeLaddersGame.create(level: level);
      final same = SnakeLaddersGame.create(level: level);
      expect(same.ladders, game.ladders, reason: 'Level $level');
      expect(same.snakes, game.snakes, reason: 'Level $level');
      expect(game.ladders, hasLength(6), reason: 'Level $level');
      expect(game.snakes, hasLength(6), reason: 'Level $level');
      final endpoints = [
        ...game.ladders.keys,
        ...game.ladders.values,
        ...game.snakes.keys,
        ...game.snakes.values,
      ];
      expect(endpoints.toSet(), hasLength(24), reason: 'Level $level');
      expect(
        game.ladders.entries.every((entry) => entry.key < entry.value),
        isTrue,
      );
      expect(
        game.snakes.entries.every((entry) => entry.key > entry.value),
        isTrue,
      );
      expect(
        layouts.add('${game.ladders}|${game.snakes}'),
        isTrue,
        reason: 'Level $level duplicates an earlier board',
      );
    }
  });

  test('landing on a ladder or snake moves to its endpoint', () {
    final game = SnakeLaddersGame.create();
    for (final entry in [...game.ladders.entries, ...game.snakes.entries]) {
      game.currentPlayer = 0;
      game.positions[0] = entry.key - 1;
      game.roll(1);
      expect(game.positions[0], entry.value);
    }
  });

  test('exact finish and overshoot rules', () {
    final game = SnakeLaddersGame.create();
    game.positions[0] = 99;
    game.roll(6);
    expect(game.positions[0], 99);
    expect(game.currentPlayer, 0);
    game.roll(1);
    expect(game.finished, isTrue);
    expect(game.positions[0], 100);
    game.roll(4);
    expect(game.currentPlayer, 0);
  });

  test('save restores mode, board, turn, positions and dice', () async {
    SharedPreferences.setMockInitialValues({});
    final game = SnakeLaddersGame.create(
      mode: SnakeLaddersMode.fourPlayers,
      level: 13,
      now: DateTime.utc(2026, 10, 23),
    );
    game.roll(6);
    game.roll(2);
    await SnakeLaddersService.save(game);
    final restored = (await SnakeLaddersService.load())!;
    expect(restored.toJson(), game.toJson());
    expect(restored.level, 13);
    expect(restored.snakes, game.snakes);
    expect(restored.ladders, game.ladders);
  });
}
