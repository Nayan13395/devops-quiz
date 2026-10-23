import 'package:flutter_test/flutter_test.dart';
import 'package:devops_quiz/services/find_words_level_service.dart';

void main() {
  test('all 500 generated levels contain discoverable unique words', () {
    final wordSets = <String>{};
    final boards = <String>{};
    for (int level = 1; level <= FindWordsLevelService.totalLevels; level++) {
      final puzzle = FindWordsLevelService.create(level);

      expect(puzzle.level, level);
      expect(puzzle.gridSize, inInclusiveRange(8, 12));
      expect(puzzle.words.length, inInclusiveRange(4, 8));
      final sortedWords = List<String>.from(puzzle.words)..sort();
      expect(
        wordSets.add(sortedWords.join(',')),
        isTrue,
        reason: 'Level $level repeats a word set',
      );
      expect(
        boards.add(puzzle.letters.join()),
        isTrue,
        reason: 'Level $level repeats a board',
      );
      expect(puzzle.letters, hasLength(puzzle.gridSize * puzzle.gridSize));
      expect(puzzle.words.toSet(), hasLength(puzzle.words.length));

      for (final word in puzzle.words) {
        expect(
          word.length,
          level <= FindWordsLevelService.easyLastLevel
              ? inInclusiveRange(3, 6)
              : level <= FindWordsLevelService.mediumLastLevel
              ? inInclusiveRange(6, 10)
              : inInclusiveRange(6, 12),
          reason: 'Level $level: invalid word length for $word',
        );
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

  test('recreating a level preserves its words and board', () {
    for (final level in [1, 36, 37, 125, 126, 300, 301, 500]) {
      final first = FindWordsLevelService.create(level);
      final second = FindWordsLevelService.create(level);
      expect(second.words, first.words);
      expect(second.letters, first.letters);
    }
  });

  test('selected cells must form a straight line', () {
    final puzzle = FindWordsLevelService.create(1);

    expect(puzzle.pathBetween(0, 3), isNotNull);
    expect(puzzle.pathBetween(0, 18), isNotNull);
    expect(puzzle.pathBetween(0, 10), isNull);
  });
}
