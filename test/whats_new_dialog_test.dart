import 'package:devops_quiz/widgets/whats_new_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('release sheet shows current app version and highlights', (
    tester,
  ) async {
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(900, 900);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => Scaffold(
            body: TextButton(
              onPressed: () => showWhatsNew(context),
              child: const Text('Open highlights'),
            ),
          ),
        ),
      ),
    );
    await tester.tap(find.text('Open highlights'));
    await tester.pumpAndSettle();

    expect(find.text('DevOps Quiz 1.10.3'), findsOneWidget);
    expect(find.text('Spot the Difference'), findsOneWidget);
    expect(find.text('More ways to play'), findsOneWidget);
    expect(find.text('Daily Auto Themes'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Game sound effects'),
      180,
      scrollable: find.byType(Scrollable).last,
    );
    expect(find.text('Game sound effects'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Celebrations by country'),
      180,
      scrollable: find.byType(Scrollable).last,
    );
    expect(find.text('Celebrations by country'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Scratch Card refresh'),
      180,
      scrollable: find.byType(Scrollable).last,
    );
    expect(find.text('Scratch Card refresh'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
