import 'package:devops_quiz/screens/scratch_card_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('active scratch rectangle uses the DevOps logo as its cover', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 568);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MaterialApp(home: ScratchCardScreen()));
    await tester.pumpAndSettle();

    final logo = tester.widget<Image>(
      find.byKey(const ValueKey('scratch-card-logo')),
    );
    expect((logo.image as AssetImage).assetName, 'assets/icon/app_icon.png');
    expect(logo.fit, BoxFit.contain);
    final gesture = tester.widget<GestureDetector>(
      find.byKey(const ValueKey('scratch-card-cover')),
    );
    expect(gesture.onPanStart, isNotNull);
    expect(gesture.onPanUpdate, isNotNull);
    expect(tester.takeException(), isNull);
  });
}
