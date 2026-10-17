import 'dart:convert';

import 'package:devops_quiz/services/question_service.dart';
import 'package:devops_quiz/services/word_guess_level_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('100 unique Word Guess targets come from English quiz content', () async {
    final corpusWords = <String>{};
    final tokenPattern = RegExp(r'[A-Za-z]{3,}');

    for (final category in QuestionService.categoryFiles.values) {
      final path =
          'assets/questions/${category['folder']}/${category['file']}_en.json';
      final questions =
          jsonDecode(await rootBundle.loadString(path)) as List<dynamic>;

      for (final value in questions) {
        final question = value as Map<String, dynamic>;
        final texts = <String>[
          question['question'] as String,
          question['answer'] as String,
          ...List<String>.from(question['options'] as List),
        ];
        for (final text in texts) {
          corpusWords.addAll(
            tokenPattern
                .allMatches(text)
                .map((match) => match.group(0)!.toUpperCase()),
          );
        }
      }
    }

    final levels = WordGuessLevelService.levels;
    expect(levels, hasLength(100));
    expect(levels.map((level) => level.word).toSet(), hasLength(100));
    expect(levels.where((level) => !corpusWords.contains(level.word)), isEmpty);
  });
}
