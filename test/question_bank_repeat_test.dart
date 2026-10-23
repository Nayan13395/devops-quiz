import 'package:devops_quiz/services/question_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/widgets.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'affected category banks contain no repeated questions across sets',
    () async {
      final service = QuestionService();
      const categories = [
        'Ansible',
        'Docker',
        'Git',
        'Jenkins',
        'Kubernetes',
        'Linux',
        'Networking',
        'Terraform',
      ];

      for (final language in ['en', 'hi', 'mr']) {
        for (final category in categories) {
          final questions = await service.loadQuestions(
            Locale(language),
            category,
          );
          final normalized = questions
              .map(
                (question) => question.question
                    .trim()
                    .replaceAll(RegExp(r'\s+'), ' ')
                    .toLowerCase(),
              )
              .toSet();

          expect(questions, hasLength(125), reason: '$language/$category');
          expect(normalized, hasLength(125), reason: '$language/$category');
        }
      }
    },
  );
}
