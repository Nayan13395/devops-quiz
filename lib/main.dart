import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/welcome_screen.dart';
import 'theme_provider.dart';
import 'font_provider.dart';
import 'language_provider.dart';
import 'app_localization_delegates.dart';
import 'services/notification_service.dart';
import 'services/point_service.dart';
import 'services/unlock_notice_service.dart';
import 'widgets/unlock_notifications.dart';
import 'services/update_service.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ============================================
  // FIREBASE
  // ============================================

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // ============================================
  // NOTIFICATIONS
  //
  // IMPORTANT:
  // Notification failure must NEVER stop
  // the application from starting.
  // ============================================

  if (!kIsWeb) {
    try {
      await NotificationService.instance.initialize();
    } catch (e, stackTrace) {
      debugPrint('Notification initialization failed: $e');

      debugPrint('$stackTrace');
    }
  }

  // ============================================
  // LOAD USER POINTS
  // ============================================

  final int totalPoints = await PointService.getTotalPoints();
  try {
    await UnlockNoticeService.initialize();
  } catch (error, stack) {
    debugPrint('Unlock notice initialization failed: $error\n$stack');
  }

  // ============================================
  // THEME PROVIDER
  // ============================================

  final ThemeProvider themeProvider = ThemeProvider();

  await themeProvider.loadTheme(totalPoints: totalPoints);

  // ============================================
  // FONT PROVIDER
  // ============================================

  final FontProvider fontProvider = FontProvider();

  await fontProvider.loadFont();

  // ============================================
  // SYSTEM UI
  // ============================================

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  // ============================================
  // START APP
  // ============================================

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>.value(value: themeProvider),

        ChangeNotifierProvider<FontProvider>.value(value: fontProvider),

        ChangeNotifierProvider<LanguageProvider>(
          create: (_) => LanguageProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );

  // ============================================
  // PLAY STORE UPDATE CHECK (does not block start-up)
  // ============================================

  if (!kIsWeb) {
    UpdateService.checkInBackground();
  }
}

// ============================================================
// APP
// ============================================================

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  final _unlockObserver = UnlockRouteObserver();

  @override
  void dispose() {
    _unlockObserver.topRoute.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ============================================
    // WATCH THEME
    // ============================================

    final themeProvider = context.watch<ThemeProvider>();

    final fontProvider = context.watch<FontProvider>();

    // ============================================
    // WATCH LANGUAGE
    // ============================================

    final languageProvider = context.watch<LanguageProvider>();

    return MaterialApp(
      navigatorKey: _navigatorKey,
      navigatorObservers: [_unlockObserver],
      builder: (context, child) => UnlockNotifications(
        navigatorKey: _navigatorKey,
        observer: _unlockObserver,
        child: child!,
      ),
      debugShowCheckedModeBanner: false,

      title: 'DevOps Quiz',

      // ==========================================
      // LANGUAGE
      // ==========================================
      locale: languageProvider.locale,

      localizationsDelegates: appLocalizationDelegates,

      supportedLocales: AppLocalizations.supportedLocales,

      // ==========================================
      // THEME
      // ==========================================
      // Custom fonts cover Latin text; other scripts use the
      // locale-aware fallback chain from FontService.
      theme: fontProvider.applyTo(
        themeProvider.themeData,
        locale: languageProvider.locale,
      ),

      themeMode: ThemeMode.light,

      // ==========================================
      // HOME
      // ==========================================
      home: const WelcomeScreen(),
    );
  }
}
