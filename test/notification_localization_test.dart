import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/l10n/notification_localizations.dart';
import 'package:devops_quiz/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget _app(Locale locale) => MaterialApp(
  locale: locale,
  localizationsDelegates: appLocalizationDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  home: const NotificationScreen(),
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('notification screen follows locale changes', (tester) async {
    final now = DateTime.now();
    SharedPreferences.setMockInitialValues({
      'languageCode': 'en',
      'daily_login_bonus_last_date':
          '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}',
    });

    await tester.pumpWidget(_app(const Locale('en')));
    await tester.pumpAndSettle();
    expect(find.text('Notifications'), findsOneWidget);

    final hindi = await NotificationLocalizations.load(const Locale('hi'));
    await tester.pumpWidget(_app(const Locale('hi')));
    await tester.pumpAndSettle();
    expect(find.text(hindi.text('screen.title')), findsOneWidget);
    expect(find.text(hindi.text('screen.readAll')), findsOneWidget);
    expect(find.text('Notifications'), findsNothing);
  });
}
