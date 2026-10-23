import 'package:devops_quiz/screens/word_guess_levels_screen.dart';
import 'package:devops_quiz/services/word_guess_level_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('short word free letters stay fixed in their slots', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: WordGuessLevelsScreen()));
    await tester.pumpAndSettle();

    expect(find.text('Level 1/500'), findsOneWidget);
    expect(_slotLetter(tester, 0), 'G');
    expect(_slotLetter(tester, 1), '');
    expect(_slotLetter(tester, 2), 'T');

    await tester.tap(find.byKey(const ValueKey('word-guess-key-I')));
    await tester.pump();

    expect(_slotLetter(tester, 0), 'G');
    expect(_slotLetter(tester, 1), 'I');
    expect(_slotLetter(tester, 2), 'T');
  });

  testWidgets('Docker, Kubernetes, and Azure reveals stay in fixed slots', (
    tester,
  ) async {
    for (final word in ['DOCKER', 'KUBERNETES', 'AZURE']) {
      final level =
          WordGuessLevelService.levels.indexWhere(
            (entry) => entry.word == word,
          ) +
          1;
      SharedPreferences.setMockInitialValues({
        'word_guess_completed_levels_v2': level - 1,
      });
      await tester.pumpWidget(const MaterialApp(home: WordGuessLevelsScreen()));
      await tester.pumpAndSettle();

      final initialSlots = [
        for (int position = 0; position < word.length; position++)
          _slotLetter(tester, position),
      ];
      final revealed = {
        for (int position = 0; position < initialSlots.length; position++)
          if (initialSlots[position].isNotEmpty) position,
      };
      expect(revealed, hasLength(1), reason: word);

      final firstBlank = initialSlots.indexOf('');
      await _tapLetter(tester, word, word[firstBlank]);
      await tester.pump();

      expect(_slotLetter(tester, firstBlank), word[firstBlank], reason: word);
      for (final position in revealed) {
        expect(
          _slotLetter(tester, position),
          initialSlots[position],
          reason: word,
        );
      }

      await tester.pumpWidget(const SizedBox.shrink());
    }
  });

  testWidgets('saved progress continues beyond the original 100 levels', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({
      'word_guess_completed_levels_v2': 100,
    });
    await tester.pumpWidget(const MaterialApp(home: WordGuessLevelsScreen()));
    await tester.pumpAndSettle();
    expect(find.text('Level 101/500'), findsOneWidget);
    expect(find.text('All 500 Levels Complete!'), findsNothing);
  });

  testWidgets('level 500 can be solved and completes the expanded game', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({
      'word_guess_completed_levels_v2': 499,
    });
    await tester.pumpWidget(const MaterialApp(home: WordGuessLevelsScreen()));
    await tester.pumpAndSettle();
    expect(find.text('Level 500/500'), findsOneWidget);
    final word = WordGuessLevelService.levels.last.word;
    for (int position = 0; position < word.length; position++) {
      if (_slotLetter(tester, position).isNotEmpty) continue;
      await _tapLetter(tester, word, word[position]);
      await tester.pump();
    }
    await tester.tap(find.byKey(const ValueKey('word-guess-enter')));
    await tester.pumpAndSettle();
    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getInt('word_guess_completed_levels_v2'), 500);
    expect(find.text('All 500 Levels Complete!'), findsOneWidget);
  });
}

String _slotLetter(WidgetTester tester, int position) {
  final slot = find.byKey(ValueKey('word-guess-slot-0-$position'));
  return tester
      .widget<Text>(find.descendant(of: slot, matching: find.byType(Text)))
      .data!;
}

Future<void> _tapLetter(WidgetTester tester, String word, String letter) async {
  final duplicateCount = word
      .split('')
      .where((value) => value == letter)
      .length;
  for (int occurrence = 1; occurrence <= duplicateCount; occurrence++) {
    final suffix = occurrence == 1 ? '' : '-$occurrence';
    final tile = find.byKey(ValueKey('word-guess-key-$letter$suffix'));
    if (tile.evaluate().isEmpty) continue;
    final tapTarget = find.descendant(of: tile, matching: find.byType(InkWell));
    if (tester.widget<InkWell>(tapTarget).onTap == null) continue;
    await tester.tap(tile);
    return;
  }
  fail('No available rack tile for $letter in $word');
}
