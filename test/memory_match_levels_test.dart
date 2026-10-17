import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:devops_quiz/screens/memory_match_screen.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('clearing a level unlocks the next level', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: MemoryMatchScreen()));

    for (
      int attempt = 0;
      attempt < 10 && find.text('Memorize Level 1').evaluate().isEmpty;
      attempt++
    ) {
      await tester.pump(const Duration(milliseconds: 10));
    }
    expect(find.text('Memorize Level 1'), findsOneWidget);

    final pairs = <String, List<int>>{};
    for (int index = 0; index < 8; index++) {
      final card = find.byKey(ValueKey('memory-match-card-$index'));
      final face = tester.widget<Text>(
        find.descendant(of: card, matching: find.byType(Text)),
      );
      pairs.putIfAbsent(face.data!, () => []).add(index);
    }
    expect(pairs, hasLength(4));

    await tester.pump(const Duration(seconds: 5));
    for (final indexes in pairs.values) {
      await tester.tap(find.byKey(ValueKey('memory-match-card-${indexes[0]}')));
      await tester.tap(find.byKey(ValueKey('memory-match-card-${indexes[1]}')));
      await tester.pump(const Duration(milliseconds: 301));
      await tester.pumpAndSettle();
    }

    expect(find.text('Level 1 complete!'), findsOneWidget);
    expect(
      (await SharedPreferences.getInstance()).getInt(
        'memory_match_highest_unlocked_level_v1',
      ),
      2,
    );

    await tester.tap(find.text('Next level'));
    await tester.pumpAndSettle();
    expect(find.text('Level 2 of 100'), findsOneWidget);
    expect(find.text('4 pairs'), findsOneWidget);
  });

  testWidgets('restores saved progress through level 100', (tester) async {
    SharedPreferences.setMockInitialValues({
      'memory_match_highest_unlocked_level_v1': 100,
    });
    await tester.pumpWidget(const MaterialApp(home: MemoryMatchScreen()));

    for (
      int attempt = 0;
      attempt < 10 && find.text('Level 100 of 100').evaluate().isEmpty;
      attempt++
    ) {
      await tester.pump(const Duration(milliseconds: 10));
    }

    expect(find.text('Level 100 of 100'), findsOneWidget);
    expect(find.text('18 pairs'), findsOneWidget);
    await tester.tap(find.byTooltip('Choose level'));
    await tester.pumpAndSettle();
    final level100 = find.byKey(const ValueKey('memory-match-level-100'));
    await tester.scrollUntilVisible(
      level100,
      200,
      scrollable: find.byType(Scrollable).last,
    );
    expect(level100, findsOneWidget);
    expect(tester.widget<FilledButton>(level100).onPressed, isNotNull);
  });
}
