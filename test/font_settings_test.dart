import 'dart:convert';

import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/font_provider.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/language_provider.dart';
import 'package:devops_quiz/screens/font_screen.dart';
import 'package:devops_quiz/screens/games_screen.dart';
import 'package:devops_quiz/screens/settings_screen.dart';
import 'package:devops_quiz/services/font_service.dart';
import 'package:devops_quiz/theme_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget _app(
  FontProvider font,
  Widget home, {
  Locale locale = const Locale('en'),
}) => MultiProvider(
  providers: [
    ChangeNotifierProvider<FontProvider>.value(value: font),
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ChangeNotifierProvider(create: (_) => LanguageProvider()),
  ],
  child: Consumer2<ThemeProvider, FontProvider>(
    builder: (context, theme, font, _) => MaterialApp(
      locale: locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: appLocalizationDelegates,
      theme: font.applyTo(theme.themeData, locale: locale),
      home: home,
    ),
  ),
);

ThemeData _themeOf(WidgetTester tester, Type screen) =>
    Theme.of(tester.element(find.byType(screen)));

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setupFirebaseCoreMocks();
  setUpAll(() async {
    await Firebase.initializeApp();
  });
  setUp(() {
    SharedPreferences.setMockInitialValues({'user_login_type': 'guest'});
  });

  test('ATF: bundled Regular and Bold fonts load offline', () async {
    final manifest =
        jsonDecode(await rootBundle.loadString('FontManifest.json')) as List;
    final assets = {
      for (final entry in manifest.cast<Map<String, dynamic>>())
        entry['family'] as String: (entry['fonts'] as List)
            .cast<Map<String, dynamic>>(),
    };
    for (final font in AppFont.values.where((font) => font.family != null)) {
      final faces = assets[font.family];
      expect(faces, isNotNull, reason: font.family);
      for (final (suffix, weight) in [('Regular', 400), ('Bold', 700)]) {
        final face = faces!.singleWhere(
          (face) => (face['asset'] as String).endsWith('-$suffix.ttf'),
        );
        expect(face['weight'] ?? 400, weight, reason: '${font.family}/$suffix');
        final data = await rootBundle.load(face['asset'] as String);
        expect(data.lengthInBytes, greaterThan(12), reason: face['asset']);
        expect(data.getUint32(0), 0x00010000, reason: face['asset']);
        await (FontLoader(
          'ATF-${font.family}-$suffix',
        )..addFont(Future.value(data))).load();
      }
    }
  });

  test(
    'unknown saved fonts fall back without losing other preferences',
    () async {
      SharedPreferences.setMockInitialValues({
        FontService.selectedFontKey: 'retired-font',
        'total_points': 250,
      });
      final fonts = FontProvider(initialFont: AppFont.poppins);
      await fonts.loadFont();
      expect(fonts.selectedFont, AppFont.system);
      final prefs = await SharedPreferences.getInstance();
      expect(prefs.getInt('total_points'), 250);
    },
  );

  testWidgets(
    'ATF: font switching preserves RTL game search and compact cards',
    (tester) async {
      tester.view.physicalSize = const Size(430, 900);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final fonts = FontProvider();
      const locale = Locale('sd');
      final title = lookupAppLocalizations(locale).gameUiSpinWheel;
      await tester.pumpWidget(_app(fonts, const GamesScreen(), locale: locale));
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const ValueKey('games-search')), title);
      await tester.pumpAndSettle();
      final state = tester.state(find.byType(GamesScreen));
      for (final font in [...AppFont.values.skip(1), AppFont.system]) {
        await tester.runAsync(() => fonts.setFont(font));
        await tester.pumpAndSettle();
        expect(tester.state(find.byType(GamesScreen)), same(state));
        expect(
          tester
              .widget<EditableText>(find.byType(EditableText))
              .controller
              .text,
          title,
        );
        final card = find.widgetWithText(Card, title);
        expect(card, findsOneWidget);
        expect(tester.getSize(card).height, lessThanOrEqualTo(100));
        expect(Directionality.of(tester.element(card)), TextDirection.rtl);
        if (font.family != null) {
          expect(
            _themeOf(tester, GamesScreen).textTheme.bodyMedium?.fontFamily,
            font.family,
          );
        }
        expect(tester.takeException(), isNull, reason: font.name);
      }
    },
  );

  testWidgets('Settings Change Font applies app-wide and persists', (
    tester,
  ) async {
    final fonts = FontProvider();
    await tester.pumpWidget(_app(fonts, const SettingsScreen()));
    await tester.pumpAndSettle();
    final defaultFamily = _themeOf(
      tester,
      SettingsScreen,
    ).textTheme.bodyMedium?.fontFamily;

    final tile = find.byKey(const ValueKey('settings-change-font'));
    await tester.scrollUntilVisible(tile, 200);
    expect(
      find.descendant(of: tile, matching: find.text('Font')),
      findsOneWidget,
    );
    expect(
      find.descendant(of: tile, matching: find.text('System Default')),
      findsOneWidget,
    );
    await tester.tap(tile);
    await tester.pumpAndSettle();
    expect(find.text('Change Font'), findsOneWidget);
    expect(find.textContaining('Preview:'), findsNothing);

    await tester.tap(find.byKey(const ValueKey('font-option-poppins')));
    await tester.pumpAndSettle();

    final theme = _themeOf(tester, FontScreen);
    expect(theme.textTheme.bodyMedium?.fontFamily, 'Poppins');
    expect(theme.textTheme.titleLarge?.fontFamily, 'Poppins');
    expect(theme.appBarTheme.titleTextStyle?.fontFamily, 'Poppins');
    expect(
      theme.textTheme.bodyMedium?.fontFamilyFallback,
      contains('Noto Sans Devanagari'),
    );
    expect(
      find.descendant(
        of: find.byKey(const ValueKey('font-option-poppins')),
        matching: find.byIcon(Icons.check_circle),
      ),
      findsOneWidget,
    );

    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getString(FontService.selectedFontKey), 'poppins');
    final reloaded = FontProvider();
    await reloaded.loadFont();
    expect(reloaded.selectedFont, AppFont.poppins);

    await tester.tap(find.byKey(const ValueKey('font-option-system')));
    await tester.pumpAndSettle();
    expect(
      _themeOf(tester, FontScreen).textTheme.bodyMedium?.fontFamily,
      defaultFamily,
    );
    expect(prefs.getString(FontService.selectedFontKey), 'system');
  });

  test('font labels are localized for every supported locale', () {
    final english = lookupAppLocalizations(const Locale('en'));
    for (final locale in AppLocalizations.supportedLocales) {
      final l10n = lookupAppLocalizations(locale);
      final labels = [
        l10n.fontSettingsTitle,
        l10n.fontChangeFont,
        l10n.fontSystemDefault,
        l10n.fontPreview,
        l10n.fontPreviewSample,
        l10n.fontSelected,
        l10n.fontLatinOnlyNote,
        for (final font in AppFont.values) font.description(l10n),
      ];
      expect(labels.every((label) => label.trim().isNotEmpty), isTrue);
      if (locale.languageCode != 'en') {
        expect(l10n.fontChangeFont, isNot(english.fontChangeFont));
        expect(l10n.fontPreviewSample, isNot(english.fontPreviewSample));
      }
    }
  });

  test('fallback chain puts the locale script first', () {
    expect(
      FontService.fallbackFamiliesFor(const Locale('hi')).first,
      'Noto Sans Devanagari',
    );
    expect(
      FontService.fallbackFamiliesFor(const Locale('ta')).first,
      'Noto Sans Tamil',
    );
    expect(
      FontService.fallbackFamiliesFor(const Locale('ur')).first,
      'Noto Nastaliq Urdu',
    );
    expect(
      FontService.fallbackFamiliesFor(const Locale('ja')).first,
      'Noto Sans CJK JP',
    );
    final english = FontService.fallbackFamiliesFor(const Locale('en'));
    expect(english, contains('Noto Sans Bengali'));
    expect(english.toSet().length, english.length);
  });

  for (final code in ['ar', 'ur', 'sd']) {
    testWidgets('Change Font renders RTL for $code', (tester) async {
      final locale = Locale(code);
      final l10n = lookupAppLocalizations(locale);
      final fonts = FontProvider(initialFont: AppFont.montserrat);
      await tester.pumpWidget(_app(fonts, const FontScreen(), locale: locale));
      await tester.pumpAndSettle();

      expect(
        Directionality.of(tester.element(find.byType(FontScreen))),
        TextDirection.rtl,
      );
      expect(find.text(l10n.fontChangeFont), findsOneWidget);
      expect(find.text(l10n.fontSystemDefault), findsOneWidget);
      final theme = _themeOf(tester, FontScreen);
      expect(theme.textTheme.bodyLarge?.fontFamily, 'Montserrat');
      expect(
        theme.textTheme.bodyLarge?.fontFamilyFallback?.first,
        FontService.fallbackFamiliesFor(locale).first,
      );
      expect(tester.takeException(), isNull);
    });
  }
}
