import 'dart:convert';
import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

enum SnakeLaddersMode { twoPlayers, bot, threePlayers, fourPlayers }

class SnakeLaddersGame {
  SnakeLaddersGame._({
    required this.mode,
    required this.week,
    required this.positions,
    this.currentPlayer = 0,
    this.lastRoll,
    this.finished = false,
  }) {
    final random = Random(week * 7919);
    final endpoints = List<int>.generate(97, (index) => index + 2)
      ..shuffle(random);
    final pairs = <(int, int)>[];
    while (pairs.length < 15) {
      final start = endpoints.removeLast();
      final match = endpoints.indexWhere((end) => (end - start).abs() >= 12);
      if (match < 0) throw StateError('Could not create weekly board.');
      final end = endpoints.removeAt(match);
      pairs.add((min(start, end), max(start, end)));
    }
    ladders = Map.unmodifiable({
      for (final pair in pairs.take(7)) pair.$1: pair.$2,
    });
    snakes = Map.unmodifiable({
      for (final pair in pairs.skip(7)) pair.$2: pair.$1,
    });
  }

  factory SnakeLaddersGame.create({
    SnakeLaddersMode mode = SnakeLaddersMode.twoPlayers,
    DateTime? now,
  }) => SnakeLaddersGame._(
    mode: mode,
    week:
        (now ?? DateTime.now()).toUtc().millisecondsSinceEpoch ~/
        const Duration(days: 7).inMilliseconds,
    positions: List.filled(switch (mode) {
      SnakeLaddersMode.threePlayers => 3,
      SnakeLaddersMode.fourPlayers => 4,
      _ => 2,
    }, 0),
  );

  final SnakeLaddersMode mode;
  final int week;
  final List<int> positions;
  late final Map<int, int> ladders;
  late final Map<int, int> snakes;
  int currentPlayer;
  int? lastRoll;
  bool finished;

  bool get botTurn => mode == SnakeLaddersMode.bot && currentPlayer == 1;

  String playerName(int player) => mode == SnakeLaddersMode.bot && player == 1
      ? 'Bot'
      : 'Player ${player + 1}';

  void roll(int value) {
    if (value < 1 || value > 6) {
      throw RangeError.range(value, 1, 6, 'roll');
    }
    if (finished) return;
    lastRoll = value;
    final destination = positions[currentPlayer] + value;
    if (destination <= 100) {
      positions[currentPlayer] =
          ladders[destination] ?? snakes[destination] ?? destination;
    }
    if (positions[currentPlayer] == 100) {
      finished = true;
    } else if (value != 6) {
      currentPlayer = (currentPlayer + 1) % positions.length;
    }
  }

  Map<String, dynamic> toJson() => {
    'mode': mode.name,
    'week': week,
    'positions': positions,
    'currentPlayer': currentPlayer,
    'lastRoll': lastRoll,
    'finished': finished,
  };

  factory SnakeLaddersGame.fromJson(Map<String, dynamic> data) {
    final mode = SnakeLaddersMode.values.byName(data['mode'] as String);
    final positions = List<int>.from(data['positions'] as List);
    final count = switch (mode) {
      SnakeLaddersMode.threePlayers => 3,
      SnakeLaddersMode.fourPlayers => 4,
      _ => 2,
    };
    final currentPlayer = data['currentPlayer'] as int;
    final lastRoll = data['lastRoll'] as int?;
    if (positions.length != count ||
        positions.any((position) => position < 0 || position > 100) ||
        currentPlayer < 0 ||
        currentPlayer >= count ||
        (lastRoll != null && (lastRoll < 1 || lastRoll > 6))) {
      throw const FormatException('Invalid saved game');
    }
    return SnakeLaddersGame._(
      mode: mode,
      week: data['week'] as int,
      positions: positions,
      currentPlayer: currentPlayer,
      lastRoll: lastRoll,
      finished: data['finished'] as bool,
    );
  }
}

class SnakeLaddersService {
  static const saveKey = 'snake_ladders_saved_game_v1';

  static Future<void> save(SnakeLaddersGame game) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(saveKey, jsonEncode(game.toJson()));
  }

  static Future<SnakeLaddersGame?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(saveKey);
    if (raw == null) return null;
    try {
      return SnakeLaddersGame.fromJson(
        Map<String, dynamic>.from(jsonDecode(raw) as Map),
      );
    } catch (_) {
      return null;
    }
  }
}
