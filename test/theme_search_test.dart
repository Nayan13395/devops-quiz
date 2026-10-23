import 'package:devops_quiz/screens/theme_screen.dart';
import 'package:devops_quiz/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

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
