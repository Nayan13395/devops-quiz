import 'package:devops_quiz/screens/true_false_blitz_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('timer defaults to 45 seconds and allows up to three minutes', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: TrueFalseBlitzScreen()));
    await tester.pumpAndSettle();
    expect(find.text('0:45'), findsOneWidget);
    final slider = tester.widget<Slider>(
      find.byKey(const ValueKey('blitz-timer-slider')),
    );
    expect(slider.min, 15);
    expect(slider.max, 180);
    slider.onChanged!(180);
    await tester.pump();
    expect(find.text('3:00'), findsOneWidget);
    await tester.ensureVisible(find.text('Start'));
    await tester.tap(find.text('Start'));
    await tester.pump();
    expect(find.textContaining('180 s'), findsOneWidget);
    expect(
      tester
          .widget<LinearProgressIndicator>(find.byType(LinearProgressIndicator))
          .value,
      1,
    );
    await tester.tap(find.text('True'));
    await tester.pump(const Duration(milliseconds: 250));
    final timeText = tester
        .widgetList<Text>(find.byType(Text))
        .map((text) => text.data ?? '')
        .firstWhere((text) => text.endsWith(' s'));
    expect(timeText, anyOf(contains('180 s'), contains('177 s')));
    await tester.pump(const Duration(seconds: 180));
    await tester.pumpAndSettle();
    expect(find.text("Time's Up!"), findsOneWidget);
    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getString('true_false_blitz_last_played'), isNotNull);
  });

  testWidgets('short duration counts down using the selected duration', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    await tester.pumpWidget(const MaterialApp(home: TrueFalseBlitzScreen()));
    await tester.pumpAndSettle();
    tester
        .widget<Slider>(find.byKey(const ValueKey('blitz-timer-slider')))
        .onChanged!(15);
    await tester.pump();
    await tester.ensureVisible(find.text('Start'));
    await tester.tap(find.text('Start'));
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
    expect(find.textContaining('14 s'), findsOneWidget);
    expect(
      tester
          .widget<LinearProgressIndicator>(find.byType(LinearProgressIndicator))
          .value,
      closeTo(14 / 15, 0.001),
    );
    await tester.pumpWidget(const SizedBox.shrink());
  });
}
