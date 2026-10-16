import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/app_notification.dart';
import 'certificate_service.dart';
import 'daily_login_bonus_service.dart';
import 'rate_prompt_service.dart';
import 'update_service.dart';

class InAppNotificationService {
  // =========================================================
  // KEYS
  // =========================================================

  static const String _readIdsKey = 'in_app_notification_read_ids';

  // =========================================================
  // GET ALL NOTIFICATIONS
  // =========================================================

  static Future<List<AppNotification>> getNotifications() async {
    final prefs = await SharedPreferences.getInstance();

    final List<String> readIds = prefs.getStringList(_readIdsKey) ?? [];

    final List<AppNotification> notifications = await _buildNotifications();

    final List<AppNotification> result = notifications.map((notification) {
      return notification.copyWith(isRead: readIds.contains(notification.id));
    }).toList();

    result.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return result;
  }

  // =========================================================
  // GET ONLY UNREAD / NEW NOTIFICATIONS
  // =========================================================

  static Future<List<AppNotification>> getUnreadNotifications() async {
    final notifications = await getNotifications();

    return notifications.where((notification) => !notification.isRead).toList();
  }

  // =========================================================
  // GET UNREAD COUNT
  // =========================================================

  static Future<int> getUnreadCount() async {
    final notifications = await getUnreadNotifications();

    return notifications.length;
  }

  // =========================================================
  // MARK ONE AS READ
  // =========================================================

  static Future<void> markAsRead(String notificationId) async {
    final prefs = await SharedPreferences.getInstance();

    final List<String> readIds = List<String>.from(
      prefs.getStringList(_readIdsKey) ?? [],
    );

    if (!readIds.contains(notificationId)) {
      readIds.add(notificationId);

      await prefs.setStringList(_readIdsKey, readIds);
    }
  }

  // =========================================================
  // MARK ALL CURRENT NOTIFICATIONS AS READ
  // =========================================================

  static Future<void> markAllAsRead() async {
    final prefs = await SharedPreferences.getInstance();

    final notifications = await _buildNotifications();

    final Set<String> readIds = {
      ...?prefs.getStringList(_readIdsKey),
      ...notifications.map((notification) => notification.id),
    };

    await prefs.setStringList(_readIdsKey, readIds.toList());
  }

  // =========================================================
  // CHECK READ STATUS
  // =========================================================

  static Future<bool> isRead(String notificationId) async {
    final prefs = await SharedPreferences.getInstance();

    final List<String> readIds = prefs.getStringList(_readIdsKey) ?? [];

    return readIds.contains(notificationId);
  }

  // =========================================================
  // RESET READ STATUS
  // =========================================================

  static Future<void> resetReadStatus() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_readIdsKey);
  }

  // =========================================================
  // BUILD NOTIFICATIONS
  // =========================================================

  static Future<List<AppNotification>> _buildNotifications() async {
    final List<AppNotification> notifications = _defaultNotifications();
    notifications.add(await _buildDailyRewardNotification());
    notifications.addAll(await _buildDynamicNotifications());
    return notifications;
  }

  // =========================================================
  // NOTIFICATIONS THAT DEPEND ON THE USER'S STATE
  // =========================================================

  static Future<List<AppNotification>> _buildDynamicNotifications() async {
    final List<AppNotification> result = [];

    // New version available on Google Play.
    final String? updateVersion = await UpdateService.availableVersion();

    if (updateVersion != null) {
      result.add(
        AppNotification(
          id: 'app_update_$updateVersion',
          title: 'Update Available: v$updateVersion 🚀',
          message:
              'A new version of DevOps Quiz is available on Google Play with new features and improvements.',
          type: AppNotificationType.appUpdate,
          createdAt: DateTime.now(),
          actionText: 'Update Now',
          actionRoute: 'play_store',
        ),
      );
    }

    // Ask for a rating after a couple of quizzes.
    if (await RatePromptService.isRatingPending()) {
      result.add(
        AppNotification(
          id: 'rate_app_v1',
          title: 'Enjoying DevOps Quiz? ⭐',
          message:
              'Rate us on Google Play. Your feedback helps other learners find the app.',
          type: AppNotificationType.announcement,
          createdAt: DateTime(2026, 10, 4, 9, 0),
          actionText: 'Rate Now',
          actionRoute: 'rate_app',
        ),
      );
    }

    // One entry per earned certificate.
    final certificates = await CertificateService.earnedCertificates();

    for (final certificate in certificates.values) {
      result.add(
        AppNotification(
          id: 'certificate_${certificate.category}',
          title: 'Certificate Earned: ${certificate.category} 🎓',
          message:
              'You completed every ${certificate.category} set. View and download your certificate.',
          type: AppNotificationType.achievement,
          createdAt: certificate.issuedOn,
          actionText: 'View Certificates',
          actionRoute: 'certificates',
        ),
      );
    }

    return result;
  }

  // =========================================================
  // DAILY REWARD
  // =========================================================

  static Future<AppNotification> _buildDailyRewardNotification() async {
    final bool claimed = await DailyLoginBonusService.hasClaimedToday();
    final int? lastBonus = await DailyLoginBonusService.getLastBonusAmount();
    final DateTime now = DateTime.now();

    if (claimed) {
      return AppNotification(
        id: _dailyRewardId(),
        title: 'Daily Reward Collected!',
        message: lastBonus != null
            ? 'You received $lastBonus points from today\'s daily login bonus.'
            : 'You have collected today\'s daily login bonus.',
        type: AppNotificationType.dailyReward,
        createdAt: DateTime(now.year, now.month, now.day, 0, 0),
        actionText: null,
        actionRoute: null,
      );
    }

    return AppNotification(
      id: _dailyRewardId(),
      title: 'Daily Reward Available!',
      message:
          'Open DevOps Quiz today and collect your daily login bonus of up to 1000 points.',
      type: AppNotificationType.dailyReward,
      createdAt: DateTime(now.year, now.month, now.day, 0, 0),
      isRead: false,
      actionText: 'Claim Reward',
      actionRoute: 'claim_daily_reward',
    );
  }

  // =========================================================
  // DAILY REWARD ID
  // =========================================================

  static String _dailyRewardId() {
    final DateTime now = DateTime.now();
    final String year = now.year.toString();
    final String month = now.month.toString().padLeft(2, '0');
    final String day = now.day.toString().padLeft(2, '0');
    return 'daily_reward_${year}_${month}_$day';
  }

  // =========================================================
  // STATIC APP NOTIFICATIONS
  // =========================================================

  static List<AppNotification> _defaultNotifications() {
    return [
      // =====================================================
      // DAILY QUIZ NOTIFICATION
      // =====================================================
      AppNotification(
        id: 'daily_quiz_v1',
        title: 'Daily Quiz is Ready! 📅',
        message:
            'Complete today\'s daily quiz to earn bonus points and keep your streak alive!',
        type: AppNotificationType.dailyReward,
        createdAt: DateTime(2026, 8, 10, 8, 0),
        actionText: 'Play Now',
        actionRoute: 'daily_quiz', // ✅ Triggers redirect to QuizScreen
      ),

      // =====================================================
      // LATEST RELEASE HIGHLIGHTS
      // =====================================================
      AppNotification(
        id: 'whats_new_v1102',
        title: 'A Fresh DevOps Quiz Update ✨',
        message:
            'Explore animated category icons, follow your personal progress, '
            'and see exactly how many daily login points you collected.',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 10, 16, 12, 0),
        actionText: 'Explore Categories',
        actionRoute: 'categories',
      ),

      AppNotification(
        id: 'certificates_v1',
        title: 'Earn Certificates! 🎓',
        message:
            'Finish all 5 sets of any category to unlock a certificate you can download and share.',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 10, 3, 11, 50),
        actionText: 'View Progress',
        actionRoute: 'certificates',
      ),

      AppNotification(
        id: 'new_sets_v1',
        title: 'New Set 5 in Every Category 📚',
        message:
            'All 21 categories now include a fresh fifth set of questions.',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 10, 3, 11, 40),
        actionText: 'Start Learning',
        actionRoute: 'categories',
      ),

      AppNotification(
        id: 'games_v2',
        title: 'Tap Away Arrows: 100 New Levels! 🎮',
        message:
            'Clear arrows with an open path to the edge. You get three hearts and earn 100 points for each level cleared.',
        type: AppNotificationType.newGame,
        createdAt: DateTime(2026, 10, 9, 11, 30),
        actionText: 'Play Now',
        actionRoute: 'games',
      ),

      AppNotification(
        id: 'daily_quiz_all_v1',
        title: 'Daily Quiz Covers Every Category 📅',
        message:
            'Each daily quiz now mixes questions from all 21 categories. Can you score 100%?',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 10, 3, 11, 20),
        actionText: 'Play Daily Quiz',
        actionRoute: 'daily_quiz',
      ),

      AppNotification(
        id: 'themes_v2',
        title: '5 New Themes 🎨',
        message:
            'Sakura, Sunset, Coffee, Aurora and Matrix are now available to unlock.',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 10, 3, 11, 10),
        actionText: 'Browse Themes',
        actionRoute: 'themes',
      ),

      AppNotification(
        id: 'languages_v1',
        title: '10 New Languages 🌍',
        message:
            'DevOps Quiz now speaks Spanish, French, German, Portuguese, Arabic, Indonesian, Russian, Japanese, Chinese and Bengali.',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 10, 3, 11, 0),
        actionText: 'Change Language',
        actionRoute: 'settings',
      ),

      AppNotification(
        id: 'milestones_v1',
        title: 'New Milestones 🏅',
        message:
            'Unlock new rewards for quizzes, points, daily quizzes, finished sets and certificates.',
        type: AppNotificationType.achievement,
        createdAt: DateTime(2026, 10, 3, 10, 50),
        actionText: 'View Milestones',
        actionRoute: 'achievements',
      ),

      // =====================================================
      // SCRIPTING CATEGORY
      // =====================================================
      AppNotification(
        id: 'scripting_category_v1',
        title: 'New Category: Scripting! 📜',
        message:
            'Practice Bash, Python, Perl, PowerShell, JavaScript, and Ruby with our brand new Scripting quiz sets.',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 8, 9, 10, 0),
        actionText: 'Explore',
        actionRoute: 'scripting',
      ),

      // =====================================================
      // GAMES FEATURE
      // =====================================================
      AppNotification(
        id: 'games_feature_v1',
        title: 'New Skill Games Available! 🎮',
        message:
            'Play Memory Match, Word Guess, and Higher or Lower to earn bonus points.',
        type: AppNotificationType.newGame,
        createdAt: DateTime(2026, 8, 9, 12, 0),
        actionText: 'Play Now',
        actionRoute: 'games',
      ),

      // =====================================================
      // LUCKY SLOTS
      // =====================================================
      AppNotification(
        id: 'lucky_slots_v1',
        title: 'Try Lucky Slots! 🎰',
        message: 'Spin and win between 10 and 999 points.',
        type: AppNotificationType.newGame,
        createdAt: DateTime(2026, 8, 2, 12, 0),
        actionText: 'Play Now',
        actionRoute: 'lucky_slots',
      ),
    ];
  }

  // =========================================================
  // JSON ENCODE
  // =========================================================

  static String encodeNotifications(List<AppNotification> notifications) {
    final List<Map<String, dynamic>> data = notifications
        .map((notification) => notification.toJson())
        .toList();
    return jsonEncode(data);
  }

  // =========================================================
  // JSON DECODE
  // =========================================================

  static List<AppNotification> decodeNotifications(String data) {
    final decoded = jsonDecode(data) as List<dynamic>;
    return decoded
        .map(
          (item) =>
              AppNotification.fromJson(Map<String, dynamic>.from(item as Map)),
        )
        .toList();
  }
}
