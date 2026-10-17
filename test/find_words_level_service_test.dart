import 'package:flutter_test/flutter_test.dart';
import 'package:devops_quiz/services/find_words_level_service.dart';

void main() {
  test('all 500 generated levels contain discoverable unique words', () {
    for (int level = 1; level <= FindWordsLevelService.totalLevels; level++) {
      final puzzle = FindWordsLevelService.create(level);

      expect(puzzle.level, level);
      expect(puzzle.gridSize, inInclusiveRange(8, 16));
      expect(puzzle.letters, hasLength(puzzle.gridSize * puzzle.gridSize));
      expect(puzzle.words.toSet(), hasLength(puzzle.words.length));

      for (final word in puzzle.words) {
        final path = puzzle.wordPaths[word];
        expect(
          path,
          isNotNull,
          reason: 'Level $level: missing $word placement',
        );
        expect(
          puzzle.wordAtPath(path!.first, path.last),
          word,
          reason: 'Level $level: $word is not discoverable',
        );
      }
    }
  });

  test('selected cells must form a straight line', () {
    final puzzle = FindWordsLevelService.create(1);

    expect(puzzle.pathBetween(0, 3), isNotNull);
    expect(puzzle.pathBetween(0, 18), isNotNull);
    expect(puzzle.pathBetween(0, 10), isNull);
  });
}
