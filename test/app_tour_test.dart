import 'package:devops_quiz/app_localization_delegates.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'package:devops_quiz/screens/category_screen.dart';
import 'package:devops_quiz/screens/settings_screen.dart';
import 'package:devops_quiz/services/app_tour_service.dart';
import 'package:devops_quiz/services/whats_new_service.dart';
import 'package:devops_quiz/language_provider.dart';
import 'package:devops_quiz/theme_provider.dart';
import 'package:devops_quiz/widgets/app_tour.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

Widget _app(Widget home, {String language = 'en', double scale = 1}) =>
    MaterialApp(
      locale: Locale(language),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: appLocalizationDelegates,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(
          context,
        ).copyWith(textScaler: TextScaler.linear(scale)),
        child: child!,
      ),
      home: home,
    );

class _TourHarness extends StatefulWidget {
  const _TourHarness({this.replay = false});

  final bool replay;

  @override
  State<_TourHarness> createState() => _TourHarnessState();
}

class _TourHarnessState extends State<_TourHarness> {
  final first = GlobalKey();
  final second = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: Column(
        children: [
          TextButton(key: first, onPressed: () {}, child: Text(l10n.learning)),
          const Spacer(),
          TextButton(
            onPressed: () => showAppTour(context, [
              AppTourStep(
                target: first,
                title: l10n.learning,
                description: l10n.tourLearning,
              ),
              AppTourStep(
                target: second,
                title: l10n.settings,
                description: l10n.tourSettings,
              ),
            ], replay: widget.replay),
            child: Text(l10n.appTour),
          ),
          const Spacer(),
          TextButton(key: second, onPressed: () {}, child: Text(l10n.settings)),
        ],
      ),
    );
  }
}

Future<void> _waitForStep(WidgetTester tester, String progress) async {
  for (var attempt = 0; attempt < 20; attempt++) {
    await tester.pump(const Duration(milliseconds: 100));
    if (find.text(progress).evaluate().isNotEmpty) {
      await tester.pump(const Duration(milliseconds: 300));
      return;
    }
  }
  expect(find.text(progress), findsOneWidget);
}

Future<void> _tapControl(WidgetTester tester, String key) async {
  final control = find.byKey(ValueKey(key));
  await tester.ensureVisible(control);
  await tester.pump(const Duration(milliseconds: 300));
  await tester.tap(control);
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setupFirebaseCoreMocks();
  setUpAll(() async {
    await Firebase.initializeApp();
  });
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  test('tour completion persists and new installations need a tour', () async {
    expect(await AppTourService.shouldShow(), isTrue);
    await AppTourService.complete();
    expect(await AppTourService.shouldShow(), isFalse);
    expect(
      (await SharedPreferences.getInstance()).getBool(
        AppTourService.completedKey,
      ),
      isTrue,
    );
  });

  testWidgets(
    'tour can move forward, back and finish without opening targets',
    (tester) async {
      await tester.pumpWidget(_app(const _TourHarness()));
      await tester.tap(find.text('App tour'));
      await _waitForStep(tester, 'Step 1 of 2');
      expect(AppTourService.active.value, isTrue);
      expect(find.byKey(const ValueKey('tour-highlight')), findsOneWidget);
      expect(find.byKey(const ValueKey('tour-back')), findsNothing);
      await _tapControl(tester, 'tour-next');
      await _waitForStep(tester, 'Step 2 of 2');
      await _tapControl(tester, 'tour-back');
      await _waitForStep(tester, 'Step 1 of 2');
      await _tapControl(tester, 'tour-next');
      await _waitForStep(tester, 'Step 2 of 2');
      await _tapControl(tester, 'tour-next');
      await tester.pumpAndSettle();
      expect(await AppTourService.shouldShow(), isFalse);
      expect(AppTourService.active.value, isFalse);
      await tester.tap(find.text('App tour'));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('app-tour-card')), findsNothing);
    },
  );

  testWidgets('skip persists but explicit replay still opens the tour', (
    tester,
  ) async {
    await tester.pumpWidget(_app(const _TourHarness()));
    await tester.tap(find.text('App tour'));
    await _waitForStep(tester, 'Step 1 of 2');
    await _tapControl(tester, 'tour-skip');
    await tester.pumpAndSettle();
    expect(await AppTourService.shouldShow(), isFalse);
    await tester.pumpWidget(_app(const _TourHarness(replay: true)));
    await tester.tap(find.text('App tour'));
    await _waitForStep(tester, 'Step 1 of 2');
    await _tapControl(tester, 'tour-skip');
    await tester.pumpAndSettle();
    expect(AppTourService.active.value, isFalse);
  });

  testWidgets(
    'tour text and controls work in all app languages on a small screen',
    (tester) async {
      tester.view.physicalSize = const Size(320, 568);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      for (final locale in AppLocalizations.supportedLocales) {
        final l10n = await AppLocalizations.delegate.load(locale);
        await tester.pumpWidget(
          _app(
            const _TourHarness(replay: true),
            language: locale.languageCode,
            scale: 1.4,
          ),
        );
        await tester.pumpAndSettle();
        await tester.tap(find.text(l10n.appTour));
        await _waitForStep(tester, l10n.tourStep(1, 2));
        expect(find.text(l10n.tourLearning), findsOneWidget);
        await _tapControl(tester, 'tour-next');
        await _waitForStep(tester, l10n.tourStep(2, 2));
        expect(find.text(l10n.tourSettings), findsOneWidget);
        final element = tester.element(
          find.byKey(const ValueKey('app-tour-card')),
        );
        expect(
          Directionality.of(element),
          {'ar', 'ur', 'sd'}.contains(locale.languageCode)
              ? TextDirection.rtl
              : TextDirection.ltr,
        );
        await _tapControl(tester, 'tour-next');
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull, reason: locale.languageCode);
      }
    },
  );

  testWidgets('tour realigns its highlight after window resizing', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 568);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(_app(const _TourHarness()));
    await tester.tap(find.text('App tour'));
    await _waitForStep(tester, 'Step 1 of 2');
    tester.view.physicalSize = const Size(844, 390);
    await tester.pumpAndSettle();
    final highlight = tester.getRect(
      find.byKey(const ValueKey('tour-highlight')),
    );
    final target = tester.getRect(
      find.widgetWithText(TextButton, 'Learning').first,
    );
    expect(highlight, target.inflate(5));
    await _tapControl(tester, 'tour-skip');
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'category tour reaches all real drawer targets and closes the drawer',
    (tester) async {
      await AppTourService.complete();
      tester.view.physicalSize = const Size(390, 844);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.resetPhysicalSize);
      addTearDown(tester.view.resetDevicePixelRatio);
      await tester.pumpWidget(_app(const CategoryScreen(replayTour: true)));
      for (var step = 1; step <= 7; step++) {
        await _waitForStep(tester, 'Step $step of 7');
        expect(find.byKey(const ValueKey('tour-highlight')), findsOneWidget);
        expect(tester.takeException(), isNull, reason: 'step $step');
        await _tapControl(tester, 'tour-next');
      }
      await tester.pump(const Duration(milliseconds: 500));
      await tester.pump(const Duration(milliseconds: 500));
      expect(AppTourService.active.value, isFalse);
      expect(await AppTourService.shouldShow(), isFalse);
      final scaffold = tester.state<ScaffoldState>(find.byType(Scaffold).first);
      expect(scaffold.isDrawerOpen, isFalse);
      await tester.pumpWidget(const SizedBox());
    },
  );

  testWidgets('category introduction starts once on the first visit', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({
      'last_open_date': DateTime.now().toIso8601String(),
      'whats_new_seen_release': WhatsNewService.releaseId,
      'update_last_check': DateTime.now().millisecondsSinceEpoch,
    });
    await tester.pumpWidget(_app(const CategoryScreen()));
    await _waitForStep(tester, 'Step 1 of 7');
    await _tapControl(tester, 'tour-skip');
    await tester.pump(const Duration(seconds: 1));
    expect(await AppTourService.shouldShow(), isFalse);
    await tester.pumpWidget(const SizedBox());
    await tester.pumpWidget(_app(const CategoryScreen()));
    await tester.pump(const Duration(seconds: 1));
    expect(find.byKey(const ValueKey('app-tour-card')), findsNothing);
    await tester.pumpWidget(const SizedBox());
  });

  testWidgets('Settings App tour replays a completed guide', (tester) async {
    await AppTourService.complete();
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LanguageProvider()),
          ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ],
        child: _app(const SettingsScreen()),
      ),
    );
    await tester.pumpAndSettle();
    final tour = find.byKey(const ValueKey('settings-app-tour'));
    await tester.scrollUntilVisible(tour, 200);
    await tester.pumpAndSettle();
    await tester.tap(tour);
    await _waitForStep(tester, 'Step 1 of 7');
    await _tapControl(tester, 'tour-skip');
    await tester.pump(const Duration(seconds: 1));
    expect(AppTourService.active.value, isFalse);
    await tester.pumpWidget(const SizedBox());
  });
}
