import 'package:devops_quiz/models/app_theme.dart';
import 'package:devops_quiz/theme_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('special themes', () {
    test('theme catalog is ordered by unlock points with stable ties', () {
      final ordered = AppThemes.sortedByUnlock;
      expect(ordered.take(2).map((theme) => theme.type), [
        AppThemeType.light,
        AppThemeType.dark,
      ]);
      for (int index = 1; index < ordered.length; index++) {
        expect(
          ordered[index - 1].requiredPoints,
          lessThanOrEqualTo(ordered[index].requiredPoints),
        );
      }
      final types = ordered.map((theme) => theme.type).toList();
      expect(
        types.indexOf(AppThemeType.valentineDay),
        lessThan(types.indexOf(AppThemeType.ocean)),
      );
      expect(AppThemes.getTheme(AppThemeType.barbee).primaryColor, isNotNull);
      expect(
        AppThemes.getTheme(AppThemeType.dqSpecial).tertiaryColor,
        isNotNull,
      );
    });

    test('Valentine Day is free February 7 through 14 every year', () {
      final theme = AppThemes.getTheme(AppThemeType.valentineDay);
      for (final year in [2026, 2027]) {
        expect(
          AppThemes.isUnlocked(theme, 0, now: DateTime(year, 2, 6)),
          isFalse,
        );
        expect(
          AppThemes.isUnlocked(theme, 0, now: DateTime(year, 2, 7)),
          isTrue,
        );
        expect(
          AppThemes.isUnlocked(theme, 0, now: DateTime(year, 2, 14)),
          isTrue,
        );
        expect(
          AppThemes.isUnlocked(theme, 0, now: DateTime(year, 2, 15)),
          isFalse,
        );
      }
      expect(AppThemes.isUnlocked(theme, theme.requiredPoints), isTrue);
    });

    test('DQ Special is free March 8 through 15 every year', () {
      final theme = AppThemes.getTheme(AppThemeType.dqSpecial);
      for (final year in [2026, 2027]) {
        expect(
          AppThemes.isUnlocked(theme, 0, now: DateTime(year, 3, 7)),
          isFalse,
        );
        expect(
          AppThemes.isUnlocked(theme, 0, now: DateTime(year, 3, 8)),
          isTrue,
        );
        expect(
          AppThemes.isUnlocked(theme, 0, now: DateTime(year, 3, 15)),
          isTrue,
        );
        expect(
          AppThemes.isUnlocked(theme, 0, now: DateTime(year, 3, 16)),
          isFalse,
        );
      }
    });

    test(
      'a seasonal selection is unavailable outside its free window',
      () async {
        SharedPreferences.setMockInitialValues({});
        final provider = ThemeProvider();
        expect(
          await provider.setTheme(
            theme: AppThemeType.dqSpecial,
            totalPoints: 0,
            now: DateTime(2026, 3, 8),
          ),
          isTrue,
        );

        await provider.loadTheme(totalPoints: 0, now: DateTime(2026, 3, 16));
        expect(provider.selectedTheme, AppThemeType.light);

        await provider.loadTheme(totalPoints: 0, now: DateTime(2027, 3, 8));
        expect(provider.selectedTheme, AppThemeType.dqSpecial);
        provider.dispose();
      },
    );
  });
}
