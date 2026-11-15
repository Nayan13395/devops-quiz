import 'dart:math';

import 'package:devops_quiz/models/question.dart';
import 'package:devops_quiz/services/question_service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'every category and language has separate 25-question non-repeating cycles',
    () async {
      final service = QuestionService();
      for (final category in QuestionService.categories) {
        for (final language in QuestionService.supportedQuestionLanguages) {
          final bank = await service.loadQuestions(Locale(language), category);
          final originalOrder = bank.map((question) => question.id).toList();
          for (var set = 1; set <= QuestionService.setsPerCategory; set++) {
            final expected = bank
                .where((question) => question.set == set)
                .toList();
            final first = QuestionService.buildSetQuiz(
              bank,
              set,
              random: Random(1),
            );
            final nextCycle = QuestionService.buildSetQuiz(
              bank,
              set,
              random: Random(2),
            );
            final reason = '$category/$language/set $set';
            expect(first, hasLength(25), reason: reason);
            expect(
              first.map((question) => question.question).toSet(),
              hasLength(25),
              reason: reason,
            );
            expect(
              first.every((question) => question.set == set),
              isTrue,
              reason: reason,
            );
            expect(first.toSet(), expected.toSet(), reason: reason);
            expect(nextCycle.toSet(), expected.toSet(), reason: reason);
            expect(
              nextCycle.map((question) => question.id).toList(),
              isNot(first.map((question) => question.id).toList()),
              reason: reason,
            );
          }
          expect(bank.map((question) => question.id), originalOrder);
        }
      }
    },
  );

  test(
    'invalid, duplicate or mixed-category decks fail instead of padding from other sets',
    () {
      final bank = List.generate(
        50,
        (index) => Question(
          category: 'Python',
          set: index < 25 ? 1 : 2,
          question: 'Question $index?',
          options: ['A', 'B', 'C', 'D'],
          answer: 'A',
        ),
      );
      expect(() => QuestionService.buildSetQuiz(bank, 0), throwsRangeError);
      expect(
        () => QuestionService.buildSetQuiz(bank.skip(1).toList(), 1),
        throwsFormatException,
      );
      final duplicate = [...bank]..[1] = bank[0];
      expect(
        () => QuestionService.buildSetQuiz(duplicate, 1),
        throwsFormatException,
      );
      final mixed = [...bank]
        ..[1] = Question(
          category: 'Docker',
          set: 1,
          question: 'Different category?',
          options: ['A', 'B', 'C', 'D'],
          answer: 'A',
        );
      expect(
        () => QuestionService.buildSetQuiz(mixed, 1),
        throwsFormatException,
      );
    },
  );
}
