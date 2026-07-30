import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/foundation.dart';
import 'screens/welcome_screen.dart';
import 'theme_provider.dart';
import 'language_provider.dart';
import 'services/notification_service.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb) {
  await NotificationService.instance.initialize();
}

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.edgeToEdge,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => LanguageProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await NotificationService.instance
          .scheduleDailyNotifications();
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider =
        Provider.of<ThemeProvider>(context);

    final languageProvider =
        Provider.of<LanguageProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'DevOps Quiz',

      locale: languageProvider.locale,

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales:
          AppLocalizations.supportedLocales,

      themeMode: themeProvider.themeMode,

      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        elevatedButtonTheme:
            ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
          ),
        ),
      ),

      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),

      home: const WelcomeScreen(),
    );
  }
}