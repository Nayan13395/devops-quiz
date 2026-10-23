import 'dart:math' as math;

import 'word_guess_level_service.dart';

class FindWordsPuzzle {
  const FindWordsPuzzle({
    required this.level,
    required this.gridSize,
    required this.words,
    required this.letters,
    required this.wordPaths,
  });

  final int level;
  final int gridSize;
  final List<String> words;
  final List<String> letters;
  final Map<String, List<int>> wordPaths;

  List<int>? pathBetween(int start, int end) {
    if (start < 0 ||
        end < 0 ||
        start >= letters.length ||
        end >= letters.length) {
      return null;
    }
    if (start == end) return null;

    final startRow = start ~/ gridSize;
    final startColumn = start % gridSize;
    final endRow = end ~/ gridSize;
    final endColumn = end % gridSize;
    final rowDelta = endRow - startRow;
    final columnDelta = endColumn - startColumn;
    final steps = math.max(rowDelta.abs(), columnDelta.abs());

    if (rowDelta != 0 &&
        columnDelta != 0 &&
        rowDelta.abs() != columnDelta.abs()) {
      return null;
    }

    final rowStep = rowDelta.sign;
    final columnStep = columnDelta.sign;
    return [
      for (int step = 0; step <= steps; step++)
        (startRow + rowStep * step) * gridSize +
            startColumn +
            columnStep * step,
    ];
  }

  String? wordAtPath(int start, int end) {
    final path = pathBetween(start, end);
    if (path == null || path.length < 2) return null;

    final selection = path.map((index) => letters[index]).join();
    for (final word in words) {
      if (selection == word || selection == word.split('').reversed.join()) {
        return word;
      }
    }
    return null;
  }
}

class FindWordsLevelService {
  FindWordsLevelService._();

  static const int totalLevels = 500;
  static const int minimumGridSize = 8;
  static const int maximumGridSize = 12;
  static const int easyLastLevel = 125;
  static const int mediumLastLevel = 300;

  static final List<List<String>> _levelWords = _buildLevelWords();

  static List<List<String>> _buildLevelWords() {
    final wordBank = WordGuessLevelService.levels
        .map((entry) => entry.word)
        .toSet();
    final signatures = <String>{};
    return List.generate(totalLevels, (index) {
      final level = index + 1;
      final minimumLength = level <= easyLastLevel ? 3 : 6;
      final maximumLength = level <= easyLastLevel
          ? 6
          : level <= mediumLastLevel
          ? 10
          : maximumGridSize;
      final candidates = wordBank
          .where(
            (word) =>
                word.length >= minimumLength && word.length <= maximumLength,
          )
          .toList();
      final wordCount = level <= easyLastLevel
          ? 4 + index * 2 ~/ easyLastLevel
          : level <= mediumLastLevel
          ? 6 +
                (level - easyLastLevel - 1) *
                    2 ~/
                    (mediumLastLevel - easyLastLevel)
          : 8;
      if (candidates.length < wordCount) {
        throw StateError('Not enough eligible words for level $level.');
      }
      for (int attempt = 0; attempt < 1000; attempt++) {
        candidates.shuffle(math.Random(level * 7919 + attempt * 104729));
        final words = candidates.take(wordCount).toList();
        final sorted = List<String>.from(words)..sort();
        if (signatures.add(sorted.join(','))) return List.unmodifiable(words);
      }
      throw StateError('Could not choose a unique word set for level $level.');
    });
  }

  static const List<(int, int)> _easyDirections = [(0, 1), (1, 0)];
  static const List<(int, int)> _mediumDirections = [
    (0, 1),
    (1, 0),
    (1, 1),
    (1, -1),
  ];
  static const List<(int, int)> _hardDirections = [
    (0, 1),
    (0, -1),
    (1, 0),
    (-1, 0),
    (1, 1),
    (1, -1),
    (-1, 1),
    (-1, -1),
  ];

  static FindWordsPuzzle create(int level) {
    if (level < 1 || level > totalLevels) {
      throw RangeError.range(level, 1, totalLevels, 'level');
    }

    final levelProgress = level - 1;
    final progressRange = totalLevels - 1;
    final baseGridSize =
        minimumGridSize +
        (levelProgress * (maximumGridSize - minimumGridSize) ~/ progressRange);
    final words = _levelWords[level - 1];

    final gridSize = math.max(
      baseGridSize,
      words.map((word) => word.length).reduce(math.max),
    );
    final directions = level <= easyLastLevel
        ? _easyDirections
        : level <= mediumLastLevel
        ? _mediumDirections
        : _hardDirections;

    for (int attempt = 0; attempt < 40; attempt++) {
      final random = math.Random(level * 7919 + attempt * 104729);
      final grid = List<String?>.filled(gridSize * gridSize, null);
      final paths = <String, List<int>>{};
      final placementOrder = List<String>.from(words)
        ..sort((left, right) => right.length.compareTo(left.length));
      var allPlaced = true;

      for (final word in placementOrder) {
        final path = _placeWord(word, grid, gridSize, directions, random);
        if (path == null) {
          allPlaced = false;
          break;
        }
        paths[word] = path;
      }

      if (!allPlaced) continue;

      final letters = [
        for (final letter in grid)
          letter ?? String.fromCharCode(65 + random.nextInt(26)),
      ];
      return FindWordsPuzzle(
        level: level,
        gridSize: gridSize,
        words: List.unmodifiable(words),
        letters: List.unmodifiable(letters),
        wordPaths: Map.unmodifiable(paths),
      );
    }

    throw StateError('Could not generate a puzzle for level $level.');
  }

  static List<int>? _placeWord(
    String word,
    List<String?> grid,
    int gridSize,
    List<(int, int)> directions,
    math.Random random,
  ) {
    final starts = List<int>.generate(grid.length, (index) => index)
      ..shuffle(random);
    final shuffledDirections = List<(int, int)>.from(directions)
      ..shuffle(random);

    for (final (rowStep, columnStep) in shuffledDirections) {
      for (final start in starts) {
        final startRow = start ~/ gridSize;
        final startColumn = start % gridSize;
        final path = <int>[];
        var fits = true;

        for (int offset = 0; offset < word.length; offset++) {
          final row = startRow + rowStep * offset;
          final column = startColumn + columnStep * offset;
          if (row < 0 || row >= gridSize || column < 0 || column >= gridSize) {
            fits = false;
            break;
          }

          final cell = row * gridSize + column;
          final existing = grid[cell];
          if (existing != null && existing != word[offset]) {
            fits = false;
            break;
          }
          path.add(cell);
        }

        if (!fits) continue;
        for (int offset = 0; offset < word.length; offset++) {
          grid[path[offset]] = word[offset];
        }
        return path;
      }
    }

    return null;
  }
}
