import 'package:devops_quiz/screens/games_screen.dart';
import 'package:devops_quiz/screens/spot_the_difference_screen.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:devops_quiz/services/spot_difference_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'one hundred levels have unique five-difference sets and unlock in order',
    () async {
      SharedPreferences.setMockInitialValues({});
      expect(SpotDifferenceService.levels, hasLength(100));
      expect(
        SpotDifferenceService.levels
            .map((level) => '${level.sceneIndex}:${level.palette}')
            .toSet(),
        hasLength(100),
      );
      expect(
        SpotDifferenceService.levels.map((level) => level.title).toSet(),
        hasLength(100),
      );
      expect(
        SpotDifferenceService.levels
            .map(
              (level) =>
                  level.differences
                      .map((difference) => difference.feature.name)
                      .toList()
                    ..sort(),
            )
            .map((features) => features.join(','))
            .toSet(),
        hasLength(100),
      );
      for (final level in SpotDifferenceService.levels) {
        expect(level.differences, hasLength(5), reason: level.title);
      }

      var completed = await SpotDifferenceService.loadCompletedLevels();
      expect(SpotDifferenceService.isUnlocked(1, completed), isTrue);
      expect(SpotDifferenceService.isUnlocked(2, completed), isFalse);
      expect(await SpotDifferenceService.completeLevel(2), isFalse);
      expect(await SpotDifferenceService.completeLevel(1), isTrue);
      completed = await SpotDifferenceService.loadCompletedLevels();
      expect(SpotDifferenceService.isUnlocked(2, completed), isTrue);
    },
  );

  testWidgets('finds five differences and unlocks the next level', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(390, 844);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MaterialApp(home: SpotTheDifferenceScreen()));
    await tester.pumpAndSettle();
    final image = tester.getRect(
      find.byKey(const ValueKey('difference-image-left')),
    );

    for (final difference in SpotDifferenceService.levels.first.differences) {
      await tester.tapAt(
        Offset(
          image.left + difference.left.dx * image.width,
          image.top + difference.left.dy * image.height,
        ),
      );
      await tester.pumpAndSettle();
    }

    expect(find.text('All differences found!'), findsOneWidget);
    expect(find.text('5 / 5'), findsOneWidget);
    expect(find.byKey(const ValueKey('difference-next-level')), findsOneWidget);
    expect(await SpotDifferenceService.loadCompletedLevels(), {1});
    await tester.ensureVisible(
      find.byKey(const ValueKey('difference-next-level')),
    );
    await tester.tap(find.byKey(const ValueKey('difference-next-level')));
    await tester.pumpAndSettle();
    expect(find.text('Level 2 / 100'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('hint highlights a difference without counting it as found', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(390, 844);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MaterialApp(home: SpotTheDifferenceScreen()));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('difference-hint')));
    await tester.pump();

    expect(find.textContaining('Hints: 1'), findsOneWidget);
    expect(find.text('0 / 5'), findsOneWidget);
    final image = tester.getRect(
      find.byKey(const ValueKey('difference-image-left')),
    );
    final difference = SpotDifferenceService.levels.first.differences.first;
    await tester.tapAt(
      Offset(
        image.left + difference.left.dx * image.width,
        image.top + difference.left.dy * image.height,
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('1 / 5'), findsOneWidget);
    expect(find.textContaining('Hints: 1'), findsOneWidget);
    for (final difference
        in SpotDifferenceService.levels.first.differences.skip(1)) {
      await tester.tapAt(
        Offset(
          image.left + difference.left.dx * image.width,
          image.top + difference.left.dy * image.height,
        ),
      );
      await tester.pumpAndSettle();
    }
    expect(find.text('All differences found!'), findsOneWidget);
    expect(await PointService.getTotalPoints(), 40);
    expect(tester.takeException(), isNull);
  });

  testWidgets('searches and opens from the Games hub', (tester) async {
    SharedPreferences.setMockInitialValues({});
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(1280, 900);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MaterialApp(home: GamesScreen()));
    await tester.pumpAndSettle();
    await tester.enterText(
      find.byKey(const ValueKey('games-search')),
      'spot the difference',
    );
    await tester.pumpAndSettle();
    expect(find.text('Spot the Difference'), findsOneWidget);
    await tester.tap(find.text('Spot the Difference'));
    await tester.pumpAndSettle();
    expect(find.byType(SpotTheDifferenceScreen), findsOneWidget);
    expect(find.byKey(const ValueKey('difference-image-left')), findsOneWidget);
    expect(
      find.byKey(const ValueKey('difference-image-right')),
      findsOneWidget,
    );
  });
}
