import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'achievement_service.dart';

/// Asks for a Play Store rating after a couple of completed quizzes.
class RatePromptService {
  RatePromptService._();

  static const String _stateKey = 'rate_prompt_state';
  static const String _lastPromptCountKey = 'rate_prompt_last_count';

  static const String _stateRated = 'rated';
  static const String _stateNever = 'never';

  static const int firstPromptAfterQuizzes = 2;
  static const int repeatEveryQuizzes = 10;

  static const String storeUrl =
      'https://play.google.com/store/apps/details?id=com.nayan.devops';

  static Future<bool> _isFinished() async {
    final prefs = await SharedPreferences.getInstance();
    final state = prefs.getString(_stateKey);

    return state == _stateRated || state == _stateNever;
  }

  /// True while the in-app "rate us" notification should be listed.
  static Future<bool> isRatingPending() async {
    if (await _isFinished()) return false;

    return await AchievementService.getQuizCount() >= firstPromptAfterQuizzes;
  }

  static Future<bool> shouldPrompt() async {
    if (await _isFinished()) return false;

    final int quizzes = await AchievementService.getQuizCount();

    if (quizzes < firstPromptAfterQuizzes) return false;

    final prefs = await SharedPreferences.getInstance();
    final int last = prefs.getInt(_lastPromptCountKey) ?? 0;

    return last == 0 || quizzes - last >= repeatEveryQuizzes;
  }

  static Future<void> markRated() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_stateKey, _stateRated);
  }

  static Future<void> openStore() async {
    final Uri uri = Uri.parse(storeUrl);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  /// Shows the rating dialog when the user is due for one.
  static Future<void> maybePrompt(BuildContext context) async {
    if (!await shouldPrompt()) return;
    if (!context.mounted) return;

    final prefs = await SharedPreferences.getInstance();
    final int quizzes = await AchievementService.getQuizCount();

    await prefs.setInt(_lastPromptCountKey, quizzes);

    if (!context.mounted) return;

    final String? choice = await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          icon: const Text('⭐', style: TextStyle(fontSize: 44)),
          title: const Text(
            'Enjoying DevOps Quiz?',
            textAlign: TextAlign.center,
          ),
          content: const Text(
            'You have completed a couple of quizzes. '
            'If the app is helping you learn, please rate it on Google Play. '
            'It takes less than a minute and helps other learners find us!',
            textAlign: TextAlign.center,
          ),
          actionsAlignment: MainAxisAlignment.center,
          actionsOverflowAlignment: OverflowBarAlignment.center,
          actionsOverflowButtonSpacing: 4,
          actions: [
            FilledButton.icon(
              onPressed: () => Navigator.pop(dialogContext, 'rate'),
              icon: const Icon(Icons.star_rounded),
              label: const Text('Rate Now'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, 'later'),
              child: const Text('Maybe Later'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, 'never'),
              child: const Text('No Thanks'),
            ),
          ],
        );
      },
    );

    if (choice == 'rate') {
      await markRated();
      await openStore();
    } else if (choice == 'never') {
      await prefs.setString(_stateKey, _stateNever);
    }
  }
}
