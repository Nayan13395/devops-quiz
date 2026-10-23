import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

import 'point_service.dart';

enum ArrowDirection {
  up,
  right,
  down,
  left;

  int get rowDelta => switch (this) {
    ArrowDirection.up => -1,
    ArrowDirection.right => 0,
    ArrowDirection.down => 1,
    ArrowDirection.left => 0,
  };

  int get columnDelta => switch (this) {
    ArrowDirection.up => 0,
    ArrowDirection.right => 1,
    ArrowDirection.down => 0,
    ArrowDirection.left => -1,
  };

  ArrowDirection rotateClockwise() =>
      ArrowDirection.values[(index + 1) % ArrowDirection.values.length];

  ArrowDirection rotate(int quarterTurns) =>
      ArrowDirection.values[(index + quarterTurns) % 4];
}

class ArrowPuzzleLevel {
  final int number;
  final int size;
  final Map<int, ArrowDirection> initialDirections;

  const ArrowPuzzleLevel({
    required this.number,
    required this.size,
    required this.initialDirections,
  });

  String get signature =>
      '$size:${List<int>.generate(size * size, (cell) => initialDirections[cell]!.index).join()}';

  /// An arrow can be removed when its ray reaches the board edge without
  /// crossing any arrows that have not already been removed.
  bool canRemove(int cell, Set<int> removed) {
    if (!initialDirections.containsKey(cell) || removed.contains(cell)) {
      return false;
    }

    final ArrowDirection direction = initialDirections[cell]!;
    int row = cell ~/ size + direction.rowDelta;
    int column = cell % size + direction.columnDelta;

    while (row >= 0 && row < size && column >= 0 && column < size) {
      final int next = row * size + column;

      if (initialDirections.containsKey(next) && !removed.contains(next)) {
        return false;
      }

      row += direction.rowDelta;
      column += direction.columnDelta;
    }

    return true;
  }

  List<int> get availableArrows => [
    for (int cell = 0; cell < size * size; cell++)
      if (canRemove(cell, const <int>{})) cell,
  ];
}

class ArrowPuzzleService {
  ArrowPuzzleService._();

  static const int levelCount = 100;
  static const int rewardPerLevel = 100;
  static const int startingLives = 3;
  static const String _solvedKey = 'arrow_puzzle_solved_levels_v1';
  static const String _selectedKey = 'arrow_puzzle_selected_level_v1';

  static final List<ArrowPuzzleLevel> levels = _generateLevels();

  static List<ArrowPuzzleLevel> _generateLevels() {
    final random = Random(20261009);
    final generated = <ArrowPuzzleLevel>[];

    for (int number = 1; number <= levelCount; number++) {
      final int size = number <= 20
          ? 5
          : number <= 60
          ? 6
          : 7;
      final int rotation = (number - 1) % 4;
      final directions = <int, ArrowDirection>{};

      for (int row = 0; row < size; row++) {
        for (int column = 0; column < size; column++) {
          // Base boards point north or west. Each arrow strictly decreases
          // row + column, so clearing from the top/left outward always works.
          final ArrowDirection baseDirection = row == 0
              ? ArrowDirection.up
              : column == 0
              ? ArrowDirection.left
              : random.nextBool()
              ? ArrowDirection.up
              : ArrowDirection.left;

          final (int, int) transformed = _rotateCell(
            row,
            column,
            size,
            rotation,
          );
          final int cell = transformed.$1 * size + transformed.$2;
          directions[cell] = baseDirection.rotate(rotation);
        }
      }

      generated.add(
        ArrowPuzzleLevel(
          number: number,
          size: size,
          initialDirections: Map.unmodifiable(directions),
        ),
      );
    }

    assert(
      generated.map((level) => level.signature).toSet().length == levelCount,
    );
    return List.unmodifiable(generated);
  }

  static (int, int) _rotateCell(int row, int column, int size, int turns) {
    var r = row;
    var c = column;

    for (int i = 0; i < turns; i++) {
      final int nextRow = c;
      final int nextColumn = size - 1 - r;
      r = nextRow;
      c = nextColumn;
    }

    return (r, c);
  }

  static Future<Set<int>> loadSolvedLevels() async {
    final prefs = await SharedPreferences.getInstance();
    final values = prefs.getStringList(_solvedKey) ?? const <String>[];

    return values.map(int.parse).toSet();
  }

  static Future<int> loadSelectedLevel() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getInt(_selectedKey) ?? 1;
  }

  static Future<void> saveSelectedLevel(int number) async {
    if (number < 1 || number > levelCount) return;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_selectedKey, number);
  }

  static bool isUnlocked(int number, Set<int> solvedLevels) {
    if (number == 1) return true;
    return solvedLevels.contains(number - 1);
  }

  /// Records completion and awards exactly one 100-point reward per level.
  static Future<bool> completeLevel(int number) async {
    if (number < 1 || number > levelCount) return false;

    final prefs = await SharedPreferences.getInstance();
    final solved = (prefs.getStringList(_solvedKey) ?? const <String>[])
        .map(int.parse)
        .toSet();

    if (!isUnlocked(number, solved)) return false;
    if (!solved.add(number)) return false;

    await prefs.setStringList(
      _solvedKey,
      (solved.toList()..sort()).map((level) => level.toString()).toList(),
    );
    await PointService.addPoints(rewardPerLevel, source: PointSource.game);

    return true;
  }
}
