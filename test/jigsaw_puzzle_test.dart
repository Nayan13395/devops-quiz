import 'package:devops_quiz/screens/games_screen.dart';
import 'package:devops_quiz/screens/jigsaw_puzzle_screen.dart';
import 'package:devops_quiz/services/jigsaw_puzzle_service.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('later jigsaw levels use interlocking piece outlines', () {
    expect(JigsawPuzzleService.usesJigsawPieces(20), isFalse);
    expect(JigsawPuzzleService.usesJigsawPieces(21), isTrue);
    expect(JigsawPuzzleService.usesJigsawPieces(100), isTrue);

    final path = JigsawPieceClipper(
      seed: 21,
      gridSize: 4,
      piece: 5,
    ).getClip(const Size(100, 100));
    final perimeter = path.computeMetrics().fold<double>(
      0,
      (total, metric) => total + metric.length,
    );

    expect(path.contains(const Offset(50, 50)), isTrue);
    expect(perimeter, greaterThan(400));
  });

  test(
    '100 jigsaw levels have valid progressive grids and movable layouts',
    () {
      expect(JigsawPuzzleService.levelCount, 100);
      expect(JigsawPuzzleService.gridSizeFor(1), 3);
      expect(JigsawPuzzleService.gridSizeFor(20), 3);
      expect(JigsawPuzzleService.gridSizeFor(21), 4);
      expect(JigsawPuzzleService.gridSizeFor(75), 4);
      expect(JigsawPuzzleService.gridSizeFor(76), 5);
      expect(JigsawPuzzleService.gridSizeFor(100), 5);

      for (int level = 1; level <= JigsawPuzzleService.levelCount; level++) {
        final tiles = JigsawPuzzleService.shuffledTiles(level);
        final count = JigsawPuzzleService.gridSizeFor(level);
        expect(tiles, hasLength(count * count), reason: 'Level $level');
        expect(tiles.toSet(), hasLength(count * count), reason: 'Level $level');
        expect(
          JigsawPuzzleService.isSolved(tiles),
          isFalse,
          reason: 'Level $level',
        );
      }
    },
  );

  test(
    'jigsaw levels unlock in order and reward each completion once',
    () async {
      SharedPreferences.setMockInitialValues({});
      final solvedBoard = List<int>.generate(9, (index) => index);

      expect(await JigsawPuzzleService.completeLevel(2, solvedBoard), isFalse);
      expect(await JigsawPuzzleService.completeLevel(1, solvedBoard), isTrue);
      expect(
        await PointService.getTotalPoints(),
        JigsawPuzzleService.rewardPerLevel,
      );
      expect(await JigsawPuzzleService.completeLevel(1, solvedBoard), isFalse);
      expect(await JigsawPuzzleService.completeLevel(2, solvedBoard), isTrue);
      expect(
        await PointService.getTotalPoints(),
        2 * JigsawPuzzleService.rewardPerLevel,
      );
      expect(await JigsawPuzzleService.loadCompletedLevels(), {1, 2});
    },
  );

  testWidgets('level 21 displays clipped jigsaw pieces', (tester) async {
    SharedPreferences.setMockInitialValues({
      'jigsaw_completed_levels_v1': [
        for (int level = 1; level <= 20; level++) '$level',
      ],
      'jigsaw_selected_level_v1': 21,
    });
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(390, 844);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MaterialApp(home: JigsawPuzzleScreen()));
    await tester.pumpAndSettle();

    expect(find.text('Puzzle 21'), findsOneWidget);
    expect(find.byKey(const ValueKey('jigsaw-piece-clip-5')), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('correctly placed pieces turn green and stay fixed', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(390, 844);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final tiles = JigsawPuzzleService.shuffledTiles(1);
    final target = tiles.indexed.firstWhere((entry) => entry.$1 != entry.$2).$1;
    final source = tiles.indexOf(target);

    await tester.pumpWidget(const MaterialApp(home: JigsawPuzzleScreen()));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(ValueKey('jigsaw-slot-$target')));
    await tester.tap(find.byKey(ValueKey('jigsaw-slot-$source')));
    await tester.pumpAndSettle();

    final frame = tester.widget<AnimatedContainer>(
      find.descendant(
        of: find.byKey(ValueKey('jigsaw-slot-$target')),
        matching: find.byType(AnimatedContainer),
      ),
    );
    final decoration = frame.foregroundDecoration! as BoxDecoration;
    final draggable = tester.widget<LongPressDraggable<int>>(
      find.byKey(ValueKey('jigsaw-drag-$target')),
    );
    expect(decoration.color, Colors.green.withValues(alpha: 0.24));
    expect(decoration.border!.top.color, Colors.green.shade600);
    expect(draggable.maxSimultaneousDrags, 0);

    await tester.tap(find.byKey(ValueKey('jigsaw-slot-$target')));
    await tester.tap(find.byKey(const ValueKey('jigsaw-slot-0')));
    await tester.pumpAndSettle();
    expect(find.textContaining('1 moves'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Jigsaw Puzzle is searchable, opens, and supports tile swaps', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(390, 844);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MaterialApp(home: GamesScreen()));
    await tester.pumpAndSettle();
    await tester.enterText(
      find.byKey(const ValueKey('games-search')),
      'jigsaw',
    );
    await tester.pumpAndSettle();
    expect(find.text('Jigsaw Puzzle'), findsOneWidget);
    expect(find.textContaining('100 puzzles'), findsOneWidget);

    await tester.tap(find.text('Jigsaw Puzzle'));
    await tester.pumpAndSettle();
    expect(find.byType(JigsawPuzzleScreen), findsOneWidget);
    expect(find.text('Puzzle 1'), findsOneWidget);
    expect(find.byKey(const ValueKey('jigsaw-slot-0')), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('jigsaw-slot-0')));
    await tester.tap(find.byKey(const ValueKey('jigsaw-slot-1')));
    await tester.pumpAndSettle();
    expect(find.textContaining('1 moves'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('solving a picture awards points and unlocks the next puzzle', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(390, 844);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final arrangement = JigsawPuzzleService.shuffledTiles(1).toList();

    await tester.pumpWidget(const MaterialApp(home: JigsawPuzzleScreen()));
    await tester.pumpAndSettle();

    for (int target = 0; target < arrangement.length; target++) {
      final source = arrangement.indexOf(target);
      if (source == target) continue;

      await tester.tap(find.byKey(ValueKey('jigsaw-slot-$target')));
      await tester.tap(find.byKey(ValueKey('jigsaw-slot-$source')));
      await tester.pumpAndSettle();

      final temporary = arrangement[target];
      arrangement[target] = arrangement[source];
      arrangement[source] = temporary;
    }

    expect(find.text('Puzzle 1 complete!'), findsOneWidget);
    expect(
      await PointService.getTotalPoints(),
      JigsawPuzzleService.rewardPerLevel,
    );

    await tester.tap(find.text('Next puzzle'));
    await tester.pumpAndSettle();
    expect(find.text('Puzzle 2'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
