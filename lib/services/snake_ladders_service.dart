import 'dart:convert';
import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

enum SnakeLaddersMode { twoPlayers, bot, threePlayers, fourPlayers }

const int snakeLaddersLevelCount = 20;

({double x, double y}) _squarePoint(int square) {
  final rowFromBottom = (square - 1) ~/ 10;
  final offset = (square - 1) % 10;
  final column = rowFromBottom.isEven ? offset : 9 - offset;
  return (x: column + 0.5, y: 9 - rowFromBottom + 0.5);
}

double _cross(
  ({double x, double y}) a,
  ({double x, double y}) b,
  ({double x, double y}) c,
) => (b.x - a.x) * (c.y - a.y) - (b.y - a.y) * (c.x - a.x);

bool _segmentsCross((int, int) first, (int, int) second) {
  final a = _squarePoint(first.$1);
  final b = _squarePoint(first.$2);
  final c = _squarePoint(second.$1);
  final d = _squarePoint(second.$2);
  final firstC = _cross(a, b, c);
  final firstD = _cross(a, b, d);
  final secondA = _cross(c, d, a);
  final secondB = _cross(c, d, b);
  return (firstC < 0 && firstD > 0 || firstC > 0 && firstD < 0) &&
      (secondA < 0 && secondB > 0 || secondA > 0 && secondB < 0);
}

double _distanceToSegment(
  ({double x, double y}) point,
  ({double x, double y}) start,
  ({double x, double y}) end,
) {
  final dx = end.x - start.x;
  final dy = end.y - start.y;
  final lengthSquared = dx * dx + dy * dy;
  final progress =
      (((point.x - start.x) * dx + (point.y - start.y) * dy) / lengthSquared)
          .clamp(0.0, 1.0);
  final nearestX = start.x + dx * progress;
  final nearestY = start.y + dy * progress;
  return sqrt(
    (point.x - nearestX) * (point.x - nearestX) +
        (point.y - nearestY) * (point.y - nearestY),
  );
}

bool _pathsOverlap((int, int) first, (int, int) second) {
  if (_segmentsCross(first, second)) return true;
  final a = _squarePoint(first.$1);
  final b = _squarePoint(first.$2);
  final c = _squarePoint(second.$1);
  final d = _squarePoint(second.$2);
  return [
    _distanceToSegment(a, c, d),
    _distanceToSegment(b, c, d),
    _distanceToSegment(c, a, b),
    _distanceToSegment(d, a, b),
  ].any((distance) => distance < 0.48);
}

List<(int, int)> _generatePaths(int level) {
  for (int attempt = 0; attempt < 128; attempt++) {
    final endpoints = List<int>.generate(98, (index) => index + 2)
      ..shuffle(Random(level * 7919 + attempt * 104729));
    final paths = <(int, int)>[];
    while (endpoints.length > 1 && paths.length < 12) {
      final start = endpoints.removeLast();
      var matchingIndex = -1;
      for (int index = endpoints.length - 1; index >= 0; index--) {
        final end = endpoints[index];
        if ((end - start).abs() < 12) continue;
        final candidate = (min(start, end), max(start, end));
        if (paths.any((path) => _pathsOverlap(path, candidate))) continue;
        matchingIndex = index;
        break;
      }
      if (matchingIndex < 0) continue;
      final end = endpoints.removeAt(matchingIndex);
      paths.add((min(start, end), max(start, end)));
    }
    if (paths.length == 12) return paths;
  }
  throw StateError('Could not create level $level board.');
}

class SnakeLaddersGame {
  SnakeLaddersGame._({
    required this.mode,
    required this.level,
    required this.week,
    required this.positions,
    this.currentPlayer = 0,
    this.lastRoll,
    this.finished = false,
  }) {
    final pairs = _generatePaths(level);
    ladders = Map.unmodifiable({
      for (final pair in pairs.take(6)) pair.$1: pair.$2,
    });
    snakes = Map.unmodifiable({
      for (final pair in pairs.skip(6)) pair.$2: pair.$1,
    });
  }

  factory SnakeLaddersGame.create({
    SnakeLaddersMode mode = SnakeLaddersMode.twoPlayers,
    int level = 1,
    DateTime? now,
  }) {
    if (level < 1 || level > snakeLaddersLevelCount) {
      throw RangeError.range(level, 1, snakeLaddersLevelCount, 'level');
    }
    return SnakeLaddersGame._(
      mode: mode,
      level: level,
      week:
          (now ?? DateTime.now()).toUtc().millisecondsSinceEpoch ~/
          const Duration(days: 7).inMilliseconds,
      positions: List.filled(switch (mode) {
        SnakeLaddersMode.threePlayers => 3,
        SnakeLaddersMode.fourPlayers => 4,
        _ => 2,
      }, 0),
    );
  }

  final SnakeLaddersMode mode;
  final int level;
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
    'level': level,
    'week': week,
    'positions': positions,
    'currentPlayer': currentPlayer,
    'lastRoll': lastRoll,
    'finished': finished,
  };

  factory SnakeLaddersGame.fromJson(Map<String, dynamic> data) {
    final mode = SnakeLaddersMode.values.byName(data['mode'] as String);
    final level = data['level'] as int? ?? 1;
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
    if (level < 1 || level > snakeLaddersLevelCount) {
      throw const FormatException('Invalid saved level');
    }
    return SnakeLaddersGame._(
      mode: mode,
      level: level,
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
