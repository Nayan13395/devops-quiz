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
    expect(find.text('Jigsaw and Arrow Puzzle'), findsOneWidget);
    expect(find.text('32 interface languages'), findsOneWidget);
    expect(find.text('More themes, plus theme search'), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text('Course completion certificates'),
      180,
      scrollable: find.byType(Scrollable).last,
    );
    expect(find.text('Course completion certificates'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('Developer birthday'),
      180,
      scrollable: find.byType(Scrollable).last,
    );
    expect(find.text('Developer birthday'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
