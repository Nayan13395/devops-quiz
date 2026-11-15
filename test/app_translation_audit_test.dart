import 'dart:convert';
import 'dart:io';

import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/language_provider.dart';
import 'package:devops_quiz/models/question.dart';
import 'package:devops_quiz/screens/games_screen.dart';
import 'package:devops_quiz/screens/learning_screen.dart';
import 'package:devops_quiz/screens/notification_screen.dart';
import 'package:devops_quiz/screens/saved_data_screen.dart';
import 'package:devops_quiz/screens/settings_screen.dart';
import 'package:devops_quiz/services/in_app_notification_service.dart';
import 'package:devops_quiz/services/learning_translation_service.dart';
import 'package:devops_quiz/services/port_question_service.dart';
import 'package:devops_quiz/services/question_service.dart';
import 'package:devops_quiz/services/saved_data_service.dart';
import 'package:devops_quiz/theme_provider.dart';
import 'package:devops_quiz/widgets/app_drawer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _OfflineAudit extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) =>
      throw StateError('Translation audit prohibits real network requests.');
}

Widget _app(Widget home, LanguageProvider language, ThemeProvider theme) =>
    MultiProvider(
      providers: [
        ChangeNotifierProvider<LanguageProvider>.value(value: language),
        ChangeNotifierProvider<ThemeProvider>.value(value: theme),
      ],
      child: Consumer<LanguageProvider>(
        builder: (context, provider, _) => MaterialApp(
          locale: provider.locale,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: appLocalizationDelegates,
          builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context).copyWith(disableAnimations: true),
            child: child!,
          ),
          home: home,
        ),
      ),
    );

List<String> _texts(WidgetTester tester) => tester
    .widgetList<Text>(find.byType(Text))
    .map((text) => text.data ?? text.textSpan?.toPlainText() ?? '')
    .where((text) => text.isNotEmpty)
    .toList();

Future<void> _ready(WidgetTester tester) async {
  await tester.runAsync(() async {
    final deadline = DateTime.now().add(const Duration(seconds: 10));
    do {
      await tester.pump();
      if (find.byType(CircularProgressIndicator).evaluate().isEmpty) return;
      await Future<void>.delayed(const Duration(milliseconds: 15));
    } while (DateTime.now().isBefore(deadline));
    throw StateError('Audit screen did not finish loading');
  });
  await tester.pumpAndSettle();
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setupFirebaseCoreMocks();
  setUpAll(() async {
    await Firebase.initializeApp();
    HttpOverrides.global = _OfflineAudit();
    Directory('build/translation_audit/runtime').createSync(recursive: true);
  });

  for (final language in LanguageProvider.availableLanguages) {
    testWidgets('AUDIT/${language.code}/runtime-and-content-probes', (
      tester,
    ) async {
      final code = language.code;
      final locale = Locale(code);
      final result = <String, dynamic>{
        'language': code,
        'probe_status': 'running',
        'scope':
            'All bank loaders; effective cards; selected runtime screens, not every dialog.',
        'untranslated_surfaces': <String>[],
        'errors': <String>[],
      };
      final untranslated = <String>[];
      final errors = <String>[];
      final banks = <String, List<Question>>{};
      final now = DateTime.now();
      SharedPreferences.setMockInitialValues({
        'languageCode': 'en',
        'user_login_type': 'guest',
        'game_sound_enabled': false,
        'app_tour_completed_v1': true,
        'daily_login_bonus_last_date':
            '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}',
        'developer_birthday_popup_shown_${now.year}': true,
      });
      final provider = LanguageProvider();
      final theme = ThemeProvider();
      tester.view.physicalSize = const Size(1024, 1100);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      try {
        await provider.loadLanguage();
        await tester.pumpWidget(
          _app(
            Builder(
              builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text(AppLocalizations.of(context)!.settings),
                ),
                body: TextField(
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!.language,
                  ),
                ),
              ),
            ),
            provider,
            theme,
          ),
        );
        await tester.pumpAndSettle();
        await provider.changeLanguage(code);
        await tester.pumpAndSettle();
        final l10n = await AppLocalizations.delegate.load(locale);
        expect(find.text(l10n.settings), findsOneWidget);
        expect(find.text(l10n.language), findsOneWidget);
        final direction = Directionality.of(
          tester.element(find.byType(TextField)),
        );
        expect(
          direction,
          {'ar', 'sd', 'ur'}.contains(code)
              ? TextDirection.rtl
              : TextDirection.ltr,
        );
        expect(
          (await SharedPreferences.getInstance()).getString('languageCode'),
          code,
        );
        final restored = LanguageProvider();
        await restored.loadLanguage();
        expect(restored.locale.languageCode, code);
        restored.dispose();
        result['language_switch'] = {
          'persisted': true,
          'direction': direction.name,
        };
        final controls = MaterialLocalizations.of(
          tester.element(find.byType(TextField)),
        );
        final nativeControls = GlobalMaterialLocalizations.delegate.isSupported(
          locale,
        );
        result['framework_controls'] = {
          'native_material_locale_supported': nativeControls,
          'native_cupertino_locale_supported': GlobalCupertinoLocalizations
              .delegate
              .isSupported(locale),
          'material_cancel_label': controls.cancelButtonLabel,
          'material_ok_label': controls.okButtonLabel,
          'fallback_language': nativeControls
              ? null
              : frameworkControlFallbackLocale(locale).languageCode,
        };
        if (!nativeControls) untranslated.add('framework_control_fallback');
        await tester.pumpWidget(const SizedBox());

        await tester.runAsync(() async {
          for (final category in QuestionService.categories) {
            try {
              final bank = await QuestionService().loadQuestions(
                locale,
                category,
              );
              expect(bank, hasLength(125));
              expect(
                bank.map((question) => question.id).toSet(),
                hasLength(125),
              );
              for (var set = 1; set <= 5; set++) {
                expect(QuestionService.buildSetQuiz(bank, set), hasLength(25));
              }
              banks[category] = bank;
            } catch (error) {
              errors.add('Bank $category/$code: $error');
            }
          }
        });
        result['question_banks_loaded'] = banks.length;
        result['question_records_loaded'] = banks.values.fold<int>(
          0,
          (total, bank) => total + bank.length,
        );
        final rawCards = await tester.runAsync(
          () => LearningTranslationService.load(code),
        );
        final effectiveCards = await tester.runAsync(
          () => loadLearningCardTranslations(code),
        );
        expect(rawCards, isNotNull);
        expect(effectiveCards, isNotNull);
        final missing = [
          for (final card in learningCards)
            if (!effectiveCards!.containsKey(card.id)) card.id,
        ];
        result['learning'] = {
          'raw_entries': rawCards!.length,
          'effective_entries': effectiveCards!.length,
          'total': learningCards.length,
          'missing_ids': missing,
          'concept_overlays': learningQuestionReferences.length,
        };
        for (final card in learningCards.where((card) => !card.isConcept)) {
          if (effectiveCards.containsKey(card.id)) {
            expect(effectiveCards[card.id]!.command, card.command);
          }
        }
        final port = PortQuestionService.question(
          const PortService('SSH', 22),
          [22, 80, 443, 53],
          l10n,
        );
        expect(port.question, l10n.defaultPortQuestion('SSH'));
        expect(
          PortQuestionService.restore(port.id!, l10n).question,
          port.question,
        );
        result['port_question'] = {
          'localized_template': true,
          'text': port.question,
        };

        final drawerKey = GlobalKey<ScaffoldState>();
        await tester.pumpWidget(
          _app(
            Scaffold(
              key: drawerKey,
              drawer: const AppDrawer(),
              body: const SizedBox(),
            ),
            provider,
            theme,
          ),
        );
        drawerKey.currentState!.openDrawer();
        await tester.pumpAndSettle();
        for (final label in [
          l10n.accountWelcomeGuest,
          l10n.home,
          l10n.games,
          l10n.learning,
          l10n.settings,
          l10n.about,
        ]) {
          expect(find.text(label), findsOneWidget);
        }
        result['drawer'] = {'localized_labels_found': 6};
        await tester.pumpWidget(const SizedBox());

        await tester.pumpWidget(_app(const GamesScreen(), provider, theme));
        await _ready(tester);
        final gamesText = _texts(tester);
        final gamesTitle = gamesText.firstWhere((text) => text.contains('🎮'));
        result['games'] = {
          'title': gamesTitle,
          'expected_title': l10n.games,
          'english_search_hint': tester
              .widget<TextField>(find.byType(TextField))
              .decoration
              ?.hintText,
          'english_descriptions_present': gamesText
              .where(
                (text) =>
                    text.contains('Spin and win') ||
                    text.contains('Rebuild shared'),
              )
              .toList(),
        };
        if (code != 'en' && gamesTitle.contains('Games')) {
          untranslated.add('games');
        }
        await tester.pumpWidget(const SizedBox());

        await tester.pumpWidget(_app(const LearningScreen(), provider, theme));
        await _ready(tester);
        final learningText = _texts(tester);
        result['learning_ui'] = {
          'title': learningText.first,
          'search_label': tester
              .widget<TextField>(find.byType(TextField))
              .decoration
              ?.labelText,
          'missing_translation_notice_visible': find
              .text(l10n.learningTranslationUnavailable)
              .evaluate()
              .isNotEmpty,
        };
        if (code != 'en' &&
            find.text('DevOps Learning').evaluate().isNotEmpty) {
          untranslated.add('learning_controls');
        }
        await tester.pumpWidget(const SizedBox());

        await SavedDataService.saveQuestion('Python:1:0', true);
        await SavedDataService.saveCard('linux-001', true);
        await tester.pumpWidget(_app(const SavedDataScreen(), provider, theme));
        await _ready(tester);
        final missingSavedCard = _texts(
          tester,
        ).contains(l10n.learningTranslationUnavailable);
        await tester.tap(find.text(l10n.questions));
        await tester.pumpAndSettle();
        final savedTexts = _texts(tester);
        final savedQuestion = banks['Python']!.first;
        result['saved_data'] = {
          'selected_language_question_visible': savedTexts.contains(
            savedQuestion.question,
          ),
          'learning_missing_notice_visible': missingSavedCard,
        };
        expect(find.text(savedQuestion.question), findsOneWidget);
        await tester.pumpWidget(const SizedBox());

        await tester.pumpWidget(_app(const SettingsScreen(), provider, theme));
        await _ready(tester);
        expect(find.text(l10n.settings), findsOneWidget);
        expect(find.text(l10n.accountWelcomeGuest), findsOneWidget);
        expect(find.text(l10n.accountWelcomePlayingAsGuest), findsOneWidget);
        expect(
          find.text(l10n.accountWelcomeConnectGoogleAccount),
          findsOneWidget,
        );
        expect(find.text(l10n.accountWelcomeResetAppData), findsOneWidget);
        expect(
          find.text(l10n.accountWelcomeResetAppDataSubtitle),
          findsOneWidget,
        );
        expect(find.text(l10n.accountWelcomeFooter), findsOneWidget);
        final settingsTexts = _texts(tester);
        result['settings'] = {
          'localized_title': true,
          'english_guest_controls': settingsTexts
              .where(
                (text) =>
                    text == 'Playing as Guest' ||
                    text == 'Connect Google Account',
              )
              .toList(),
        };
        if (code != 'en' && settingsTexts.contains('Connect Google Account')) {
          untranslated.add('settings_account_controls');
        }
        await tester.pumpWidget(const SizedBox());

        await tester.pumpWidget(
          _app(const NotificationScreen(), provider, theme),
        );
        await _ready(tester);
        final notificationTexts = _texts(tester);
        final notifications =
            await InAppNotificationService.getUnreadNotifications();
        result['notifications'] = {
          'generated_count': notifications.length,
          'english_header_visible': notificationTexts.contains('Stay Updated'),
          'sample_title': notifications.first.title,
        };
        if (code != 'en' && notificationTexts.contains('Stay Updated')) {
          untranslated.add('notifications');
        }
        expect(tester.takeException(), isNull);
        expect(banks.length, 21, reason: errors.join('\n'));
        result['probe_status'] = 'completed';
      } catch (error, stack) {
        errors.add('$error\n$stack');
        result['probe_status'] = 'failed';
        rethrow;
      } finally {
        result['untranslated_surfaces'] = untranslated;
        result['errors'] = errors;
        result['recorded_at'] = DateTime.now().toUtc().toIso8601String();
        final file = File('build/translation_audit/runtime/$code.json');
        file.parent.createSync(recursive: true);
        file.writeAsStringSync(
          const JsonEncoder.withIndent('  ').convert(result),
        );
        await tester.pumpWidget(const SizedBox());
        await tester.pump();
        provider.dispose();
        theme.dispose();
      }
    });
  }
}
