import 'dart:io';

import 'package:devops_quiz/data/spot_picture_catalog.dart';
import 'package:devops_quiz/screens/games_screen.dart';
import 'package:devops_quiz/screens/spot_the_difference_screen.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:devops_quiz/services/spot_difference_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_platform_interface/shared_preferences_platform_interface.dart';

const _completedAssetsKey = 'spot_difference_completed_assets_v3';
const _previousCompletedAssetsKey = 'spot_difference_completed_assets_v2';
const _legacyCompletedKey = 'spot_difference_completed_levels_v1';
const _dialogKey = ValueKey('difference-completion-dialog');
const _nextKey = ValueKey('difference-completion-next');
const _levelsKey = ValueKey('difference-completion-levels');

void _setSpotPreferences([Map<String, Object> values = const {}]) {
  SharedPreferences.setMockInitialValues({
    'game_sound_enabled': false,
    ...values,
  });
}

List<String> _completedAssets(Iterable<int> numbers) => [
  for (final number in numbers)
    SpotDifferenceService.levels[number - 1].leftAsset,
];

class _ProgressStore extends InMemorySharedPreferencesStore {
  _ProgressStore() : super.withData({'flutter.game_sound_enabled': false});

  bool failProgressWrites = false;

  @override
  Future<bool> setValue(String valueType, String key, Object value) async {
    if (failProgressWrites && key == 'flutter.$_completedAssetsKey') {
      return false;
    }
    return super.setValue(valueType, key, value);
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUp(_setSpotPreferences);

  test('catalog contains 100 new scenes with progressive difficulty', () {
    expect(SpotDifferenceService.levelCount, 100);
    final levels = SpotDifferenceService.levels;
    expect(levels.map((level) => level.leftAsset).toSet(), hasLength(100));
    expect(levels.map((level) => level.title).toSet(), hasLength(100));
    expect(levels.take(25).map((level) => level.difficulty).toSet(), {'easy'});
    expect(levels.skip(25).take(40).map((level) => level.difficulty).toSet(), {
      'medium',
    });
    expect(levels.skip(65).map((level) => level.difficulty).toSet(), {'hard'});
    expect(levels.first.title, '3D Scene 1');
    expect(levels.last.title, '3D Scene 100');
    expect(spotPictureCatalog, hasLength(100));
  });

  test(
    'every pair has five reachable targets and a unique sequential number',
    () async {
      final assets = (await AssetManifest.loadFromAssetBundle(
        rootBundle,
      )).listAssets();
      for (final (index, level) in SpotDifferenceService.levels.indexed) {
        expect(level.number, index + 1);
        final expectedDifferences =
            const {1, 5, 10, 15, 20, 45, 50, 75, 85, 90}.contains(level.number)
            ? 5
            : 4;
        expect(
          level.differences,
          hasLength(expectedDifferences),
          reason: level.title,
        );
        expect(File(level.leftAsset).existsSync(), isTrue);
        expect(File(level.rightAsset).existsSync(), isTrue);
        expect(assets, containsAll([level.leftAsset, level.rightAsset]));
        expect(level.leftAsset, isNot(level.rightAsset));
        expect(level.aspectRatio, greaterThan(0));
        for (final spot in level.differences) {
          expect(
            level.spotAt(spot.left, rightImage: false)?.feature,
            spot.feature,
          );
          expect(
            level.spotAt(spot.right, rightImage: true)?.feature,
            spot.feature,
          );
        }
        expect(level.spotAt(const Offset(-1, -1), rightImage: false), isNull);
      }
    },
  );

  test(
    'completion persists by picture and unlocks in order without replay awards',
    () async {
      expect(SpotDifferenceService.nextUncompletedLevel({}), 1);
      expect(SpotDifferenceService.isUnlocked(0, {}), isFalse);
      expect(SpotDifferenceService.isUnlocked(101, {100}), isFalse);
      expect(await SpotDifferenceService.completeLevel(2), isFalse);
      expect(await SpotDifferenceService.completeLevel(1), isTrue);
      expect(await SpotDifferenceService.completeLevel(1), isFalse);
      expect(await SpotDifferenceService.loadCompletedLevels(), {1});
      expect(SpotDifferenceService.isUnlocked(2, {1}), isTrue);
      expect(SpotDifferenceService.nextUncompletedLevel({1}), 2);
      expect(await SpotDifferenceService.completeLevel(2), isTrue);
      final prefs = await SharedPreferences.getInstance();
      expect(
        prefs.getStringList(_completedAssetsKey),
        containsAll(_completedAssets([1, 2])),
      );
      expect(prefs.getStringList(_legacyCompletedKey), isNull);
    },
  );

  test(
    'old catalog progress is reset without changing earned points',
    () async {
      _setSpotPreferences({
        _legacyCompletedKey: ['1', '2'],
        _previousCompletedAssetsKey: [
          'assets/spot_difference/level_001_left.webp',
        ],
        'total_points': 300,
      });
      expect(await SpotDifferenceService.loadCompletedLevels(), isEmpty);
      expect(await PointService.getTotalPoints(), 300);
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getStringList(_completedAssetsKey), isEmpty);
      expect(prefs.getStringList(_legacyCompletedKey), ['1', '2']);
      expect(prefs.getStringList(_previousCompletedAssetsKey), isNotEmpty);
    },
  );

  test(
    'failed migration or completion writes cannot leave cached false progress',
    () async {
      final store = _ProgressStore()..failProgressWrites = true;
      SharedPreferencesStorePlatform.instance = store;
      await expectLater(
        SpotDifferenceService.loadCompletedLevels(),
        throwsStateError,
      );
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getStringList(_completedAssetsKey), isNull);
      store.failProgressWrites = false;
      expect(await SpotDifferenceService.loadCompletedLevels(), isEmpty);
      store.failProgressWrites = true;
      await expectLater(
        SpotDifferenceService.completeLevel(1),
        throwsStateError,
      );
      expect(await SpotDifferenceService.loadCompletedLevels(), isEmpty);
      store.failProgressWrites = false;
      expect(await SpotDifferenceService.completeLevel(1), isTrue);
      expect(await SpotDifferenceService.completeLevel(1), isFalse);
    },
  );

  testWidgets(
    'each clear shows 100 points and Next level, without double rewards',
    (tester) async {
      _phone(tester);
      await tester.pumpWidget(
        const MaterialApp(home: SpotTheDifferenceScreen()),
      );
      await pumpPictures(tester);
      expect(find.text('3D Scene 1'), findsOneWidget);

      for (var number = 1; number <= 2; number++) {
        await _solve(tester, number);
        expect(find.byKey(_dialogKey), findsOneWidget);
        expect(find.text('Level $number complete!'), findsOneWidget);
        expect(find.text('You earned 100 points!'), findsOneWidget);
        expect(await PointService.getTotalPoints(), number * 100);
        expect(
          (await PointService.getEarnedPoints())[PointSource.game],
          number * 100,
        );
        expect(
          await SpotDifferenceService.loadCompletedLevels(),
          contains(number),
        );

        await tester.tapAt(const Offset(2, 2));
        await tester.pumpAndSettle();
        await tester.binding.handlePopRoute();
        await tester.pumpAndSettle();
        expect(find.byKey(_dialogKey), findsOneWidget);
        expect(await PointService.getTotalPoints(), number * 100);

        await tester.tap(find.byKey(_nextKey));
        await pumpPictures(tester);
        final nextDifferenceCount =
            SpotDifferenceService.levels[number].differences.length;
        expect(find.text('Level ${number + 1} / 100'), findsOneWidget);
        expect(find.text('0 / $nextDifferenceCount'), findsOneWidget);
        expect(find.textContaining('Hints: 0'), findsOneWidget);
        expect(find.byKey(_dialogKey), findsNothing);
      }
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'replayed or migrated pictures show a popup without another reward',
    (tester) async {
      _setSpotPreferences({
        'game_sound_enabled': false,
        'total_points': 100,
        _completedAssetsKey: _completedAssets([1]),
      });
      _phone(tester);
      await tester.pumpWidget(
        const MaterialApp(home: SpotTheDifferenceScreen()),
      );
      await pumpPictures(tester);
      expect(find.text('Level 2 / 100'), findsOneWidget);
      await tester.tap(find.byTooltip('Choose level'));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('spot-difference-level-1')));
      await pumpPictures(tester);
      await _solve(tester, 1);
      expect(find.byKey(_dialogKey), findsOneWidget);
      expect(find.text('You earned 100 points!'), findsNothing);
      expect(
        find.textContaining('No additional points on replay'),
        findsOneWidget,
      );
      expect(await PointService.getTotalPoints(), 100);
      await tester.tap(find.byKey(_levelsKey));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('level-picker-grid')), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey('spot-difference-level-2')));
      await pumpPictures(tester);
      expect(find.text('Level 2 / 100'), findsOneWidget);
      expect(find.text('0 / 4'), findsOneWidget);
    },
  );

  testWidgets('old progress opens the first new picture', (tester) async {
    _setSpotPreferences({
      'game_sound_enabled': false,
      _legacyCompletedKey: ['1'],
      _previousCompletedAssetsKey: [
        'assets/spot_difference/level_001_left.webp',
      ],
    });
    await tester.pumpWidget(const MaterialApp(home: SpotTheDifferenceScreen()));
    await pumpPictures(tester);
    expect(await SpotDifferenceService.loadCompletedLevels(), isEmpty);
    expect(find.text('Level 1 / 100'), findsOneWidget);
    expect(find.text('3D Scene 1'), findsOneWidget);
  });

  testWidgets('paid hint debits 20 once and completion still awards 100', (
    tester,
  ) async {
    _setSpotPreferences({'total_points': 20, 'game_sound_enabled': false});
    _phone(tester);
    await tester.pumpWidget(const MaterialApp(home: SpotTheDifferenceScreen()));
    await pumpPictures(tester);
    await tester.tap(find.byKey(const ValueKey('difference-hint')));
    await tester.pump();
    expect(await PointService.getTotalPoints(), 0);
    expect(find.textContaining('Hints: 1'), findsOneWidget);
    expect(find.text('0 / 5'), findsOneWidget);
    await _solve(tester, 1);
    expect(find.text('You earned 100 points!'), findsOneWidget);
    expect(await PointService.getTotalPoints(), 100);
    await tester.tap(find.byKey(_nextKey));
    await pumpPictures(tester);
    await tester.pump(const Duration(seconds: 3));
    expect(find.textContaining('Hints: 0'), findsOneWidget);
    expect(await PointService.getTotalPoints(), 100);
    expect(tester.takeException(), isNull);
  });

  testWidgets('instruction uses each level actual difference count', (
    tester,
  ) async {
    _setSpotPreferences({
      'game_sound_enabled': false,
      _completedAssetsKey: _completedAssets([1]),
    });
    await tester.pumpWidget(const MaterialApp(home: SpotTheDifferenceScreen()));
    await pumpPictures(tester);
    expect(
      find.text('Find 4 differences. Tap each one in either picture.'),
      findsOneWidget,
    );

    await tester.tap(find.byTooltip('Choose level'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('spot-difference-level-1')));
    await pumpPictures(tester);
    expect(
      find.text('Find 5 differences. Tap each one in either picture.'),
      findsOneWidget,
    );
  });

  testWidgets(
    'last level shows completion and Levels instead of a nonexistent next',
    (tester) async {
      _setSpotPreferences({
        'game_sound_enabled': false,
        _completedAssetsKey: _completedAssets([
          for (var n = 1; n < 100; n++) n,
        ]),
      });
      _phone(tester);
      await tester.pumpWidget(
        const MaterialApp(home: SpotTheDifferenceScreen()),
      );
      await pumpPictures(tester);
      expect(find.text('Level 100 / 100'), findsOneWidget);
      await _solve(tester, 100);
      expect(find.text('Level 100 complete!'), findsOneWidget);
      expect(
        find.descendant(
          of: find.byKey(_dialogKey),
          matching: find.text('You completed every picture!'),
        ),
        findsOneWidget,
      );
      expect(find.byKey(_nextKey), findsNothing);
      expect(await PointService.getTotalPoints(), 100);
      await tester.tap(find.byKey(_levelsKey));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('level-picker-grid')), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets(
    'failed progress save shows an error, not a reward or success popup',
    (tester) async {
      final store = _ProgressStore();
      SharedPreferencesStorePlatform.instance = store;
      await tester.pumpWidget(
        const MaterialApp(home: SpotTheDifferenceScreen()),
      );
      await pumpPictures(tester);
      store.failProgressWrites = true;
      await _solve(tester, 1);
      expect(find.byKey(_dialogKey), findsNothing);
      expect(
        find.text('Could not save progress. Please try again.'),
        findsOneWidget,
      );
      expect(await PointService.getTotalPoints(), 0);
      expect(await SpotDifferenceService.loadCompletedLevels(), isEmpty);
      store.failProgressWrites = false;
      await tester.tap(find.byTooltip('Choose level'));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('spot-difference-level-1')));
      await pumpPictures(tester);
      await _solve(tester, 1);
      expect(find.text('You earned 100 points!'), findsOneWidget);
      expect(await PointService.getTotalPoints(), 100);
    },
  );

  testWidgets('searches and opens from the Games hub', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: GamesScreen()));
    await tester.pumpAndSettle();
    await tester.enterText(
      find.byKey(const ValueKey('games-search')),
      'spot the difference',
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('Spot the Difference'));
    await pumpPictures(tester);
    expect(find.byType(SpotTheDifferenceScreen), findsOneWidget);
    expect(find.text('3D Scene 1'), findsOneWidget);
  });

  testWidgets(
    'both panels support repeated taps, varied aspect ratios and completion',
    (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(1280, 900);
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(tester.view.resetPhysicalSize);
      for (final number in [
        1,
        2,
        3,
        8,
        13,
        20,
        21,
        41,
        42,
        49,
        65,
        66,
        70,
        71,
        77,
        78,
        79,
        80,
        for (var n = 81; n <= 100; n++) n,
      ]) {
        _setSpotPreferences({
          'game_sound_enabled': false,
          _completedAssetsKey: _completedAssets([
            for (var n = 1; n < number; n++) n,
          ]),
        });
        await tester.pumpWidget(
          const MaterialApp(home: SpotTheDifferenceScreen()),
        );
        await pumpPictures(tester);
        final level = SpotDifferenceService.levels[number - 1];
        final rect = tester.getRect(
          find.byKey(const ValueKey('difference-image-right')),
        );
        expect(rect.width / rect.height, closeTo(level.aspectRatio, 0.001));
        await _tapSpot(tester, level, 0, right: true);
        expect(find.text('1 / ${level.differences.length}'), findsOneWidget);
        await _tapSpot(tester, level, 0, right: true);
        expect(find.text('1 / ${level.differences.length}'), findsOneWidget);
        for (var i = 1; i < level.differences.length; i++) {
          await _tapSpot(tester, level, i, right: i.isEven);
        }
        expect(find.byKey(_dialogKey), findsOneWidget);
        expect(find.text('You earned 100 points!'), findsOneWidget);
        expect(
          await SpotDifferenceService.loadCompletedLevels(),
          contains(number),
        );
        expect(await PointService.getTotalPoints(), 100);
        expect(tester.takeException(), isNull);
        await tester.pumpWidget(const SizedBox());
      }
    },
  );

  testWidgets('completion dialog fits compact screens with enlarged text', (
    tester,
  ) async {
    _phone(tester, size: const Size(320, 568));
    await tester.pumpWidget(
      MaterialApp(
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: const TextScaler.linear(2)),
          child: child!,
        ),
        home: const SpotTheDifferenceScreen(),
      ),
    );
    await pumpPictures(tester);
    await _solve(tester, 1);
    expect(find.byKey(_dialogKey), findsOneWidget);
    expect(tester.takeException(), isNull);
    await tester.ensureVisible(find.byKey(_nextKey));
    await tester.tap(find.byKey(_nextKey));
    await pumpPictures(tester);
    expect(find.text('Level 2 / 100'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'zoom stays synchronized, preserves taps, and resets on next level',
    (tester) async {
      tester.view.devicePixelRatio = 1;
      tester.view.physicalSize = const Size(1280, 900);
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(tester.view.resetPhysicalSize);
      await tester.pumpWidget(
        const MaterialApp(home: SpotTheDifferenceScreen()),
      );
      await pumpPictures(tester);
      final left = tester.widget<InteractiveViewer>(
        find.byKey(const ValueKey('difference-zoom-left')),
      );
      final right = tester.widget<InteractiveViewer>(
        find.byKey(const ValueKey('difference-zoom-right')),
      );
      expect(
        left.transformationController,
        same(right.transformationController),
      );
      await tester.tap(find.byKey(const ValueKey('difference-zoom')));
      await tester.pumpAndSettle();
      expect(left.transformationController!.value.getMaxScaleOnAxis(), 2);
      await _tapSpot(
        tester,
        SpotDifferenceService.levels.first,
        0,
        right: true,
      );
      expect(find.text('1 / 5'), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey('difference-zoom')));
      await tester.pumpAndSettle();
      expect(left.transformationController!.value.getMaxScaleOnAxis(), 1);
      await _solve(tester, 1);
      await tester.tap(find.byKey(_nextKey));
      await pumpPictures(tester);
      expect(left.transformationController!.value.getMaxScaleOnAxis(), 1);
      expect(find.text('0 / 4'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
}

void _phone(WidgetTester tester, {Size size = const Size(390, 844)}) {
  tester.view.devicePixelRatio = 1;
  tester.view.physicalSize = size;
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);
}

Future<void> _tapSpot(
  WidgetTester tester,
  SpotDifferenceLevel level,
  int index, {
  bool right = false,
}) async {
  final image = find.byKey(
    ValueKey('difference-image-${right ? 'right' : 'left'}'),
  );
  final spot = level.differences[index];
  final position = right ? spot.right : spot.left;
  Offset point() {
    final rect = tester.getRect(image);
    return Offset(
      rect.left + position.dx * rect.width,
      rect.top + position.dy * rect.height,
    );
  }

  final scroll = tester
      .state<ScrollableState>(
        find.ancestor(of: image, matching: find.byType(Scrollable)).first,
      )
      .position;
  final height = tester.view.physicalSize.height / tester.view.devicePixelRatio;
  scroll.jumpTo(
    (scroll.pixels + point().dy - height / 2).clamp(
      scroll.minScrollExtent,
      scroll.maxScrollExtent,
    ),
  );
  await tester.pump();
  await tester.tapAt(point());
  await tester.pumpAndSettle();
}

Future<void> _solve(WidgetTester tester, int number) async {
  final level = SpotDifferenceService.levels[number - 1];
  for (var index = 0; index < level.differences.length; index++) {
    await _tapSpot(tester, level, index);
  }
}

Future<void> pumpPictures(WidgetTester tester) async {
  await tester.runAsync(() async {
    for (var attempt = 0; attempt < 150; attempt++) {
      await tester.pump();
      if (find
              .byKey(const ValueKey('difference-image-left'))
              .evaluate()
              .isNotEmpty &&
          find
              .byKey(const ValueKey('difference-image-right'))
              .evaluate()
              .isNotEmpty) {
        return;
      }
      await Future<void>.delayed(const Duration(milliseconds: 20));
    }
    throw StateError('Spot the Difference pictures did not finish loading');
  });
  await tester.pumpAndSettle();
  expect(find.byKey(const ValueKey('difference-image-left')), findsOneWidget);
  expect(find.byKey(const ValueKey('difference-image-right')), findsOneWidget);
}
