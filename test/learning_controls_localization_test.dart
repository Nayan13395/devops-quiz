import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/screens/learning_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget _app(Locale locale) => MaterialApp(
  locale: locale,
  localizationsDelegates: appLocalizationDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  home: const LearningScreen(),
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    for (final locale in AppLocalizations.supportedLocales) {
      await loadLearningCardTranslations(locale.languageCode);
    }
  });
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('Learning controls are localized in every selectable locale', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(360, 740);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
    final english = await AppLocalizations.delegate.load(const Locale('en'));

    for (final locale in AppLocalizations.supportedLocales) {
      final code = locale.languageCode;
      await tester.pumpWidget(_app(locale));
      await tester.pumpAndSettle();
      final l = AppLocalizations.of(
        tester.element(find.byType(LearningScreen)),
      )!;

      final strings = [
        l.learningControlTitle,
        l.learningControlAllCategories,
        l.learningControlSearchCards,
        l.learningControlCategory,
        l.learningControlShowSaved(3),
        l.learningControlShuffleOn,
        l.learningControlAutoOn,
        l.learningControlPrevious,
        l.learningControlNext,
        l.learningControlSaveCard,
        l.learningControlExample,
        l.learningControlCopyExample,
        l.learningControlResetFilters,
      ];
      expect(strings.every((s) => s.trim().isNotEmpty), isTrue, reason: code);
      if (code != 'en') {
        expect(
          l.learningControlSearchCards,
          isNot(english.learningControlSearchCards),
          reason: code,
        );
        expect(
          l.learningControlNext,
          isNot(english.learningControlNext),
          reason: code,
        );
      }
      expect(l.learningControlShowSaved(3), contains('3'), reason: code);

      expect(find.text(l.learningControlTitle), findsOneWidget, reason: code);
      expect(
        find.widgetWithText(TextField, l.learningControlSearchCards),
        findsOneWidget,
        reason: code,
      );
      expect(find.byTooltip(l.learningControlCategory), findsOneWidget);
      expect(find.byTooltip(l.learningControlShuffleOn), findsOneWidget);
      expect(find.byTooltip(l.learningControlAutoOn), findsOneWidget);
      expect(find.byTooltip(l.learningControlPrevious), findsOneWidget);
      expect(find.byTooltip(l.learningControlNext), findsOneWidget);
      expect(find.byTooltip(l.learningControlSaveCard), findsOneWidget);
      expect(find.byTooltip(l.learningControlCopyExample), findsWidgets);

      final rtl = const {'ar', 'ur', 'sd'}.contains(code);
      expect(
        Directionality.of(tester.element(find.byType(TextField))),
        rtl ? TextDirection.rtl : TextDirection.ltr,
        reason: code,
      );

      await tester.enterText(find.byType(TextField), 'zzzz-no-such-card');
      await tester.pumpAndSettle();
      expect(find.text(l.learningControlNoMatches), findsOneWidget);
      await tester.tap(find.text(l.learningControlResetFilters));
      await tester.pumpAndSettle();
      expect(find.byTooltip(l.learningControlNext), findsOneWidget);
      expect(tester.takeException(), isNull, reason: code);
    }
  });
}
