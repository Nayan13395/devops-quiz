import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/widgets/daily_login_bonus_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget _app(String language, {double scale = 1}) => MaterialApp(
  locale: Locale(language),
  supportedLocales: AppLocalizations.supportedLocales,
  localizationsDelegates: appLocalizationDelegates,
  builder: (context, child) => MediaQuery(
    data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(scale)),
    child: child!,
  ),
  home: Scaffold(
    body: Builder(
      builder: (context) => TextButton(
        onPressed: () => showDailyLoginBonusDialog(context, 25),
        child: const Text('Open'),
      ),
    ),
  ),
);

void main() {
  testWidgets('daily bonus dialog localizes content and closes normally', (
    tester,
  ) async {
    const locale = Locale('hi');
    final l10n = lookupAppLocalizations(locale);
    await tester.pumpWidget(_app(locale.languageCode));
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();

    expect(find.text(l10n.sharedDialogDailyLoginBonus), findsOneWidget);
    expect(find.text(l10n.sharedDialogThanksForComingBack), findsOneWidget);
    expect(find.text(l10n.gameUiPOINTS), findsOneWidget);
    expect(find.text(l10n.sharedDialogDailyRewardAdded), findsOneWidget);
    expect(find.text('Daily Login Bonus'), findsNothing);

    await tester.tap(find.text(l10n.sharedDialogAwesome));
    await tester.pumpAndSettle();
    expect(find.byType(Dialog), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('daily bonus dialog fits a small screen with large text', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 568);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(_app('de', scale: 1.8));
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });
}
