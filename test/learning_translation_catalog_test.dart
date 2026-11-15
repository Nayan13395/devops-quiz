import 'package:devops_quiz/screens/learning_screen.dart';
import 'package:devops_quiz/services/learning_translation_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const scripts = {
    'doi': r'[\u0900-\u097f]',
    'gom': r'[\u0900-\u097f]',
    'mai': r'[\u0900-\u097f]',
    'mni': r'[\uabc0-\uabff]',
    'sa': r'[\u0900-\u097f]',
    'sat': r'[\u1c50-\u1c7f]',
    'sd': r'[\u0600-\u06ff]',
  };

  for (final locale in scripts.entries) {
    test(
      '${locale.key} cards remain complete after live quiz overlays',
      () async {
        final raw = await LearningTranslationService.load(locale.key);
        final effective = await loadLearningCardTranslations(locale.key);
        final ids = learningCards.map((card) => card.id).toSet();
        expect(raw.keys.toSet(), ids);
        expect(effective.keys.toSet(), ids);
        final script = RegExp(locale.value);
        for (final card in learningCards) {
          final translation = effective[card.id]!;
          expect(translation.command, raw[card.id]!.command, reason: card.id);
          expect(
            translation.description,
            raw[card.id]!.description,
            reason: card.id,
          );
          if (card.isConcept) {
            expect(
              script.hasMatch(translation.command),
              isTrue,
              reason: card.id,
            );
          } else {
            expect(translation.command, card.command, reason: card.id);
            expect(
              translation.description,
              isNot(card.description),
              reason: card.id,
            );
            expect(
              script.hasMatch(translation.description),
              isTrue,
              reason: card.id,
            );
          }
        }
      },
    );
  }
}
