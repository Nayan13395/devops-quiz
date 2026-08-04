import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/app_notification.dart';
import 'daily_login_bonus_service.dart';

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

    final bool bonusClaimed = await DailyLoginBonusService.hasClaimedToday();

    final String dailyRewardId = _dailyRewardId();

    final List<AppNotification> result = notifications.map((notification) {
      bool isRead = readIds.contains(notification.id);

      if (notification.id == dailyRewardId && bonusClaimed) {
        isRead = true;
      }

      return notification.copyWith(isRead: isRead);
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

    // Preserve previous read IDs too.
    //
    // This means old notifications don't
    // unexpectedly become unread again.

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
    if (notificationId == _dailyRewardId()) {
      final claimed = await DailyLoginBonusService.hasClaimedToday();

      if (claimed) {
        return true;
      }
    }

    final prefs = await SharedPreferences.getInstance();

    final List<String> readIds = prefs.getStringList(_readIdsKey) ?? [];

    return readIds.contains(notificationId);
  }

  // =========================================================
  // RESET READ STATUS
  //
  // Testing only.
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

    return notifications;
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

        isRead: true,

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

      actionText: null,

      actionRoute: null,
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
  //
  // IMPORTANT:
  //
  // Every NEW notification must have a NEW unique ID.
  //
  // Example:
  //
  // app_update_v2
  // app_update_v3
  //
  // Never reuse an old ID for a new notification.
  // =========================================================

  static List<AppNotification> _defaultNotifications() {
    return [
      // =====================================================
      // LOCAL TIME NOTIFICATIONS
      // =====================================================
      AppNotification(
        id: 'local_notification_times_v1',

        title: 'Smarter Daily Reminders',

        message:
            'Daily DevOps Quiz reminders now follow your device timezone at 9 AM, 4 PM and 9 PM.',

        type: AppNotificationType.newFeature,

        createdAt: DateTime(2026, 8, 4, 20, 30),

        actionText: null,

        actionRoute: null,
      ),

      // =====================================================
      // DAILY GAMES
      // =====================================================
      AppNotification(
        id: 'daily_games_rewards_v1',

        title: 'Daily Games & Rewards',

        message:
            'Play daily games and collect points. Come back every day for another chance to earn rewards.',

        type: AppNotificationType.dailyReward,

        createdAt: DateTime(2026, 8, 4, 18, 0),

        actionText: 'Play Games',

        actionRoute: 'games',
      ),

      // =====================================================
      // MYSTERY BOX
      // =====================================================
      AppNotification(
        id: 'mystery_box_v1',

        title: 'Mystery Box is Available!',

        message: 'Choose a mystery box and discover your daily reward.',

        type: AppNotificationType.newGame,

        createdAt: DateTime(2026, 8, 4, 15, 0),

        actionText: 'View Games',

        actionRoute: 'games',
      ),

      // =====================================================
      // LUCKY SLOTS
      // =====================================================
      AppNotification(
        id: 'lucky_slots_v1',

        title: 'Lucky Slots is Here!',

        message: 'Try Lucky Slots and win between 10 and 999 points.',

        type: AppNotificationType.newGame,

        createdAt: DateTime(2026, 8, 2, 12, 0),

        actionText: 'Play Now',

        actionRoute: 'lucky_slots',
      ),

      // =====================================================
      // GAMES
      // =====================================================
      AppNotification(
        id: 'games_feature_v1',

        title: 'Play & Earn',

        message:
            'Spin the Wheel, Scratch Cards, Lucky Slots and Mystery Box are available in Games.',

        type: AppNotificationType.newFeature,

        createdAt: DateTime(2026, 8, 1, 12, 0),

        actionText: 'View Games',

        actionRoute: 'games',
      ),

      // =====================================================
      // APP UPDATE
      // =====================================================
      AppNotification(
        id: 'app_update_v18',

        title: 'DevOps Quiz Updated',

        message:
            'The latest update includes reward games, notification improvements and UI enhancements.',

        type: AppNotificationType.appUpdate,

        createdAt: DateTime(2026, 7, 30, 12, 0),

        actionText: null,

        actionRoute: null,
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
