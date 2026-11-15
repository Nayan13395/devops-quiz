import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('framework fallback policy preserves reading direction', () {
    expect(
      frameworkControlFallbackLocale(const Locale('sd')),
      const Locale('ur'),
    );
    expect(
      frameworkControlFallbackLocale(const Locale('doi')),
      const Locale('en'),
    );
  });

  testWidgets(
    'framework controls use native strings or the documented fallback',
    (tester) async {
      for (final locale in AppLocalizations.supportedLocales) {
        late MaterialLocalizations material;
        late CupertinoLocalizations cupertino;
        late WidgetsLocalizations widgets;

        await tester.pumpWidget(
          MaterialApp(
            locale: locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: appLocalizationDelegates,
            home: Builder(
              builder: (context) {
                material = MaterialLocalizations.of(context);
                cupertino = CupertinoLocalizations.of(context);
                widgets = WidgetsLocalizations.of(context);
                return const Scaffold(body: Text('control probe'));
              },
            ),
          ),
        );
        await tester.pumpAndSettle();

        final fallback = frameworkControlFallbackLocale(locale);
        final materialLocale =
            GlobalMaterialLocalizations.delegate.isSupported(locale)
            ? locale
            : fallback;
        final expectedMaterial = await GlobalMaterialLocalizations.delegate
            .load(materialLocale);
        expect(
          material.cancelButtonLabel,
          expectedMaterial.cancelButtonLabel,
          reason: '${locale.languageCode} Material cancel label',
        );
        expect(
          material.okButtonLabel,
          expectedMaterial.okButtonLabel,
          reason: '${locale.languageCode} Material OK label',
        );
        expect(
          material.formatFullDate(DateTime(2026, 11, 14)),
          expectedMaterial.formatFullDate(DateTime(2026, 11, 14)),
          reason: '${locale.languageCode} Material date',
        );
        expect(
          material.alertDialogLabel,
          expectedMaterial.alertDialogLabel,
          reason: '${locale.languageCode} Material dialog semantics',
        );
        expect(
          material.modalBarrierDismissLabel,
          expectedMaterial.modalBarrierDismissLabel,
          reason: '${locale.languageCode} Material barrier semantics',
        );

        final cupertinoLocale =
            GlobalCupertinoLocalizations.delegate.isSupported(locale)
            ? locale
            : fallback;
        final expectedCupertino = await GlobalCupertinoLocalizations.delegate
            .load(cupertinoLocale);
        expect(
          cupertino.cancelButtonLabel,
          expectedCupertino.cancelButtonLabel,
          reason: '${locale.languageCode} Cupertino cancel label',
        );
        expect(
          cupertino.datePickerHourSemanticsLabel(11),
          expectedCupertino.datePickerHourSemanticsLabel(11),
          reason: '${locale.languageCode} Cupertino date semantics',
        );
        expect(
          cupertino.alertDialogLabel,
          expectedCupertino.alertDialogLabel,
          reason: '${locale.languageCode} Cupertino dialog semantics',
        );
        expect(
          cupertino.modalBarrierDismissLabel,
          expectedCupertino.modalBarrierDismissLabel,
          reason: '${locale.languageCode} Cupertino barrier semantics',
        );

        final widgetsLocale =
            GlobalWidgetsLocalizations.delegate.isSupported(locale)
            ? locale
            : fallback;
        final expectedWidgets = await GlobalWidgetsLocalizations.delegate.load(
          widgetsLocale,
        );
        expect(
          widgets.textDirection,
          expectedWidgets.textDirection,
          reason: '${locale.languageCode} control direction',
        );
        expect(
          widgets.copyButtonLabel,
          expectedWidgets.copyButtonLabel,
          reason: '${locale.languageCode} text-editing accessibility label',
        );

        await tester.pumpWidget(const SizedBox.shrink());
      }
    },
  );
}
