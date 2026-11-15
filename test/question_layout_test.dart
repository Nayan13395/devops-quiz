import 'dart:convert';

import 'package:devops_quiz/services/question_service.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'every catalog language has five packaged files of 25 questions',
    () async {
      final catalog =
          jsonDecode(
                await rootBundle.loadString('assets/questions/catalog.json'),
              )
              as Map<String, dynamic>;
      final categories = catalog['categories'] as Map<String, dynamic>;
      for (final entry in categories.entries) {
        final metadata = entry.value as Map<String, dynamic>;
        for (final language in metadata['languages'] as List<dynamic>) {
          for (var set = 1; set <= QuestionService.setsPerCategory; set++) {
            final path = QuestionService.assetPath(
              entry.key,
              language as String,
              set,
            );
            final questions =
                jsonDecode(await rootBundle.loadString(path)) as List<dynamic>;
            expect(questions, hasLength(25), reason: path);
            for (final value in questions) {
              final question = value as Map<String, dynamic>;
              expect(question['category'], metadata['category'], reason: path);
              expect(question['set'], set, reason: path);
              expect(question['options'], hasLength(4), reason: path);
              expect(
                question['options'],
                contains(question['answer']),
                reason: path,
              );
            }
          }
        }
      }
    },
  );

  test(
    'reward questions use canonical banks rather than removed legacy files',
    () async {
      final questions = await QuestionService().loadQuestions(
        const Locale('en'),
        'RewardGame',
      );
      expect(questions, hasLength(21 * 125));
      expect(
        questions.map((question) => question.category).toSet(),
        hasLength(21),
      );
      expect(
        questions.every(
          (question) =>
              question.id != null && !question.id!.startsWith('RewardGame:'),
        ),
        isTrue,
      );
    },
  );

  for (final language in ['doi', 'mai', 'mni', 'sat']) {
    test(
      '$language question answers stay aligned with the English banks',
      () async {
        final service = QuestionService();
        for (final category in QuestionService.categories) {
          final english = await service.loadQuestions(
            const Locale('en'),
            category,
          );
          final translated = await service.loadQuestions(
            Locale(language),
            category,
          );
          expect(translated, hasLength(english.length), reason: category);
          for (var index = 0; index < english.length; index++) {
            final source = english[index];
            final question = translated[index];
            final location = '$category/$language/$index';
            expect(question.id, source.id, reason: location);
            expect(question.options.toSet(), hasLength(4), reason: location);
            expect(
              question.options.indexOf(question.answer),
              source.options.indexOf(source.answer),
              reason: location,
            );
          }
        }
      },
    );
  }

  test(
    'translated answer prose loads without changing grading or CLI literals',
    () async {
      final service = QuestionService();
      final english = await service.loadQuestions(
        const Locale('en'),
        'Ansible',
      );
      final proseIndex = english.indexWhere(
        (question) =>
            question.answer == 'YAML file containing automation tasks',
      );
      final literalIndex = english.indexWhere(
        (question) => question.answer == 'ansible --version',
      );
      expect(proseIndex, greaterThanOrEqualTo(0));
      expect(literalIndex, greaterThanOrEqualTo(0));
      for (final language in QuestionService.supportedQuestionLanguages) {
        if (language == 'en') continue;
        final translated = await service.loadQuestions(
          Locale(language),
          'Ansible',
        );
        final question = translated[proseIndex];
        final source = english[proseIndex];
        expect(question.id, source.id, reason: language);
        expect(
          question.options.indexOf(question.answer),
          source.options.indexOf(source.answer),
          reason: language,
        );
        for (var option = 0; option < source.options.length; option++) {
          expect(
            question.options[option],
            isNot(source.options[option]),
            reason: '$language option $option',
          );
        }
        expect(
          translated[literalIndex].answer,
          english[literalIndex].answer,
          reason: language,
        );
      }
    },
  );

  test(
    'unknown categories fail rather than loading an unrelated fallback bank',
    () async {
      await expectLater(
        QuestionService().loadQuestions(const Locale('en'), 'not-a-category'),
        throwsArgumentError,
      );
    },
  );
}
