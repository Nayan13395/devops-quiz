import 'package:flutter/material.dart';
import '../screens/leaderboard_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../screens/about_screen.dart';
import '../screens/category_screen.dart';
import '../screens/quiz_screen.dart';
import '../services/daily_quiz_service.dart';
import 'package:share_plus/share_plus.dart';
import '../screens/settings_screen.dart';
import '../l10n/app_localizations.dart';
import '../screens/achievement_screen.dart';
import '../screens/challenge_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
SizedBox(
  height: 90,
  child: DrawerHeader(
    margin: EdgeInsets.zero,
    child: Align(
      alignment: Alignment.centerLeft,
      child: Text(
        AppLocalizations.of(context)!.appName,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
),

          ListTile(
  leading: const Icon(Icons.swap_horiz),
  title: Text(
  AppLocalizations.of(context)!.switchCategory,
),

  onTap: () {
    Navigator.pop(context);

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (_) => const CategoryScreen(),
      ),
      (route) => false,
    );
  },
),

ListTile(
  leading: const Icon(Icons.calendar_today),
  title: Text(
  AppLocalizations.of(context)!.dailyQuiz,
),

  onTap: () async {

  final completed =
      await DailyQuizService
          .isCompletedToday();

  if (completed) {

    if (context.mounted) {
showDialog(
  context: context,
  builder: (_) => AlertDialog(
    title: Text(
  AppLocalizations.of(context)!.dailyQuizCompleted,
),
    content: Text(
  AppLocalizations.of(context)!.dailyQuizCompletedMessage,
),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
  AppLocalizations.of(context)!.ok,
),
      ),
    ],
  ),
);

return;
    }

    return;
  }

  Navigator.pop(context);

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => QuizScreen(
        category: "DailyQuiz",
        setNumber: 0,
      ),
    ),
  );
},
),
          ListTile(
  leading: const Icon(
    Icons.leaderboard,
  ),

  title: Text(
  AppLocalizations.of(context)!.leaderboard,
),

  onTap: () {

    Navigator.pop(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            const LeaderboardScreen(),
      ),
    );
  },
),
ListTile(
  leading: const Icon(Icons.bolt),
  title: Text(AppLocalizations.of(context)!.challengeMode),
  onTap: () {
    Navigator.pop(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            const ChallengeScreen(),
      ),
    );
  },
),
ListTile(
  leading: const Icon(Icons.emoji_events),
  title: Text(AppLocalizations.of(context)!.achievements),
  onTap: () {
    Navigator.pop(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            const AchievementScreen(),
      ),
    );
  },
),
ListTile(
  leading: const Icon(Icons.settings),
  title: Text(
  AppLocalizations.of(context)!.settings,
),

  onTap: () {

    Navigator.pop(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const SettingsScreen(),
      ),
    );
  },
),

ListTile(
  leading: const Icon(Icons.share),
  title: Text(
  AppLocalizations.of(context)!.shareApp,
),

  onTap: () {

    Navigator.pop(context);

    Share.share(
      "🚀 Improve your DevOps skills with DevOps Quiz!\n\n"
      "Download now:\n"
      "https://play.google.com/store/apps/details?id=com.nayan.devops",
    );
  },
),
          ListTile(
  leading: const Icon(Icons.star),
  title: Text(
  AppLocalizations.of(context)!.rateApp,
),

  onTap: () {
    rateApp();
  },
),

          ListTile(
  leading: const Icon(Icons.info),
  title: Text(
  AppLocalizations.of(context)!.about,
),

  onTap: () {
    Navigator.pop(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            const AboutScreen(),
      ),
    );
  },
),
        ],
      ),
    );
  }
}
Future<void> rateApp() async {

  const url =
      'https://play.google.com/store/apps/details?id=com.nayan.devops';

  final uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }
}