import 'package:devops_quiz/screens/find_words_screen.dart';
import 'package:devops_quiz/services/find_words_level_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('dragging across a hidden word finds it', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: FindWordsScreen()));
    await tester.pumpAndSettle();

    expect(find.text('Level 1/100'), findsOneWidget);
    final puzzle = FindWordsLevelService.create(1);
    final word = puzzle.words.first;
    final path = puzzle.wordPaths[word]!;
    final start = tester.getCenter(
      find.byKey(ValueKey('find-words-cell-${path.first}')),
    );
    final end = tester.getCenter(
      find.byKey(ValueKey('find-words-cell-${path.last}')),
    );

    final gesture = await tester.startGesture(start);
    await gesture.moveTo(end);
    await gesture.up();
    await tester.pumpAndSettle();

    expect(find.text('Found $word'), findsOneWidget);
  });

  testWidgets('board fits phone, landscape, and desktop viewports', (
    tester,
  ) async {
    for (final size in [
      const Size(320, 568),
      const Size(844, 390),
      const Size(1280, 800),
    ]) {
      SharedPreferences.setMockInitialValues({});
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = size;
      await tester.pumpWidget(const MaterialApp(home: FindWordsScreen()));
      await tester.pumpAndSettle();

      expect(find.text('Level 1/100'), findsOneWidget, reason: '$size');
      expect(tester.takeException(), isNull, reason: '$size');
      await tester.pumpWidget(const SizedBox.shrink());
    }
    tester.view.resetPhysicalSize();
    tester.view.resetDevicePixelRatio();
  });
}
