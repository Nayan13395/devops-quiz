import 'package:devops_quiz/services/question_service.dart';
import 'package:devops_quiz/services/true_false_blitz_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'daily decks cover every category in every supported question locale',
    () async {
      final questionService = QuestionService();
      final date = DateTime(2026, 11, 6);

      for (final language in QuestionService.supportedQuestionLanguages) {
        final pool = await questionService.loadQuestions(
          Locale(language),
          QuestionService.dailyQuizCategory,
        );
        final sourceCategories = pool
            .map((question) => question.category)
            .toSet();
        final deck = TrueFalseBlitzService.buildDailyDeck(pool, date: date);
        final deckCategories = deck
            .map((statement) => statement.category)
            .toSet();

        expect(sourceCategories, isNotEmpty, reason: language);
        expect(deckCategories, sourceCategories, reason: language);
        expect(deck, hasLength(sourceCategories.length * 2), reason: language);

        for (final category in sourceCategories) {
          final statements = deck
              .where((statement) => statement.category == category)
              .toList();
          expect(
            statements.where((statement) => statement.isTrue),
            hasLength(1),
          );
          expect(
            statements.where((statement) => !statement.isTrue),
            hasLength(1),
          );
          final falseStatement = statements.singleWhere(
            (statement) => !statement.isTrue,
          );
          final sourceQuestion = pool.firstWhere(
            (question) =>
                question.category == category &&
                question.question == falseStatement.question,
          );
          expect(sourceQuestion.options, contains(falseStatement.answer));
          expect(falseStatement.answer, isNot(sourceQuestion.answer));
        }
      }
    },
  );
}
