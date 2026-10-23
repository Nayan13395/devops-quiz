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

  test(
    'weekly boards are stable, change weekly, and have distinct endpoints',
    () {
      for (int week = 2900; week < 3100; week++) {
        final date = DateTime.fromMillisecondsSinceEpoch(
          week * const Duration(days: 7).inMilliseconds,
          isUtc: true,
        );
        final game = SnakeLaddersGame.create(now: date);
        final same = SnakeLaddersGame.create(
          now: date.add(const Duration(days: 6)),
        );
        final next = SnakeLaddersGame.create(
          now: date.add(const Duration(days: 7)),
        );
        expect(same.ladders, game.ladders);
        expect(same.snakes, game.snakes);
        expect(next.ladders, isNot(game.ladders));
        expect(next.snakes, isNot(game.snakes));
        final endpoints = [
          ...game.ladders.keys,
          ...game.ladders.values,
          ...game.snakes.keys,
          ...game.snakes.values,
        ];
        expect(endpoints.toSet(), hasLength(30));
        expect(
          game.ladders.entries.every((entry) => entry.key < entry.value),
          isTrue,
        );
        expect(
          game.snakes.entries.every((entry) => entry.key > entry.value),
          isTrue,
        );
      }
    },
  );

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
      now: DateTime.utc(2026, 10, 23),
    );
    game.roll(6);
    game.roll(2);
    await SnakeLaddersService.save(game);
    final restored = (await SnakeLaddersService.load())!;
    expect(restored.toJson(), game.toJson());
    expect(restored.snakes, game.snakes);
    expect(restored.ladders, game.ladders);
  });
}
