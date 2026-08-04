import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/welcome_screen.dart';
import 'theme_provider.dart';
import 'language_provider.dart';
import 'services/notification_service.dart';
import 'services/point_service.dart';
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

  // ============================================
  // THEME PROVIDER
  // ============================================

  final ThemeProvider themeProvider = ThemeProvider();

  await themeProvider.loadTheme(totalPoints: totalPoints);

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

        ChangeNotifierProvider<LanguageProvider>(
          create: (_) => LanguageProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

// ============================================================
// APP
// ============================================================

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ============================================
    // WATCH THEME
    // ============================================

    final themeProvider = context.watch<ThemeProvider>();

    // ============================================
    // WATCH LANGUAGE
    // ============================================

    final languageProvider = context.watch<LanguageProvider>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'DevOps Quiz',

      // ==========================================
      // LANGUAGE
      // ==========================================
      locale: languageProvider.locale,

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: AppLocalizations.supportedLocales,

      // ==========================================
      // THEME
      // ==========================================
      theme: themeProvider.themeData,

      themeMode: ThemeMode.light,

      // ==========================================
      // HOME
      // ==========================================
      home: const WelcomeScreen(),
    );
  }
}
