import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/achievement_localizations.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/models/app_theme.dart';
import 'package:devops_quiz/screens/achievement_screen.dart';
import 'package:devops_quiz/services/achievement_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget _app(Widget home, String language) => MaterialApp(
  locale: Locale(language),
  supportedLocales: AppLocalizations.supportedLocales,
  localizationsDelegates: appLocalizationDelegates,
  home: home,
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(() => SharedPreferences.setMockInitialValues({}));

  testWidgets('English text matches the stable source definitions', (
    tester,
  ) async {
    late BuildContext context;
    await tester.pumpWidget(
      _app(
        Builder(
          builder: (c) {
            context = c;
            return const SizedBox();
          },
        ),
        'en',
      ),
    );
    for (final achievement in await AchievementService.getAchievements()) {
      final text = achievementText(context, achievement);
      expect(text.title, achievement.title, reason: achievement.id);
      expect(text.description, achievement.description, reason: achievement.id);
    }
    for (final theme in AppThemes.all) {
      expect(themeDisplayName(context, theme), theme.name);
      expect(
        themeFreePeriodText(context, theme),
        AppThemes.freePeriodLabel(theme),
      );
    }
  });

  testWidgets('every locale resolves every achievement and theme', (
    tester,
  ) async {
    final achievements = await AchievementService.getAchievements();
    for (final locale in AppLocalizations.supportedLocales) {
      late BuildContext context;
      await tester.pumpWidget(
        _app(
          Builder(
            builder: (c) {
              context = c;
              return const SizedBox();
            },
          ),
          locale.languageCode,
        ),
      );
      var translated = 0;
      for (final achievement in achievements) {
        final text = achievementText(context, achievement);
        expect(text.title.trim(), isNotEmpty);
        expect(text.description.trim(), isNotEmpty);
        expect(text.title, isNot(contains('{')));
        expect(text.description, isNot(contains('{')));
        if (text.title != achievement.title) translated++;
      }
      for (final theme in AppThemes.all) {
        expect(themeDisplayName(context, theme).trim(), isNotEmpty);
      }
      if (locale.languageCode != 'en') {
        expect(
          translated,
          greaterThan(achievements.length ~/ 2),
          reason: locale.languageCode,
        );
      }
    }
  });

  testWidgets('achievement list shows localized content; ids stay stable', (
    tester,
  ) async {
    await tester.pumpWidget(_app(const AchievementScreen(), 'es'));
    await tester.pumpAndSettle();
    final l10n = lookupAppLocalizations(const Locale('es'));
    expect(find.text(l10n.achLocFirstQuizTitle), findsOneWidget);
    expect(find.text('First Quiz'), findsNothing);
    final achievements = await AchievementService.getAchievements();
    expect(achievements.first.id, 'first_quiz');
    expect(achievements.first.title, 'First Quiz');
  });

  testWidgets('achievement cards follow the active category-page theme', (
    tester,
  ) async {
    final scheme = ColorScheme.fromSeed(
      seedColor: Colors.deepOrange,
      brightness: Brightness.dark,
    );
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(colorScheme: scheme),
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: appLocalizationDelegates,
        home: const AchievementScreen(),
      ),
    );
    await tester.pumpAndSettle();

    final card = tester.widget<Card>(
      find.byKey(const ValueKey('achievement-card-first_quiz')),
    );
    expect(card.color, scheme.surface);
    expect(
      (card.shape! as RoundedRectangleBorder).borderRadius,
      BorderRadius.circular(14),
    );

    final iconTile = tester.widget<Container>(
      find.byKey(const ValueKey('achievement-icon-first_quiz')),
    );
    expect(
      (iconTile.decoration! as BoxDecoration).color,
      scheme.primaryContainer,
    );
    expect(
      find.byKey(const ValueKey('achievement-progress-first_quiz')),
      findsOneWidget,
    );
    expect(find.text('🏆 Achievements'), findsNothing);
    expect(find.text('Achievements'), findsOneWidget);
  });
}
