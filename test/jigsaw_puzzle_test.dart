import 'dart:math';
import 'dart:ui' as ui;

import 'package:devops_quiz/screens/games_screen.dart';
import 'package:devops_quiz/screens/jigsaw_puzzle_screen.dart';
import 'package:devops_quiz/services/jigsaw_puzzle_service.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void setJigsawPreferences([Map<String, Object> values = const {}]) {
  SharedPreferences.setMockInitialValues(values);
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('Jigsaw uses all 300 dedicated source images', () async {
    final manifest = await AssetManifest.loadFromAssetBundle(rootBundle);
    final assets = JigsawPuzzleService.artworkAssets;
    expect(assets, hasLength(300));
    expect(assets.toSet(), hasLength(300));
    expect(
      assets,
      orderedEquals([
        for (var level = 1; level <= 300; level++) 'assets/Jigsaw/$level.webp',
      ]),
    );
    for (final asset in assets) {
      expect(manifest.listAssets(), contains(asset));
      final data = await rootBundle.load(asset);
      final codec = await ui.instantiateImageCodec(
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
      );
      final frame = await codec.getNextFrame();
      expect(frame.image.width, 1536, reason: asset);
      expect(frame.image.height, 1024, reason: asset);
      frame.image.dispose();
      codec.dispose();
    }
    for (var level = 1; level <= JigsawPuzzleService.levelCount; level++) {
      expect(JigsawPuzzleService.artworkFor(level), assets[level - 1]);
    }
    expect(() => JigsawPuzzleService.artworkFor(0), throwsRangeError);
    expect(() => JigsawPuzzleService.artworkFor(301), throwsRangeError);
  }, timeout: const Timeout(Duration(minutes: 2)));

  test(
    'all grid sizes reconstruct exactly the same picture as the preview',
    () async {
      final data = await rootBundle.load(JigsawPuzzleService.artworkFor(1));
      final codec = await ui.instantiateImageCodec(
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
      );
      final image = (await codec.getNextFrame()).image;
      codec.dispose();
      addTearDown(image.dispose);

      Future<List<int>> render(int grid, int width, int height) async {
        final recorder = ui.PictureRecorder();
        final canvas = Canvas(recorder);
        final tileSize = Size(width / grid, height / grid);
        for (var tile = 0; tile < grid * grid; tile++) {
          canvas.save();
          canvas.translate(
            (tile % grid) * tileSize.width,
            (tile ~/ grid) * tileSize.height,
          );
          JigsawImageTilePainter(
            image: image,
            gridSize: grid,
            tile: tile,
          ).paint(canvas, tileSize);
          canvas.restore();
        }
        final picture = recorder.endRecording();
        final rendered = await picture.toImage(width, height);
        final bytes = await rendered.toByteData(
          format: ui.ImageByteFormat.rawRgba,
        );
        final result = bytes!.buffer.asUint8List().toList();
        rendered.dispose();
        picture.dispose();
        return result;
      }

      for (final (width, height) in [(120, 120), (120, 180), (180, 120)]) {
        final preview = await render(1, width, height);
        for (final grid in [3, 4, 5]) {
          expect(
            await render(grid, width, height),
            preview,
            reason: '$grid x $grid board at $width x $height',
          );
        }
      }
    },
  );

  test('all 300 levels use progressive cut counts and movable layouts', () {
    expect(JigsawPuzzleService.levelCount, 300);
    final cutCounts = <int>{};
    expect(JigsawPuzzleService.gridSizeFor(1), 2);
    expect(JigsawPuzzleService.gridSizeFor(15), 2);
    expect(JigsawPuzzleService.gridSizeFor(16), 3);
    expect(JigsawPuzzleService.gridSizeFor(100), 3);
    expect(JigsawPuzzleService.gridSizeFor(101), 4);
    expect(JigsawPuzzleService.gridSizeFor(200), 4);
    expect(JigsawPuzzleService.gridSizeFor(201), 5);
    expect(JigsawPuzzleService.gridSizeFor(300), 5);

    for (int level = 1; level <= JigsawPuzzleService.levelCount; level++) {
      final tiles = JigsawPuzzleService.shuffledTiles(level);
      final count = JigsawPuzzleService.gridSizeFor(level);
      cutCounts.add(count);
      expect(JigsawPuzzleService.gridSizeFor(level), count);
      expect(tiles, hasLength(count * count), reason: 'Level $level');
      expect(tiles.toSet(), hasLength(count * count), reason: 'Level $level');
      expect(
        JigsawPuzzleService.isSolved(tiles),
        isFalse,
        reason: 'Level $level',
      );
      expect(
        tiles.indexed.every((entry) => entry.$1 != entry.$2),
        isTrue,
        reason: 'Level $level starts with a piece already in place',
      );
    }
    expect(cutCounts, {2, 3, 4, 5});
  });

  test('reshuffling with a random source produces varied derangements', () {
    final arrangements = <String>{
      JigsawPuzzleService.shuffledTiles(16).join(','),
    };
    for (var seed = 0; seed < 6; seed++) {
      final tiles = JigsawPuzzleService.shuffledTiles(
        16,
        random: Random(seed),
      );
      expect(tiles.indexed.every((entry) => entry.$1 != entry.$2), isTrue);
      arrangements.add(tiles.join(','));
    }
    expect(arrangements.length, greaterThan(3));
  });

  test('piece cuts are flat outside and complementary between neighbors', () {
    for (final level in [1, 15, 16, 100, 101, 200, 201, 300]) {
      final grid = JigsawPuzzleService.gridSizeFor(level);
      for (var tile = 0; tile < grid * grid; tile++) {
        final row = tile ~/ grid;
        final column = tile % grid;
        final edges = JigsawPuzzleService.pieceEdgesFor(level, tile);
        if (row == 0) expect(edges.top, 0);
        if (row == grid - 1) expect(edges.bottom, 0);
        if (column == 0) expect(edges.left, 0);
        if (column == grid - 1) expect(edges.right, 0);
        if (row < grid - 1) {
          expect(
            edges.bottom,
            -JigsawPuzzleService.pieceEdgesFor(level, tile + grid).top,
          );
        }
        if (column < grid - 1) {
          expect(
            edges.right,
            -JigsawPuzzleService.pieceEdgesFor(level, tile + 1).left,
          );
        }
      }
    }
  });

  test(
    'jigsaw levels unlock in order and reward each completion once',
    () async {
      setJigsawPreferences();
      List<int> solvedBoard(int level) {
        final size = JigsawPuzzleService.gridSizeFor(level);
        return List<int>.generate(size * size, (index) => index);
      }

      expect(
        await JigsawPuzzleService.completeLevel(2, solvedBoard(2)),
        isFalse,
      );
      expect(
        await JigsawPuzzleService.completeLevel(1, solvedBoard(1)),
        isTrue,
      );
      expect(
        await PointService.getTotalPoints(),
        JigsawPuzzleService.rewardPerLevel,
      );
      expect(
        await JigsawPuzzleService.completeLevel(1, solvedBoard(1)),
        isFalse,
      );
      expect(
        await JigsawPuzzleService.completeLevel(2, solvedBoard(2)),
        isTrue,
      );
      expect(
        await PointService.getTotalPoints(),
        2 * JigsawPuzzleService.rewardPerLevel,
      );
      expect(await JigsawPuzzleService.loadCompletedLevels(), {1, 2});
    },
  );

  test('old jigsaw progress is reset for the replacement artwork', () async {
    setJigsawPreferences({
      'jigsaw_completed_levels_v1': [for (var n = 1; n <= 170; n++) '$n'],
      'jigsaw_selected_level_v1': 170,
      'jigsaw_completed_levels_v2': [for (var n = 1; n <= 100; n++) '$n'],
      'jigsaw_selected_level_v2': 100,
      'total_points': 17000,
    });
    final oldCompleted = await JigsawPuzzleService.loadCompletedLevels();
    expect(oldCompleted, isEmpty);
    expect(await JigsawPuzzleService.loadSelectedLevel(), 1);
    expect(await PointService.getTotalPoints(), 17000);
  });

  testWidgets('portrait and landscape previews retain the source proportions', (
    tester,
  ) async {
    for (final level in [7, 38, 75, 100, 150, 200, 250, 300]) {
      setJigsawPreferences({
        'jigsaw_completed_levels_v3': [for (var n = 1; n < level; n++) '$n'],
        'jigsaw_selected_level_v3': level,
      });
      await tester.pumpWidget(const MaterialApp(home: JigsawPuzzleScreen()));
      await pumpArtwork(tester);
      final preview = find.byKey(const ValueKey('jigsaw-preview'));
      final painter =
          tester.widget<CustomPaint>(preview).painter!
              as JigsawImageTilePainter;
      expect(
        tester.getSize(preview).aspectRatio,
        closeTo(painter.image.width / painter.image.height, 0.001),
      );
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox());
    }
  });

  testWidgets('desktop places the reference left of the puzzle', (
    tester,
  ) async {
    setJigsawPreferences();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1400, 900);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(const MaterialApp(home: JigsawPuzzleScreen()));
    await pumpArtwork(tester);

    final preview = tester.getRect(
      find.byKey(const ValueKey('jigsaw-preview')),
    );
    final board = tester.getRect(
      find.byKey(const ValueKey('jigsaw-board-grid')),
    );
    expect(find.byKey(const ValueKey('jigsaw-desktop-layout')), findsOneWidget);
    expect(preview.center.dx, lessThan(board.center.dx));
    expect(preview.top, closeTo(board.top, 12));
  });

  testWidgets('mobile keeps the reference above the puzzle', (tester) async {
    setJigsawPreferences();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(390, 844);
    addTearDown(tester.view.resetDevicePixelRatio);
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(const MaterialApp(home: JigsawPuzzleScreen()));
    await pumpArtwork(tester);

    final preview = tester.getRect(
      find.byKey(const ValueKey('jigsaw-preview')),
    );
    final board = tester.getRect(
      find.byKey(const ValueKey('jigsaw-board-grid')),
    );
    expect(find.byKey(const ValueKey('jigsaw-desktop-layout')), findsNothing);
    expect(preview.bottom, lessThan(board.top));
  });

  testWidgets(
    'progressive cut counts render deterministic interlocking pieces',
    (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(390, 844);
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);

      for (final level in [1, 50, 100, 150, 200, 250, 300]) {
        setJigsawPreferences({
          'jigsaw_completed_levels_v3': [for (var n = 1; n < level; n++) '$n'],
          'jigsaw_selected_level_v3': level,
        });
        await tester.pumpWidget(const MaterialApp(home: JigsawPuzzleScreen()));
        await pumpArtwork(tester);
        expect(find.text('Puzzle $level'), findsOneWidget);
        final grid = find.byKey(const ValueKey('jigsaw-board-grid'));
        final gridSize = JigsawPuzzleService.gridSizeFor(level);
        final preview = tester.widget<CustomPaint>(
          find.byKey(const ValueKey('jigsaw-preview')),
        );
        final image = (preview.painter! as JigsawImageTilePainter).image;
        final boardSize = tester.getSize(grid);
        expect(
          (boardSize.width - 6) / (boardSize.height - 6),
          closeTo(image.width / image.height, .01),
        );
        // Pieces sit flush against each other: no spacing between cells.
        final slotRect = tester.getRect(
          find.byKey(const ValueKey('jigsaw-slot-0')),
        );
        final rightNeighbor = tester.getRect(
          find.byKey(const ValueKey('jigsaw-slot-1')),
        );
        expect(rightNeighbor.left - slotRect.right, closeTo(0, 0.5));
        expect(preview.foregroundPainter, isNull);
        expect(
          find.descendant(of: grid, matching: find.byType(ClipPath)),
          findsNWidgets(gridSize * gridSize),
        );
        for (var piece = 0; piece < gridSize * gridSize; piece++) {
          final clipPath = tester.widget<ClipPath>(
            find.byKey(ValueKey('jigsaw-grid-piece-$piece')),
          );
          expect(clipPath.clipper, isA<JigsawPieceClipper>());
        }
        expect(tester.takeException(), isNull);
        await tester.pumpWidget(const SizedBox());
      }
    },
  );

  testWidgets('correctly placed pieces turn green and stay fixed', (
    tester,
  ) async {
    setJigsawPreferences();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(390, 844);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final tiles = JigsawPuzzleService.shuffledTiles(1);
    final target = tiles.indexed.firstWhere((entry) => entry.$1 != entry.$2).$1;
    final source = tiles.indexOf(target);

    await tester.pumpWidget(const MaterialApp(home: JigsawPuzzleScreen()));
    await pumpArtwork(tester);
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
    setJigsawPreferences();
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
    expect(find.textContaining('HD animal'), findsOneWidget);

    await tester.tap(find.text('Jigsaw Puzzle'));
    await pumpArtwork(tester);
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
    setJigsawPreferences();
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(390, 844);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final arrangement = JigsawPuzzleService.shuffledTiles(1).toList();

    await tester.pumpWidget(const MaterialApp(home: JigsawPuzzleScreen()));
    await pumpArtwork(tester);

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
    await pumpArtwork(tester);
    expect(find.text('Puzzle 2'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'preview and pieces share one decoded image, including after shuffle',
    (tester) async {
      setJigsawPreferences();
      await tester.pumpWidget(const MaterialApp(home: JigsawPuzzleScreen()));
      await pumpArtwork(tester);

      void expectSharedImage() {
        final previewFinder = find.byKey(const ValueKey('jigsaw-preview'));
        expect(tester.getSize(previewFinder).aspectRatio, 1.5);
        final painters = tester
            .widgetList<CustomPaint>(find.byType(CustomPaint))
            .map((widget) => widget.painter)
            .whereType<JigsawImageTilePainter>()
            .toList();
        final gridSize = JigsawPuzzleService.gridSizeFor(1);
        expect(painters, hasLength(gridSize * gridSize + 1));
        final image = painters.first.image;
        expect(image.width, 1536);
        expect(
          painters.every((painter) => identical(painter.image, image)),
          isTrue,
        );
      }

      expectSharedImage();
      await tester.tap(find.byTooltip('Shuffle pieces'));
      await pumpArtwork(tester);
      expectSharedImage();
      expect(find.textContaining('0 moves'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('missing artwork shows an error and retry restores the board', (
    tester,
  ) async {
    setJigsawPreferences();
    final asset = JigsawPuzzleService.artworkFor(1);
    final bytes = await rootBundle.load(asset);
    rootBundle.evict(asset);
    var fail = true;
    final messenger = tester.binding.defaultBinaryMessenger;
    messenger.setMockMessageHandler('flutter/assets', (message) async {
      if (const StringCodec().decodeMessage(message) == asset && !fail) {
        return bytes;
      }
      return null;
    });
    addTearDown(() {
      messenger.setMockMessageHandler('flutter/assets', null);
      rootBundle.evict(asset);
    });

    await tester.pumpWidget(const MaterialApp(home: JigsawPuzzleScreen()));
    await pumpArtwork(tester);
    expect(find.text('Unable to load the puzzle picture.'), findsOneWidget);
    expect(find.byKey(const ValueKey('jigsaw-slot-0')), findsNothing);
    fail = false;
    await tester.tap(find.text('Retry'));
    await pumpArtwork(tester);
    expect(find.byKey(const ValueKey('jigsaw-slot-0')), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}

Future<void> pumpArtwork(WidgetTester tester) async {
  await tester.runAsync(() async {
    final deadline = DateTime.now().add(const Duration(seconds: 10));
    do {
      await tester.pump();
      if (find.byKey(const ValueKey('jigsaw-preview')).evaluate().isNotEmpty ||
          find
              .text('Unable to load the puzzle picture.')
              .evaluate()
              .isNotEmpty) {
        return;
      }
      await Future<void>.delayed(const Duration(milliseconds: 10));
    } while (DateTime.now().isBefore(deadline));
    throw StateError('Jigsaw artwork did not finish loading');
  });
  await tester.pumpAndSettle();
}
