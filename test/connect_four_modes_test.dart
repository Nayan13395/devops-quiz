import 'package:devops_quiz/screens/connect_four_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('bot blocks an immediate vertical win', (tester) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: ConnectFourScreen()));
    await tester.tap(find.text('Vs Bot'));
    await tester.pumpAndSettle();

    for (final column in [0, 0, 0]) {
      await tester.tap(find.byKey(ValueKey('connect-four-cell-$column')));
      await tester.pumpAndSettle();
    }

    expect(find.text('Your turn'), findsOneWidget);
    final blockingDisc = tester.widget<AnimatedContainer>(
      find.byKey(const ValueKey('connect-four-disc-14')),
    );
    expect(
      (blockingDisc.decoration! as BoxDecoration).color,
      Colors.amber.shade400,
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('2 Player mode alternates without an automatic move', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: ConnectFourScreen()));

    expect(find.text('Red to move'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('connect-four-cell-0')));
    await tester.pump(const Duration(milliseconds: 500));

    expect(find.text('Yellow to move'), findsOneWidget);
    expect(find.text('2 Player'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('mode selector fits a narrow phone viewport', (tester) async {
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 568);
    SharedPreferences.setMockInitialValues({});

    await tester.pumpWidget(const MaterialApp(home: ConnectFourScreen()));

    expect(find.text('Vs Bot'), findsOneWidget);
    expect(find.text('2 Player'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
