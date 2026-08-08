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
      message: 'Open DevOps Quiz today and collect your daily login bonus of up to 1000 points.',
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
  // =========================================================

  static List<AppNotification> _defaultNotifications() {
    return [
      // =====================================================
      // SCRIPTING CATEGORY (NEW)
      // =====================================================
      AppNotification(
        id: 'scripting_category_v1',
        title: 'New Category: Scripting! 📜',
        message: 'Practice Bash, Python, Perl, PowerShell, JavaScript, and Ruby with our brand new Scripting quiz sets.',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 8, 9, 10, 0),
        actionText: 'Explore',
        actionRoute: 'scripting', // Used for navigation
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
          (item) => AppNotification.fromJson(Map<String, dynamic>.from(item as Map)),
        )
        .toList();
  }
}