import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/language_provider.dart';
import 'package:devops_quiz/screens/login_screen.dart';
import 'package:devops_quiz/screens/settings_screen.dart';
import 'package:devops_quiz/screens/welcome_screen.dart';
import 'package:devops_quiz/services/national_day_service.dart';
import 'package:devops_quiz/theme_provider.dart';
import 'package:devops_quiz/widgets/animated_welcome_greeting.dart';
import 'package:devops_quiz/widgets/animated_devops_logo.dart';
import 'package:devops_quiz/widgets/celebration_country_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/test.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Widget _app({
  String? greeting = 'Hi Avery',
  Locale locale = const Locale('en'),
  bool disableAnimations = false,
  bool accessibleNavigation = false,
  bool tickersEnabled = true,
  double textScale = 1,
  Brightness brightness = Brightness.light,
  Widget? home,
}) => MaterialApp(
  locale: locale,
  localizationsDelegates: appLocalizationDelegates,
  supportedLocales: AppLocalizations.supportedLocales,
  theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.indigo,
      brightness: brightness,
    ),
  ),
  builder: (context, child) => MediaQuery(
    data: MediaQuery.of(context).copyWith(
      disableAnimations: disableAnimations,
      accessibleNavigation: accessibleNavigation,
      textScaler: TextScaler.linear(textScale),
    ),
    child: TickerMode(enabled: tickersEnabled, child: child!),
  ),
  home:
      home ??
      Builder(
        builder: (context) => Scaffold(
          body: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: RepaintBoundary(
                key: const ValueKey('greeting-capture'),
                child: ColoredBox(
                  color: Theme.of(context).colorScheme.surface,
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 460),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: AnimatedWelcomeGreeting(
                        greeting: greeting,
                        message: AppLocalizations.of(
                          context,
                        )!.welcomeToDevOpsQuiz,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
);

double _opacity(WidgetTester tester, String part) => tester
    .widget<FadeTransition>(find.byKey(ValueKey('welcome-$part-entrance')))
    .opacity
    .value;

Future<Uint8List> _capture(WidgetTester tester, {String? output}) async =>
    (await tester.runAsync(() async {
      final boundary = tester.renderObject<RenderRepaintBoundary>(
        find.byKey(const ValueKey('greeting-capture')),
      );
      final image = await boundary.toImage();
      try {
        final pixels = (await image.toByteData(
          format: ui.ImageByteFormat.rawRgba,
        ))!;
        if (output != null) {
          final png = (await image.toByteData(format: ui.ImageByteFormat.png))!;
          final file = File(output);
          await file.parent.create(recursive: true);
          await file.writeAsBytes(png.buffer.asUint8List());
        }
        return pixels.buffer.asUint8List();
      } finally {
        image.dispose();
      }
    }))!;

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setupFirebaseCoreMocks();
  setUpAll(() async {
    await Firebase.initializeApp();
  });

  testWidgets(
    'larger welcome logo fits phones and tablets without widening controls',
    (tester) async {
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetDevicePixelRatio);
      addTearDown(tester.view.resetPhysicalSize);
      final now = DateTime.now();
      final today =
          '${now.year}-${now.month.toString().padLeft(2, '0')}-'
          '${now.day.toString().padLeft(2, '0')}';
      for (final width in [320.0, 800.0, 1440.0]) {
        tester.view.physicalSize = Size(width, 900);
        SharedPreferences.setMockInitialValues({
          'user_login_type': 'guest',
          'daily_login_bonus_last_date': today,
          'developer_birthday_popup_shown_${now.year}': true,
        });
        await tester.pumpWidget(
          _app(
            home: const WelcomeScreen(),
            disableAnimations: true,
            textScale: width == 320 ? 2 : 1,
          ),
        );
        for (
          var attempt = 0;
          attempt < 30 && find.text('Start Quiz').evaluate().isEmpty;
          attempt++
        ) {
          await tester.pump(const Duration(milliseconds: 100));
        }
        final logo = tester.getRect(find.byType(AnimatedDevOpsLogo));
        final expectedWidth =
            (kIsWeb && width >= 1100 ? width / 2 - 24 : width - 24).clamp(
              0.0,
              720.0,
            );
        expect(logo.width, closeTo(expectedWidth, .01));
        expect(
          logo.height,
          closeTo(logo.width / DevOpsLogoPainter.sourceSize.aspectRatio, .01),
        );
        expect(logo.left, greaterThanOrEqualTo(0));
        expect(logo.right, lessThanOrEqualTo(width));
        final start = find.widgetWithText(ElevatedButton, 'Start Quiz');
        await tester.ensureVisible(start);
        await tester.pump();
        expect(tester.getSize(start).width, lessThanOrEqualTo(560));
        expect(tester.takeException(), isNull);
        await tester.pumpWidget(const SizedBox());
      }
    },
  );

  testWidgets('name enters before the message and both settle in place', (
    tester,
  ) async {
    await tester.pumpWidget(_app());
    expect(_opacity(tester, 'name'), 0);
    expect(_opacity(tester, 'message'), 0);

    await tester.pump(const Duration(milliseconds: 200));
    expect(_opacity(tester, 'name'), greaterThan(0));
    expect(_opacity(tester, 'message'), 0);
    await tester.pump(const Duration(milliseconds: 400));
    expect(_opacity(tester, 'name'), greaterThan(_opacity(tester, 'message')));
    expect(_opacity(tester, 'message'), greaterThan(0));
    await tester.pump(const Duration(milliseconds: 600));
    expect(_opacity(tester, 'name'), 1);
    expect(_opacity(tester, 'message'), 1);
    for (final slide in tester.widgetList<SlideTransition>(
      find.descendant(
        of: find.byType(AnimatedWelcomeGreeting),
        matching: find.byType(SlideTransition),
      ),
    )) {
      expect(slide.position.value, Offset.zero);
    }
    expect(find.text('Hi Avery'), findsOneWidget);
    expect(find.text('Welcome to DevOps Quiz'), findsOneWidget);
    await tester.pumpWidget(const SizedBox());
    expect(tester.binding.transientCallbackCount, 0);
  });

  testWidgets(
    'light and dark shimmer visibly animates without moving the text',
    (tester) async {
      for (final brightness in Brightness.values) {
        await tester.pumpWidget(_app(brightness: brightness));
        await tester.pump(const Duration(milliseconds: 1700));
        final nameRect = tester.getRect(
          find.byKey(const ValueKey('welcome-name')),
        );
        final messageRect = tester.getRect(
          find.byKey(const ValueKey('welcome-message')),
        );
        final first = await _capture(tester);
        await tester.pump(const Duration(milliseconds: 800));
        final second = await _capture(
          tester,
          output: 'build/welcome-greeting-${brightness.name}.png',
        );
        expect(second, isNot(orderedEquals(first)));
        expect(
          tester.getRect(find.byKey(const ValueKey('welcome-name'))),
          nameRect,
        );
        expect(
          tester.getRect(find.byKey(const ValueKey('welcome-message'))),
          messageRect,
        );
        expect(_opacity(tester, 'name'), 1);
        expect(_opacity(tester, 'message'), 1);
        expect(tester.takeException(), isNull);
        await tester.pumpWidget(const SizedBox());
      }
    },
  );

  testWidgets(
    'reduced motion and accessible navigation show static text immediately',
    (tester) async {
      for (final disableAnimations in [true, false]) {
        await tester.pumpWidget(
          _app(
            disableAnimations: disableAnimations,
            accessibleNavigation: !disableAnimations,
          ),
        );
        expect(_opacity(tester, 'name'), 1);
        expect(_opacity(tester, 'message'), 1);
        expect(find.byType(ShaderMask), findsNothing);
        await tester.pumpAndSettle();
        expect(tester.binding.transientCallbackCount, 0);
        await tester.pumpWidget(const SizedBox());
      }
    },
  );

  testWidgets('motion preferences can change while the greeting is entering', (
    tester,
  ) async {
    await tester.pumpWidget(_app());
    await tester.pump(const Duration(milliseconds: 350));
    expect(_opacity(tester, 'message'), lessThan(1));
    await tester.pumpWidget(_app(disableAnimations: true));
    await tester.pumpAndSettle();
    expect(_opacity(tester, 'name'), 1);
    expect(_opacity(tester, 'message'), 1);
    expect(find.byType(ShaderMask), findsNothing);
    expect(tester.binding.transientCallbackCount, 0);
    await tester.pumpWidget(_app());
    await tester.pump(const Duration(milliseconds: 200));
    expect(find.byType(ShaderMask), findsNWidgets(2));
    expect(_opacity(tester, 'message'), 1);
    await tester.pumpWidget(const SizedBox());
    expect(tester.binding.transientCallbackCount, 0);
  });

  testWidgets('offscreen ticker mode pauses and resumes the entrance', (
    tester,
  ) async {
    await tester.pumpWidget(_app());
    await tester.pump(const Duration(milliseconds: 350));
    final opacity = _opacity(tester, 'message');
    await tester.pumpWidget(_app(tickersEnabled: false));
    await tester.pump(const Duration(seconds: 2));
    expect(_opacity(tester, 'message'), opacity);
    expect(tester.binding.transientCallbackCount, 0);
    await tester.pumpWidget(_app(tickersEnabled: true));
    await tester.pump(const Duration(milliseconds: 1200));
    expect(_opacity(tester, 'message'), 1);
    await tester.pumpWidget(const SizedBox());
    expect(tester.binding.transientCallbackCount, 0);
  });

  testWidgets('only changed names or localized messages replay the entrance', (
    tester,
  ) async {
    await tester.pumpWidget(_app());
    await tester.pump(const Duration(milliseconds: 1200));
    await tester.pumpWidget(_app());
    expect(_opacity(tester, 'name'), 1);
    await tester.pumpWidget(_app(greeting: 'Hi Morgan'));
    expect(find.text('Hi Avery'), findsNothing);
    expect(find.text('Hi Morgan'), findsOneWidget);
    expect(_opacity(tester, 'name'), 0);
    await tester.pump(const Duration(milliseconds: 1200));
    await tester.pumpWidget(
      _app(greeting: 'Hi Morgan', locale: const Locale('ar')),
    );
    final arabic = await AppLocalizations.delegate.load(const Locale('ar'));
    expect(find.text(arabic.welcomeToDevOpsQuiz), findsOneWidget);
    expect(_opacity(tester, 'message'), 0);
    expect(
      Directionality.of(tester.element(find.byType(AnimatedWelcomeGreeting))),
      TextDirection.rtl,
    );
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets(
    'greeting semantics are complete and not duplicated during entrance',
    (tester) async {
      final semantics = tester.ensureSemantics();
      try {
        await tester.pumpWidget(_app());
        expect(find.bySemanticsLabel('Hi Avery'), findsOneWidget);
        expect(find.bySemanticsLabel('Welcome to DevOps Quiz'), findsOneWidget);
        await tester.pump(const Duration(milliseconds: 500));
        expect(find.bySemanticsLabel('Hi Avery'), findsOneWidget);
        expect(find.bySemanticsLabel('Welcome to DevOps Quiz'), findsOneWidget);
        await tester.pumpWidget(const SizedBox());
      } finally {
        semantics.dispose();
      }
    },
  );

  testWidgets(
    'long names and all localized messages wrap at large text sizes',
    (tester) async {
      tester.view.physicalSize = const Size(320, 568);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final longName = 'Hi ${List.filled(6, 'Alexandra').join()}';
      for (final locale in AppLocalizations.supportedLocales) {
        await tester.pumpWidget(
          _app(
            greeting: longName,
            locale: locale,
            textScale: 2,
            disableAnimations: true,
          ),
        );
        await tester.pumpAndSettle();
        final l10n = await AppLocalizations.delegate.load(locale);
        expect(find.text(longName), findsOneWidget);
        expect(find.text(l10n.welcomeToDevOpsQuiz), findsOneWidget);
        expect(tester.widget<Text>(find.text(longName)).maxLines, isNull);
        expect(
          tester.getSize(find.byType(AnimatedWelcomeGreeting)).width,
          lessThanOrEqualTo(272),
        );
        expect(tester.takeException(), isNull, reason: locale.languageCode);
      }
      await tester.pumpWidget(const SizedBox());
    },
  );

  testWidgets(
    'first-launch and returning-guest screens use the animated greeting',
    (tester) async {
      final now = DateTime.now();
      final today =
          '${now.year}-${now.month.toString().padLeft(2, '0')}-'
          '${now.day.toString().padLeft(2, '0')}';
      for (final guest in [false, true]) {
        SharedPreferences.setMockInitialValues({
          if (guest) 'user_login_type': 'guest',
          'daily_login_bonus_last_date': today,
          'developer_birthday_popup_shown_${now.year}': true,
        });
        await tester.pumpWidget(
          _app(home: const WelcomeScreen(), disableAnimations: true),
        );
        final control = find.text(guest ? 'Start Quiz' : 'Continue as Guest');
        for (
          var attempt = 0;
          attempt < 30 && control.evaluate().isEmpty;
          attempt++
        ) {
          await tester.pump(const Duration(milliseconds: 100));
        }
        expect(control, findsOneWidget);
        final greeting = tester.widget<AnimatedWelcomeGreeting>(
          find.byType(AnimatedWelcomeGreeting),
        );
        expect(greeting.greeting, guest ? 'Welcome' : isNull);
        expect(greeting.message, 'Welcome to DevOps Quiz');
        expect(_opacity(tester, 'message'), 1);
        expect(find.byType(AnimatedDevOpsLogo), findsOneWidget);
        expect(
          find.byKey(const ValueKey('welcome-logo-static')),
          findsOneWidget,
        );
        expect(find.byKey(const ValueKey('welcome-logo-flow')), findsNothing);
        expect(
          find.descendant(
            of: find.byType(AnimatedDevOpsLogo),
            matching: find.byType(ScaleTransition),
          ),
          findsNothing,
        );
        expect(tester.takeException(), isNull);
        await tester.pumpWidget(const SizedBox());
        await tester.pump();
      }
    },
  );

  testWidgets(
    'welcome and login screens render localized guest and sign-in actions across languages',
    (tester) async {
      tester.view.physicalSize = const Size(1024, 1200);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      final now = DateTime.now();
      final today =
          '${now.year}-${now.month.toString().padLeft(2, '0')}-'
          '${now.day.toString().padLeft(2, '0')}';

      for (final code in ['en', 'hi', 'mr', 'es', 'fr', 'ar', 'ja', 'mni', 'sat']) {
        final locale = Locale(code);
        final l10n = await AppLocalizations.delegate.load(locale);

        // 1. First-launch WelcomeScreen (sign-in options)
        SharedPreferences.setMockInitialValues({
          'daily_login_bonus_last_date': today,
          'developer_birthday_popup_shown_${now.year}': true,
        });
        await tester.pumpWidget(
          _app(
            locale: locale,
            home: const WelcomeScreen(),
            disableAnimations: true,
          ),
        );
        for (
          var attempt = 0;
          attempt < 30 &&
              find.text(l10n.accountWelcomeContinueAsGuest).evaluate().isEmpty;
          attempt++
        ) {
          await tester.pump(const Duration(milliseconds: 100));
        }
        expect(find.text(l10n.accountWelcomeContinueWithGoogle), findsOneWidget);
        expect(find.text(l10n.accountWelcomeOr), findsOneWidget);
        expect(find.text(l10n.accountWelcomeContinueAsGuest), findsOneWidget);
        expect(
          find.text(l10n.accountWelcomeSignInLaterFromProfile),
          findsOneWidget,
        );
        expect(
          find.byTooltip(l10n.accountWelcomeCountryRegion),
          findsOneWidget,
        );
        expect(tester.takeException(), isNull, reason: 'welcome first-launch $code');
        await tester.pumpWidget(const SizedBox());
        await tester.pump();

        // 2. Returning guest WelcomeScreen
        SharedPreferences.setMockInitialValues({
          'user_login_type': 'guest',
          'daily_login_bonus_last_date': today,
          'developer_birthday_popup_shown_${now.year}': true,
        });
        await tester.pumpWidget(
          _app(
            locale: locale,
            home: const WelcomeScreen(),
            disableAnimations: true,
          ),
        );
        for (
          var attempt = 0;
          attempt < 30 && find.text(l10n.startQuiz).evaluate().isEmpty;
          attempt++
        ) {
          await tester.pump(const Duration(milliseconds: 100));
        }
        expect(find.text(l10n.accountWelcomeGreetingGuest), findsOneWidget);
        expect(find.text(l10n.startQuiz), findsOneWidget);
        expect(find.text(l10n.accountWelcomePlayingAsGuest), findsOneWidget);
        expect(tester.takeException(), isNull, reason: 'welcome guest $code');
        await tester.pumpWidget(const SizedBox());
        await tester.pump();

        // 3. LoginScreen actions and soon snackbar
        await tester.pumpWidget(
          _app(
            locale: locale,
            home: const LoginScreen(),
            disableAnimations: true,
          ),
        );
        await tester.pumpAndSettle();
        expect(find.text(l10n.welcomeToDevOpsQuiz), findsOneWidget);
        expect(find.text(l10n.accountWelcomeLoginTagline), findsOneWidget);
        expect(find.text(l10n.accountWelcomeContinueWithGoogle), findsOneWidget);
        expect(find.text(l10n.accountWelcomeOr), findsOneWidget);
        expect(find.text(l10n.accountWelcomeContinueAsGuest), findsOneWidget);
        expect(
          find.text(l10n.accountWelcomeStartAsGuestAndSignInLater),
          findsOneWidget,
        );
        await tester.tap(find.text(l10n.accountWelcomeContinueWithGoogle));
        await tester.pump();
        expect(find.text(l10n.accountWelcomeGoogleSignInSoon), findsOneWidget);
        expect(tester.takeException(), isNull, reason: 'login screen $code');
        await tester.pumpWidget(const SizedBox());
        await tester.pump();

        // 4. SettingsScreen guest account card & reset confirmation dialog
        SharedPreferences.setMockInitialValues({
          'languageCode': code,
          'user_login_type': 'guest',
          'game_sound_enabled': false,
        });
        final languageProvider = LanguageProvider();
        await languageProvider.loadLanguage();
        final themeProvider = ThemeProvider();
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider<LanguageProvider>.value(
                value: languageProvider,
              ),
              ChangeNotifierProvider<ThemeProvider>.value(value: themeProvider),
            ],
            child: _app(
              locale: locale,
              home: const SettingsScreen(),
              disableAnimations: true,
            ),
          ),
        );
        for (
          var attempt = 0;
          attempt < 30 &&
              find.text(l10n.accountWelcomeResetAppData).evaluate().isEmpty;
          attempt++
        ) {
          await tester.pump(const Duration(milliseconds: 50));
        }
        expect(find.text(l10n.accountWelcomeGuest), findsOneWidget);
        expect(find.text(l10n.accountWelcomePlayingAsGuest), findsOneWidget);
        expect(
          find.text(l10n.accountWelcomeConnectGoogleAccount),
          findsOneWidget,
        );
        expect(find.text(l10n.accountWelcomeResetAppData), findsOneWidget);
        expect(
          find.text(l10n.accountWelcomeResetAppDataSubtitle),
          findsOneWidget,
        );
        expect(find.text(l10n.accountWelcomeFooter), findsOneWidget);

        await tester.ensureVisible(find.text(l10n.accountWelcomeResetAppData));
        await tester.pumpAndSettle();
        await tester.tap(find.text(l10n.accountWelcomeResetAppData));
        await tester.pumpAndSettle();
        expect(find.text(l10n.accountWelcomeResetAppTitle), findsOneWidget);
        expect(find.text(l10n.accountWelcomeResetAppMessage), findsOneWidget);
        expect(find.text(l10n.accountWelcomeResetEverything), findsOneWidget);
        expect(find.text(l10n.accountWelcomeCancel), findsOneWidget);
        await tester.tap(find.text(l10n.accountWelcomeCancel));
        await tester.pumpAndSettle();
        await tester.pumpWidget(const SizedBox());
        await tester.pump();

        // 5. SettingsScreen Google user sign-out confirmation dialog
        SharedPreferences.setMockInitialValues({
          'languageCode': code,
          'user_login_type': 'google',
          'game_sound_enabled': false,
        });
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider<LanguageProvider>.value(
                value: languageProvider,
              ),
              ChangeNotifierProvider<ThemeProvider>.value(value: themeProvider),
            ],
            child: _app(
              locale: locale,
              home: const SettingsScreen(),
              disableAnimations: true,
            ),
          ),
        );
        for (
          var attempt = 0;
          attempt < 30 &&
              find.text(l10n.accountWelcomeSignOut).evaluate().isEmpty;
          attempt++
        ) {
          await tester.pump(const Duration(milliseconds: 50));
        }
        expect(find.text(l10n.accountWelcomeUser), findsOneWidget);
        expect(find.text(l10n.accountWelcomeSignOut), findsOneWidget);
        await tester.tap(find.text(l10n.accountWelcomeSignOut));
        await tester.pumpAndSettle();
        expect(find.text(l10n.accountWelcomeSignOutTitle), findsOneWidget);
        expect(find.text(l10n.accountWelcomeSignOutMessage), findsOneWidget);
        expect(find.text(l10n.accountWelcomeCancel), findsOneWidget);
        await tester.tap(find.text(l10n.accountWelcomeCancel));
        await tester.pumpAndSettle();

        expect(tester.takeException(), isNull, reason: 'settings screen $code');
        await tester.pumpWidget(const SizedBox());
        await tester.pump();
        languageProvider.dispose();
        themeProvider.dispose();

        // 6. CelebrationCountryPicker localized dialog strings
        await tester.pumpWidget(
          _app(
            locale: locale,
            home: const Scaffold(
              body: CelebrationCountryPicker(
                countries: [
                  CelebrationCountry(code: 'IN', name: 'India', days: []),
                ],
                selectedCode: 'IN',
              ),
            ),
            disableAnimations: true,
          ),
        );
        await tester.pumpAndSettle();
        expect(find.text(l10n.accountWelcomeCountryRegion), findsOneWidget);
        expect(find.text(l10n.accountWelcomeSearchCountry), findsOneWidget);
        expect(
          find.text(l10n.accountWelcomeCountryNotSelected),
          findsOneWidget,
        );
        expect(find.text(l10n.accountWelcomeCancel), findsOneWidget);
        expect(tester.takeException(), isNull, reason: 'country picker $code');
        await tester.pumpWidget(const SizedBox());
        await tester.pump();
      }

      // 7. Verify all 32 supported locales resolve every account/welcome/error message
      for (final locale in AppLocalizations.supportedLocales) {
        final l10n = await AppLocalizations.delegate.load(locale);
        final messages = <String>[
          l10n.accountWelcomeGuest,
          l10n.accountWelcomeGuestUser,
          l10n.accountWelcomeUser,
          l10n.accountWelcomePlayingAsGuest,
          l10n.accountWelcomeConnectGoogleAccount,
          l10n.accountWelcomeGoogleConnected,
          l10n.accountWelcomeSignInCancelled,
          l10n.accountWelcomeConnectFailed('ERR_1'),
          l10n.accountWelcomeSignOut,
          l10n.accountWelcomeSignOutTitle,
          l10n.accountWelcomeSignOutMessage,
          l10n.accountWelcomeSignOutFailed('ERR_2'),
          l10n.accountWelcomeResetAppTitle,
          l10n.accountWelcomeResetAppMessage,
          l10n.accountWelcomeResetEverything,
          l10n.accountWelcomeResetFailed('ERR_3'),
          l10n.accountWelcomeCancel,
          l10n.accountWelcomeResetAppData,
          l10n.accountWelcomeResetAppDataSubtitle,
          l10n.accountWelcomeFooter,
          l10n.accountWelcomeTranslationNotAvailable,
          l10n.accountWelcomeContinueWithGoogle,
          l10n.accountWelcomeSigningIn,
          l10n.accountWelcomeOr,
          l10n.accountWelcomeContinueAsGuest,
          l10n.accountWelcomeSignInLaterFromProfile,
          l10n.accountWelcomeStartAsGuestAndSignInLater,
          l10n.accountWelcomeGreetingGuest,
          l10n.accountWelcomeUserToast('Avery'),
          l10n.accountWelcomeGoogleNoUserReturned,
          l10n.accountWelcomeErrorEmailExists,
          l10n.accountWelcomeErrorCredentialInUse,
          l10n.accountWelcomeErrorInvalidCredential,
          l10n.accountWelcomeErrorUserDisabled,
          l10n.accountWelcomeErrorOperationNotAllowed,
          l10n.accountWelcomeErrorNetwork,
          l10n.accountWelcomeErrorTooManyRequests,
          l10n.accountWelcomeErrorNoAdditionalInfo,
          l10n.accountWelcomeErrorGoogleSignInFailed('auth-err', 'details'),
          l10n.accountWelcomeErrorGoogleSignInGeneric('generic-err'),
          l10n.accountWelcomeErrorContinueAsGuest,
          l10n.accountWelcomeGoogleSignInSoon,
          l10n.accountWelcomeLoginTagline,
          l10n.accountWelcomeCountryRegion,
          l10n.accountWelcomeCountryRegionSelected('IN'),
          l10n.accountWelcomeSearchCountry,
          l10n.accountWelcomeCountryNotSelected,
          l10n.accountWelcomeWhyDevOpsQuiz,
          l10n.accountWelcomeFeatureQuestions,
          l10n.accountWelcomeFeatureLanguages,
          l10n.accountWelcomeFeatureStreaks,
          l10n.accountWelcomeFeatureGames,
          l10n.accountWelcomeFeatureCloud,
          l10n.accountWelcomeFeatureRewards,
          l10n.accountWelcomePracticeOnTheGo,
          l10n.accountWelcomeInstallAndroidPromo,
          l10n.accountWelcomeGetItOnGooglePlay,
        ];
        for (final msg in messages) {
          expect(msg.trim(), isNotEmpty, reason: locale.languageCode);
        }
        expect(
          l10n.accountWelcomeConnectFailed('ERR_1'),
          contains('ERR_1'),
          reason: locale.languageCode,
        );
        expect(
          l10n.accountWelcomeUserToast('Avery'),
          contains('Avery'),
          reason: locale.languageCode,
        );
        expect(
          l10n.accountWelcomeErrorGoogleSignInFailed('auth-err', 'details'),
          allOf(contains('auth-err'), contains('details')),
          reason: locale.languageCode,
        );
      }
    },
  );
}
