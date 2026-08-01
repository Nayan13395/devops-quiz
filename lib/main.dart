import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/foundation.dart';

import 'screens/welcome_screen.dart';
import 'theme_provider.dart';
import 'language_provider.dart';
import 'services/notification_service.dart';
import 'services/point_service.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // ============================================
  // NOTIFICATIONS
  // ============================================

  if (!kIsWeb) {
    await NotificationService.instance.initialize();
  }

  // ============================================
  // LOAD USER POINTS
  // Required because themes unlock using points.
  // ============================================

  final int totalPoints =
      await PointService.getTotalPoints();

  // ============================================
  // CREATE + INITIALIZE THEME PROVIDER
  // ============================================

  final ThemeProvider themeProvider =
      ThemeProvider();

  await themeProvider.loadTheme(
    totalPoints: totalPoints,
  );

  // ============================================
  // SYSTEM UI
  // ============================================

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
  );

  // ============================================
  // START APP
  // ============================================

  runApp(
    MultiProvider(
      providers: [
        // IMPORTANT:
        // ThemeProvider must be above MaterialApp
        ChangeNotifierProvider<ThemeProvider>.value(
          value: themeProvider,
        ),

        ChangeNotifierProvider<LanguageProvider>(
          create: (_) =>
              LanguageProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

// ============================================================
// APP
// ============================================================

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() =>
      _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance
        .addPostFrameCallback(
      (_) async {
        if (!kIsWeb) {
          await NotificationService.instance
              .scheduleDailyNotifications();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // ============================================
    // WATCH THEME
    // ============================================

    final themeProvider =
        context.watch<ThemeProvider>();

    // ============================================
    // WATCH LANGUAGE
    // ============================================

    final languageProvider =
        context.watch<LanguageProvider>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'DevOps Quiz',

      // ==========================================
      // LANGUAGE
      // ==========================================

      locale:
          languageProvider.locale,

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales:
          AppLocalizations.supportedLocales,

      // ==========================================
      // THEME
      // ==========================================
      //
      // ThemeProvider now supplies the complete
      // selected theme.

      theme:
          themeProvider.themeData,

      // We don't need separate hard-coded
      // lightTheme/darkTheme anymore because
      // themeData handles Light, Dark, Ocean,
      // Forest, Cyber, etc.

      themeMode:
          ThemeMode.light,

      // ==========================================
      // HOME
      // ==========================================

      home:
          const WelcomeScreen(),
    );
  }
}