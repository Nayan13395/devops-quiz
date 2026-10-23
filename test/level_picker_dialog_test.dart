import 'package:devops_quiz/widgets/level_picker_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('500-level picker fits phones, landscape and larger text', (
    tester,
  ) async {
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    tester.view.devicePixelRatio = 1;
    for (final size in [
      const Size(320, 568),
      const Size(390, 844),
      const Size(844, 390),
      const Size(1280, 800),
    ]) {
      for (final scale in [1.0, 1.8]) {
        tester.view.physicalSize = size;
        await tester.pumpWidget(
          MaterialApp(
            builder: (context, child) => MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: TextScaler.linear(scale)),
              child: child!,
            ),
            home: Scaffold(
              body: Builder(
                builder: (context) => TextButton(
                  onPressed: () => showDialog<int>(
                    context: context,
                    builder: (_) => LevelPickerDialog(
                      levelCount: 500,
                      isUnlocked: (_) => true,
                      currentLevel: 500,
                    ),
                  ),
                  child: const Text('Open'),
                ),
              ),
            ),
          ),
        );
        await tester.tap(find.text('Open'));
        await tester.pumpAndSettle();
        final first = find.byKey(const ValueKey('game-level-1'));
        expect(tester.getSize(first).width, greaterThanOrEqualTo(48));
        await tester.scrollUntilVisible(
          find.byKey(const ValueKey('game-level-500')),
          250,
          maxScrolls: 300,
          scrollable: find.descendant(
            of: find.byKey(const ValueKey('level-picker-grid')),
            matching: find.byType(Scrollable),
          ),
        );
        expect(find.text('500'), findsOneWidget);
        expect(tester.takeException(), isNull, reason: '$size scale $scale');
        await tester.tap(find.text('Close'));
        await tester.pumpAndSettle();
        await tester.pumpWidget(const SizedBox.shrink());
      }
    }
  });

  testWidgets('locked levels are disabled and an unlocked choice is returned', (
    tester,
  ) async {
    int? selected;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Builder(
            builder: (context) => TextButton(
              onPressed: () async {
                selected = await showDialog<int>(
                  context: context,
                  builder: (_) => LevelPickerDialog(
                    levelCount: 12,
                    isUnlocked: (level) => level <= 3,
                    isCompleted: (level) => level < 3,
                    currentLevel: 3,
                  ),
                );
              },
              child: const Text('Open'),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(
      tester
          .widget<FilledButton>(find.byKey(const ValueKey('game-level-4')))
          .onPressed,
      isNull,
    );
    await tester.tap(find.byKey(const ValueKey('game-level-3')));
    await tester.pumpAndSettle();
    expect(selected, 3);
  });
}
