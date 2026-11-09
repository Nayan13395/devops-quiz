import 'package:devops_quiz/models/app_theme.dart';
import 'package:devops_quiz/screens/theme_screen.dart';
import 'package:devops_quiz/services/theme_service.dart';
import 'package:devops_quiz/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('Solar Flare unlocks at 75,000 points', () {
    final solarFlare = AppThemes.getTheme(AppThemeType.solarFlare);
    expect(solarFlare.requiredPoints, 75000);
    expect(
      AppThemes.isUnlocked(solarFlare, 74999, now: DateTime(2026, 11, 6)),
      isFalse,
    );
    expect(AppThemes.isUnlocked(solarFlare, 75000), isTrue);
  });

  test(
    'automatic theme stays daily, rotates tomorrow, and respects unlocks',
    () async {
      SharedPreferences.setMockInitialValues({});
      final today = DateTime(2026, 11, 6);
      final tomorrow = DateTime(2026, 11, 7);
      final first = await ThemeService.loadDailyAutoTheme(
        totalPoints: 75000,
        now: today,
      );
      final sameDay = await ThemeService.loadDailyAutoTheme(
        totalPoints: 75000,
        now: today,
      );
      final nextDay = await ThemeService.loadDailyAutoTheme(
        totalPoints: 75000,
        previousTheme: first,
        now: tomorrow,
      );

      expect(sameDay, first);
      expect(nextDay, isNot(first));
      expect(
        AppThemes.isUnlocked(AppThemes.getTheme(nextDay), 75000, now: tomorrow),
        isTrue,
      );
    },
  );

  test(
    'ThemeProvider persists Auto mode and manual selection exits it',
    () async {
      SharedPreferences.setMockInitialValues({});
      final provider = ThemeProvider();
      final today = DateTime(2026, 11, 6);
      await provider.loadTheme(totalPoints: 75000, now: today);
      await provider.toggleAutoTheme(totalPoints: 75000, now: today);
      expect(provider.autoThemeEnabled, isTrue);
      final automaticTheme = provider.selectedTheme;

      await provider.loadTheme(totalPoints: 75000, now: today);
      expect(provider.selectedTheme, automaticTheme);

      await provider.loadTheme(totalPoints: 75000, now: DateTime(2026, 11, 7));
      expect(provider.selectedTheme, isNot(automaticTheme));

      await provider.setTheme(
        theme: AppThemeType.light,
        totalPoints: 75000,
        now: DateTime(2026, 11, 7),
      );
      expect(provider.autoThemeEnabled, isFalse);
      expect(await ThemeService.loadAutoThemeEnabled(), isFalse);
      provider.dispose();
    },
  );

  testWidgets('Themes screen exposes the Auto button', (tester) async {
    SharedPreferences.setMockInitialValues({'total_points': 75000});
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 568);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final provider = ThemeProvider();
    await provider.loadTheme(totalPoints: 75000);
    await tester.pumpWidget(
      ChangeNotifierProvider<ThemeProvider>.value(
        value: provider,
        child: const MaterialApp(home: ThemeScreen()),
      ),
    );
    await tester.pumpAndSettle();

    final autoButton = find.byKey(const ValueKey('theme-auto-toggle'));
    expect(autoButton, findsOneWidget);
    expect(
      find.descendant(of: autoButton, matching: find.text('Auto')),
      findsOneWidget,
    );
    await tester.tap(autoButton);
    await tester.pumpAndSettle();
    expect(provider.autoThemeEnabled, isTrue);
    expect(await ThemeService.loadAutoThemeEnabled(), isTrue);

    await tester.pumpWidget(const SizedBox.shrink());
    provider.dispose();
  });
}
