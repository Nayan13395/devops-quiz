import 'dart:convert';

import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/language_provider.dart';
import 'package:devops_quiz/models/question.dart';
import 'package:devops_quiz/screens/learning_screen.dart';
import 'package:devops_quiz/screens/saved_data_screen.dart';
import 'package:devops_quiz/screens/settings_screen.dart';
import 'package:devops_quiz/screens/port_master_screen.dart';
import 'package:devops_quiz/services/port_question_service.dart';
import 'package:devops_quiz/services/question_service.dart';
import 'package:devops_quiz/services/learning_translation_service.dart';
import 'package:devops_quiz/services/saved_data_service.dart';
import 'package:devops_quiz/theme_provider.dart';
import 'package:devops_quiz/widgets/save_question_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

final _completeCardLocales = AppLocalizations.supportedLocales.map(
  (locale) => locale.languageCode,
);

Widget app(Widget home, {String language = 'en'}) => MaterialApp(
  locale: Locale(language),
  localizationsDelegates: appLocalizationDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  home: home,
);

class _QuestionFixtures extends QuestionService {
  final questions = <String, List<Question>>{};

  @override
  Future<List<Question>> loadQuestions(Locale locale, String category) async {
    return questions['${locale.languageCode}/$category']!;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final fixtures = _QuestionFixtures();
  setUpAll(() async {
    for (final locale in AppLocalizations.supportedLocales) {
      await LearningTranslationService.load(locale.languageCode);
      await loadLearningCardTranslations(locale.languageCode);
      fixtures.questions['${locale.languageCode}/Python'] =
          await QuestionService().loadQuestions(locale, 'Python');
    }
  });
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('bookmarks preserve existing cards, deduplicate and remove', () async {
    SharedPreferences.setMockInitialValues({
      'saved_learning_cards': ['linux-001'],
      'other_setting': 'preserve',
    });
    await SavedDataService.saveCard('linux-002', true);
    await SavedDataService.saveCard('linux-002', true);
    await SavedDataService.saveQuestion('Python:1:0', true);
    await SavedDataService.saveQuestion('Python:1:0', true);
    expect(await SavedDataService.cardIds(), {'linux-001', 'linux-002'});
    expect(await SavedDataService.questionIds(), {'Python:1:0'});
    await SavedDataService.saveCard('linux-001', false);
    await SavedDataService.saveQuestion('Python:1:0', false);
    expect(await SavedDataService.cardIds(), {'linux-002'});
    expect(await SavedDataService.questionIds(), isEmpty);
    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getString('other_setting'), 'preserve');
  });

  test(
    'complete learning catalogs preserve command code and all IDs',
    () async {
      final ids = learningCards.map((card) => card.id).toSet();
      for (final language in _completeCardLocales) {
        final translations = await LearningTranslationService.load(language);
        expect(translations.keys.toSet(), ids, reason: language);
        for (final card in learningCards) {
          expect(translations[card.id]!.description.trim(), isNotEmpty);
          if (!card.isConcept) {
            expect(translations[card.id]!.command, card.command);
          }
        }
      }
    },
  );

  test(
    'packaged card catalogs match the current runtime in every locale',
    () async {
      final coverage =
          jsonDecode(
                await rootBundle.loadString('assets/learning/coverage.json'),
              )
              as Map<String, dynamic>;
      final locales = coverage['locales'] as Map<String, dynamic>;
      for (final locale in AppLocalizations.supportedLocales) {
        final code = locale.languageCode;
        final packaged = await LearningTranslationService.load(code);
        final effective = await loadLearningCardTranslations(code);
        expect(effective.keys.toSet(), packaged.keys.toSet(), reason: code);
        for (final entry in packaged.entries) {
          expect(
            effective[entry.key]!.command,
            entry.value.command,
            reason: '$code/${entry.key}',
          );
          expect(
            effective[entry.key]!.description,
            entry.value.description,
            reason: '$code/${entry.key}',
          );
        }
        final counts = locales[code] as Map<String, dynamic>;
        expect(effective.length, counts['translated'], reason: code);
        expect(
          counts['missingIds'],
          unorderedEquals(
            learningCards
                .map((card) => card.id)
                .where((id) => !effective.containsKey(id)),
          ),
        );
      }
    },
  );

  testWidgets(
    'saved learning cards change language without changing bookmarks',
    (tester) async {
      await SavedDataService.saveCard('extra-001', true);
      for (final language in _completeCardLocales) {
        final translations = await LearningTranslationService.load(language);
        await tester.pumpWidget(
          app(const SavedDataScreen(), language: language),
        );
        await tester.pumpAndSettle();
        expect(
          find.text(translations['extra-001']!.description),
          findsOneWidget,
        );
        expect(find.text('ansible-vault encrypt'), findsOneWidget);
        expect(await SavedDataService.cardIds(), {'extra-001'});
      }
    },
  );

  testWidgets('RTL cards keep commands and examples left-to-right', (
    tester,
  ) async {
    const command = 'ansible-vault encrypt';
    const example = 'ansible-vault encrypt group_vars/prod.yml';
    for (final language in ['ar', 'ur', 'sd']) {
      final translations = await LearningTranslationService.load(language);
      final description = translations['extra-001']!.description;
      await SavedDataService.saveCard('extra-001', true);
      await tester.pumpWidget(app(const SavedDataScreen(), language: language));
      await tester.pumpAndSettle();
      expect(
        tester.widget<Text>(find.text(command)).textDirection,
        TextDirection.ltr,
      );
      expect(
        tester
            .widget<SelectableText>(find.byType(SelectableText))
            .textDirection,
        TextDirection.ltr,
      );
      expect(
        Directionality.of(tester.element(find.text(description))),
        TextDirection.rtl,
      );
      await tester.pumpWidget(app(const LearningScreen(), language: language));
      await tester.pumpAndSettle();
      await tester.enterText(find.byType(TextField), example);
      await tester.pumpAndSettle();
      final card = find.byKey(const ValueKey('extra-001'));
      expect(
        tester
            .widget<Text>(
              find.descendant(of: card, matching: find.text(command)),
            )
            .textDirection,
        TextDirection.ltr,
      );
      expect(
        tester
            .widget<Text>(
              find.descendant(of: card, matching: find.text(example)),
            )
            .textDirection,
        TextDirection.ltr,
      );
      expect(
        Directionality.of(tester.element(find.text(description))),
        TextDirection.rtl,
      );
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
    }
  });

  for (final failure in ['misaligned', 'untranslated', 'invalid answer']) {
    test('concept overlays reject $failure question fixtures', () async {
      const references = {
        'python-006': ('Python', 0),
        'python-007': ('Python', 1),
      };
      final english = fixtures.questions['en/Python']!.first;
      for (final language in ['doi', 'gom', 'mai', 'mni', 'sa', 'sat', 'sd']) {
        final translated = fixtures.questions['$language/Python']!.first;
        final invalid = Question(
          category: translated.category,
          set: translated.set,
          question: failure == 'untranslated'
              ? english.question
              : translated.question,
          options: translated.options,
          answer: switch (failure) {
            'misaligned' =>
              translated.options[(english.options.indexOf(english.answer) + 1) %
                  4],
            'invalid answer' => 'fixture answer not present in options',
            _ => translated.answer,
          },
        );
        final bank = _QuestionFixtures()
          ..questions['en/Python'] = [english, english]
          ..questions['$language/Python'] = [invalid, translated];
        final cards = await LearningTranslationService.loadForQuestions(
          language,
          references,
          questionService: bank,
        );
        expect(cards.containsKey('python-006'), isFalse, reason: language);
        expect(
          cards['python-007']?.description,
          translated.answer,
          reason: language,
        );
        bank.questions['$language/Python'] = [translated, translated];
        final repaired = await LearningTranslationService.loadForQuestions(
          language,
          references,
          questionService: bank,
        );
        expect(repaired.containsKey('python-006'), isTrue, reason: language);
        expect(
          (await loadLearningCardTranslations(language)).keys,
          containsAll(['python-006', 'python-007']),
          reason: '$language: fixtures must not change packaged catalogs',
        );
      }
    });
  }

  testWidgets('untranslated learning cards never silently show English', (
    tester,
  ) async {
    final untranslated = learningCards.first;
    await SavedDataService.saveCard(untranslated.id, true);
    await tester.pumpWidget(
      app(
        SavedDataScreen(learningTranslationsLoader: (_) async => {}),
        language: 'doi',
      ),
    );
    await tester.pumpAndSettle();
    final l10n = await AppLocalizations.delegate.load(const Locale('doi'));
    expect(find.text(l10n.learningTranslationUnavailable), findsOneWidget);
    expect(find.text(untranslated.description), findsNothing);
    expect(await SavedDataService.cardIds(), {untranslated.id});
  });
  test('question bookmark identities align across all app languages', () async {
    final service = QuestionService();
    for (final category in QuestionService.categories) {
      final english = await service.loadQuestions(const Locale('en'), category);
      final ids = english.map((q) => q.id).toList();
      expect(ids.toSet().length, english.length);
      for (final language in QuestionService.supportedQuestionLanguages) {
        final translated = await service.loadQuestions(
          Locale(language),
          category,
        );
        expect(translated.map((q) => q.id), ids, reason: '$category/$language');
        for (final q in translated) {
          expect(q.options, contains(q.answer), reason: '$language/${q.id}');
        }
      }
    }
  });

  testWidgets('settings opens the saved-data screen', (tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LanguageProvider()),
          ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ],
        child: app(const SettingsScreen()),
      ),
    );
    await tester.pumpAndSettle();
    await tester.scrollUntilVisible(
      find.byKey(const ValueKey('settings-save-data')),
      200,
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('settings-save-data')));
    await tester.pumpAndSettle();
    expect(find.byType(SavedDataScreen), findsOneWidget);
    expect(find.text('Save data'), findsOneWidget);
    expect(find.text('Learning'), findsOneWidget);
    expect(find.text('Questions'), findsOneWidget);
  });

  testWidgets('visible save button saves and removes in all app languages', (
    tester,
  ) async {
    for (final locale in AppLocalizations.supportedLocales) {
      final l10n = await AppLocalizations.delegate.load(locale);
      final question =
          fixtures.questions['${locale.languageCode}/Python']!.first;
      await tester.pumpWidget(
        app(
          Scaffold(body: SaveQuestionButton(question: question)),
          language: locale.languageCode,
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text(l10n.saveQuestion), findsOneWidget);
      await tester.tap(find.text(l10n.saveQuestion));
      await tester.pumpAndSettle();
      expect(await SavedDataService.questionIds(), {question.id});
      expect(find.text(l10n.removeSavedItem), findsOneWidget);
      await tester.tap(find.text(l10n.removeSavedItem));
      await tester.pumpAndSettle();
      expect(await SavedDataService.questionIds(), isEmpty);
    }
  });

  testWidgets(
    'Port Master saves shown options and restores in another language',
    (tester) async {
      tester.view.physicalSize = const Size(320, 568);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(app(const PortMasterScreen()));
      await tester.pumpAndSettle();
      final question = tester
          .widget<SaveQuestionButton>(find.byType(SaveQuestionButton))
          .question;
      expect(question.options, hasLength(4));
      await tester.ensureVisible(find.text('Save question'));
      await tester.tap(find.text('Save question'));
      await tester.pumpAndSettle();
      expect(await SavedDataService.questionIds(), {question.id});
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(app(const SavedDataScreen(), language: 'hi'));
      await tester.pumpAndSettle();
      final l10n = await AppLocalizations.delegate.load(const Locale('hi'));
      await tester.tap(find.text(l10n.questions));
      await tester.pumpAndSettle();
      final restored = PortQuestionService.restore(question.id!, l10n);
      expect(restored.options, question.options);
      expect(restored.answer, question.answer);
      expect(find.text(restored.question), findsOneWidget);
      for (final option in question.options) {
        expect(find.text(option), findsOneWidget);
      }
      expect(find.byIcon(Icons.check_circle), findsOneWidget);
    },
  );

  testWidgets('bookmark a quiz question and retain it across recreation', (
    tester,
  ) async {
    final questions = (await tester.runAsync(
      () => QuestionService().loadQuestions(const Locale('en'), 'Python'),
    ))!;
    await tester.pumpWidget(
      app(Scaffold(body: SaveQuestionButton(question: questions.first))),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Save question'));
    await tester.pumpAndSettle();
    expect(await SavedDataService.questionIds(), {questions.first.id});
    expect(find.byTooltip('Remove from saved'), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
    await tester.pumpWidget(
      app(Scaffold(body: SaveQuestionButton(question: questions.first))),
    );
    await tester.pumpAndSettle();
    expect(find.byTooltip('Remove from saved'), findsOneWidget);
    await SavedDataService.saveQuestion(questions.first.id!, false);
    await tester.pumpAndSettle();
    expect(await SavedDataService.questionIds(), isEmpty);
    expect(find.byTooltip('Save question'), findsOneWidget);
  });

  testWidgets('saved questions use each locale and mark the correct option', (
    tester,
  ) async {
    await SavedDataService.saveQuestion('Python:5:19', true);
    for (final locale in AppLocalizations.supportedLocales) {
      final l10n = await AppLocalizations.delegate.load(locale);
      final questions = (await tester.runAsync(
        () => QuestionService().loadQuestions(locale, 'Python'),
      ))!;
      final question = questions.singleWhere((q) => q.id == 'Python:5:19');
      await tester.pumpWidget(
        app(
          SavedDataScreen(questionService: fixtures),
          language: locale.languageCode,
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.text(l10n.questions));
      await tester.pumpAndSettle();
      expect(find.text(question.question), findsOneWidget);
      for (final option in question.options) {
        expect(find.text(option), findsOneWidget);
      }
      final correctIndex = question.options.indexOf(question.answer);
      final correct = find.byKey(
        ValueKey('${question.id}-option-$correctIndex'),
      );
      expect(
        find.descendant(of: correct, matching: find.byIcon(Icons.check_circle)),
        findsOneWidget,
      );
      final box =
          tester.widget<Container>(correct).decoration! as BoxDecoration;
      expect(box.color, Colors.green.shade900);
      expect(tester.takeException(), isNull, reason: locale.languageCode);
    }
  });

  testWidgets('remove a saved question without deleting saved cards', (
    tester,
  ) async {
    await SavedDataService.saveQuestion('Python:1:0', true);
    await SavedDataService.saveCard('linux-001', true);
    await tester.pumpWidget(app(SavedDataScreen(questionService: fixtures)));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Questions'));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Remove from saved').hitTestable());
    await tester.pumpAndSettle();
    expect(await SavedDataService.questionIds(), isEmpty);
    expect(await SavedDataService.cardIds(), {'linux-001'});
    expect(find.textContaining('Nothing saved yet'), findsOneWidget);
  });

  testWidgets('learning bookmarks appear here and removals persist', (
    tester,
  ) async {
    await tester.pumpWidget(app(const LearningScreen()));
    await tester.pumpAndSettle();
    await tester.tap(find.byTooltip('Save card'));
    await tester.pumpAndSettle();
    await tester.pumpWidget(app(const SavedDataScreen()));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('saved-card-linux-001')), findsOneWidget);
    expect(find.text('cat'), findsOneWidget);
    await tester.tap(find.byTooltip('Remove from saved'));
    await tester.pumpAndSettle();
    expect(await SavedDataService.cardIds(), isEmpty);
    await tester.pumpWidget(app(const LearningScreen()));
    await tester.pumpAndSettle();
    expect(find.byTooltip('Save card'), findsOneWidget);
  });

  testWidgets('missing saved content is explicit and can be removed', (
    tester,
  ) async {
    await SavedDataService.saveQuestion('DeletedCategory:1:99', true);
    await tester.pumpWidget(app(const SavedDataScreen()));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Questions'));
    await tester.pumpAndSettle();
    expect(
      find.text('This saved item is no longer available.'),
      findsOneWidget,
    );
    await tester.tap(find.byTooltip('Remove from saved'));
    await tester.pumpAndSettle();
    expect(await SavedDataService.questionIds(), isEmpty);
  });

  testWidgets('storage errors show retry instead of an empty success state', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({'saved_quiz_questions': 42});
    await tester.pumpWidget(app(const SavedDataScreen()));
    await tester.pumpAndSettle();
    expect(find.textContaining('Could not load or update'), findsOneWidget);
    expect(find.textContaining('Nothing saved yet'), findsNothing);
    SharedPreferences.setMockInitialValues({});
    await tester.tap(find.text('Retry'));
    await tester.pumpAndSettle();
    expect(find.textContaining('Nothing saved yet'), findsOneWidget);
  });
}
