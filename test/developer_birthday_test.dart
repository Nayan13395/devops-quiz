import 'package:devops_quiz/services/developer_celebration_service.dart';
import 'package:devops_quiz/widgets/developer_birthday_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('birthday popup is claimed once each March 13', () async {
    SharedPreferences.setMockInitialValues({});

    expect(
      await DeveloperCelebrationService.claimBirthdayPopup(
        DateTime(2026, 3, 12),
      ),
      isFalse,
    );
    expect(
      await DeveloperCelebrationService.claimBirthdayPopup(
        DateTime(2026, 3, 13),
      ),
      isTrue,
    );
    expect(
      await DeveloperCelebrationService.claimBirthdayPopup(
        DateTime(2026, 3, 13),
      ),
      isFalse,
    );
    expect(
      await DeveloperCelebrationService.claimBirthdayPopup(
        DateTime(2027, 3, 13),
      ),
      isTrue,
    );
  });

  testWidgets('birthday dialog shows profile ID and opens profile action', (
    tester,
  ) async {
    var opened = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => Scaffold(
            body: TextButton(
              onPressed: () => showDialog<void>(
                context: context,
                builder: (_) => DeveloperBirthdayDialog(
                  onOpenProfile: () async => opened = true,
                ),
              ),
              child: const Text('Show birthday'),
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.text('Show birthday'));
    await tester.pumpAndSettle();
    expect(find.text('Happy Birthday, Nayan Chaudhari!'), findsOneWidget);
    expect(
      find.text('linkedin.com/in/nayan-chaudhari-200b31241'),
      findsOneWidget,
    );
    await tester.tap(find.text('Open LinkedIn profile'));
    expect(opened, isTrue);
    expect(tester.takeException(), isNull);
  });
}
