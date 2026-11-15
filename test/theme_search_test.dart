import 'package:devops_quiz/models/app_theme.dart';
import 'package:devops_quiz/screens/theme_screen.dart';
import 'package:devops_quiz/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('mobile point labels retain spacing when inline or wrapped', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final theme = AppThemes.sortedByUnlock.firstWhere(
      (theme) => theme.requiredPoints > 0 && !AppThemes.isFreeNow(theme),
    );
    for (final scale in [1.0, 2.5]) {
      SharedPreferences.setMockInitialValues({});
      final provider = ThemeProvider();
      await provider.loadTheme(totalPoints: 0);
      await tester.pumpWidget(
        ChangeNotifierProvider<ThemeProvider>.value(
          value: provider,
          child: MaterialApp(
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: TextScaler.linear(scale)),
              child: child!,
            ),
            home: const ThemeScreen(),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('theme-search-toggle')));
      await tester.pumpAndSettle();
      await tester.scrollUntilVisible(
        find.byKey(const ValueKey('theme-search-field')),
        200,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      await tester.enterText(
        find.byKey(const ValueKey('theme-search-field')),
        theme.name,
      );
      await tester.pumpAndSettle();
      final card = find.widgetWithText(AnimatedContainer, theme.name);
      await tester.scrollUntilVisible(
        card,
        200,
        scrollable: find.byType(Scrollable).first,
      );
      await tester.pumpAndSettle();
      final progress = find.descendant(
        of: card,
        matching: find.byWidgetPredicate(
          (widget) =>
              widget is Text && (widget.data?.startsWith('0 / ') ?? false),
        ),
      );
      final remaining = find.descendant(
        of: card,
        matching: find.byWidgetPredicate(
          (widget) =>
              widget is Text && (widget.data?.endsWith(' more') ?? false),
        ),
      );
      final first = tester.getRect(progress);
      final second = tester.getRect(remaining);
      if ((first.top - second.top).abs() < 1) {
        expect(second.left - first.right, greaterThanOrEqualTo(16));
      } else {
        expect(second.top - first.bottom, greaterThanOrEqualTo(8));
      }
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
      provider.dispose();
    }
  });

  testWidgets('theme search filters names and shows an empty state', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    final provider = ThemeProvider();
    await provider.loadTheme(totalPoints: 0);

    await tester.pumpWidget(
      ChangeNotifierProvider<ThemeProvider>.value(
        value: provider,
        child: const MaterialApp(home: ThemeScreen()),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Rainbow'), findsOneWidget);
    expect(find.text('Army'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('theme-search-toggle')));
    await tester.pumpAndSettle();
    final search = find.byKey(const ValueKey('theme-search-field'));
    await tester.enterText(search, 'rainbow');
    await tester.pumpAndSettle();

    expect(find.text('Rainbow'), findsOneWidget);
    expect(find.text('Army'), findsNothing);

    await tester.enterText(search, 'not a theme');
    await tester.pumpAndSettle();
    expect(find.text('No themes found'), findsOneWidget);
    expect(tester.takeException(), isNull);

    provider.dispose();
  });
}
