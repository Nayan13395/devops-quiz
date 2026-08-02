import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/app_notification.dart';
import 'daily_login_bonus_service.dart';

class InAppNotificationService {
  // =========================================================
  // KEYS
  // =========================================================

  static const String _readIdsKey =
      'in_app_notification_read_ids';

  // =========================================================
  // GET ALL NOTIFICATIONS
  // =========================================================

  static Future<List<AppNotification>>
      getNotifications() async {
    final prefs =
        await SharedPreferences.getInstance();

    final List<String> readIds =
        prefs.getStringList(
              _readIdsKey,
            ) ??
            [];

    final List<AppNotification> notifications =
        await _buildNotifications();

    final bool bonusClaimed =
        await DailyLoginBonusService
            .hasClaimedToday();

    final String dailyRewardId =
        _dailyRewardId();

    final List<AppNotification> result =
        notifications.map(
      (notification) {
        bool isRead =
            readIds.contains(
          notification.id,
        );

        // ===================================================
        // DAILY REWARD SPECIAL HANDLING
        // ===================================================
        //
        // If today's login reward has already been claimed,
        // automatically treat today's reward notification
        // as read.
        //
        // This prevents the bell from showing an unread
        // reward after the Welcome Screen has already
        // awarded it.
        // ===================================================

        if (notification.id ==
                dailyRewardId &&
            bonusClaimed) {
          isRead = true;
        }

        return notification.copyWith(
          isRead: isRead,
        );
      },
    ).toList();

    // Newest notification first.
    result.sort(
      (a, b) =>
          b.createdAt.compareTo(
        a.createdAt,
      ),
    );

    return result;
  }

  // =========================================================
  // GET UNREAD COUNT
  // =========================================================

  static Future<int>
      getUnreadCount() async {
    final notifications =
        await getNotifications();

    return notifications
        .where(
          (notification) =>
              !notification.isRead,
        )
        .length;
  }

  // =========================================================
  // MARK ONE NOTIFICATION AS READ
  // =========================================================

  static Future<void> markAsRead(
    String notificationId,
  ) async {
    final prefs =
        await SharedPreferences.getInstance();

    final List<String> readIds =
        prefs.getStringList(
              _readIdsKey,
            ) ??
            [];

    if (!readIds.contains(
      notificationId,
    )) {
      readIds.add(
        notificationId,
      );

      await prefs.setStringList(
        _readIdsKey,
        readIds,
      );
    }
  }

  // =========================================================
  // MARK ALL AS READ
  // =========================================================

  static Future<void>
      markAllAsRead() async {
    final prefs =
        await SharedPreferences.getInstance();

    final notifications =
        await _buildNotifications();

    final List<String> ids =
        notifications
            .map(
              (notification) =>
                  notification.id,
            )
            .toList();

    await prefs.setStringList(
      _readIdsKey,
      ids,
    );
  }

  // =========================================================
  // CHECK IF NOTIFICATION IS READ
  // =========================================================

  static Future<bool> isRead(
    String notificationId,
  ) async {
    // Today's reward should automatically be considered
    // read after it has been claimed.
    if (notificationId ==
        _dailyRewardId()) {
      final claimed =
          await DailyLoginBonusService
              .hasClaimedToday();

      if (claimed) {
        return true;
      }
    }

    final prefs =
        await SharedPreferences.getInstance();

    final List<String> readIds =
        prefs.getStringList(
              _readIdsKey,
            ) ??
            [];

    return readIds.contains(
      notificationId,
    );
  }

  // =========================================================
  // RESET READ STATUS
  //
  // Useful while testing.
  // =========================================================

  static Future<void>
      resetReadStatus() async {
    final prefs =
        await SharedPreferences.getInstance();

    await prefs.remove(
      _readIdsKey,
    );
  }

  // =========================================================
  // BUILD ALL NOTIFICATIONS
  // =========================================================

  static Future<List<AppNotification>>
      _buildNotifications() async {
    final List<AppNotification> notifications =
        _defaultNotifications();

    // Add today's dynamic reward notification.
    notifications.add(
      await _buildDailyRewardNotification(),
    );

    return notifications;
  }

  // =========================================================
  // DYNAMIC DAILY REWARD NOTIFICATION
  // =========================================================

  static Future<AppNotification>
      _buildDailyRewardNotification() async {
    final bool claimed =
        await DailyLoginBonusService
            .hasClaimedToday();

    final int? lastBonus =
        await DailyLoginBonusService
            .getLastBonusAmount();

    final DateTime now =
        DateTime.now();

    // =======================================================
    // REWARD ALREADY CLAIMED
    // =======================================================

    if (claimed) {
      return AppNotification(
        id: _dailyRewardId(),

        title:
            'Daily Reward Collected!',

        message: lastBonus != null
            ? 'You received $lastBonus points from today\'s daily login bonus.'
            : 'You have collected today\'s daily login bonus.',

        type:
            AppNotificationType.dailyReward,

        createdAt: DateTime(
          now.year,
          now.month,
          now.day,
          0,
          0,
        ),

        isRead: true,

        actionText: null,

        actionRoute: null,
      );
    }

    // =======================================================
    // REWARD AVAILABLE
    // =======================================================

    return AppNotification(
      id: _dailyRewardId(),

      title:
          'Daily Reward Available!',

      message:
          'Open DevOps Quiz today and collect your daily login bonus of up to 1000 points.',

      type:
          AppNotificationType.dailyReward,

      createdAt: DateTime(
        now.year,
        now.month,
        now.day,
        0,
        0,
      ),

      isRead: false,

      actionText: null,

      actionRoute: null,
    );
  }

  // =========================================================
  // DAILY REWARD UNIQUE ID
  // =========================================================
  //
  // IMPORTANT:
  //
  // Every day gets a different notification ID.
  //
  // Example:
  //
  // daily_reward_2026_08_02
  // daily_reward_2026_08_03
  //
  // This means marking today's reward as read will NOT
  // automatically mark tomorrow's reward as read.
  // =========================================================

  static String _dailyRewardId() {
    final DateTime now =
        DateTime.now();

    final String year =
        now.year.toString();

    final String month =
        now.month
            .toString()
            .padLeft(
              2,
              '0',
            );

    final String day =
        now.day
            .toString()
            .padLeft(
              2,
              '0',
            );

    return 'daily_reward_${year}_${month}_$day';
  }

  // =========================================================
  // STATIC APP NOTIFICATIONS
  // =========================================================

  static List<AppNotification>
      _defaultNotifications() {
    return [
      // =====================================================
      // LUCKY SLOTS
      // =====================================================

      AppNotification(
        id: 'lucky_slots_v1',

        title:
            'Lucky Slots is Here!',

        message:
            'Try the new Lucky Slots game and win between 10 and 999 points.',

        type:
            AppNotificationType.newGame,

        createdAt:
            DateTime(
          2026,
          8,
          2,
          12,
          0,
        ),

        actionText:
            'Play Now',

        actionRoute:
            'lucky_slots',
      ),

      // =====================================================
      // GAMES
      // =====================================================

      AppNotification(
        id: 'games_feature_v1',

        title:
            'Play & Earn',

        message:
            'Spin the Wheel, Scratch Cards and Lucky Slots are now available in Games.',

        type:
            AppNotificationType.newFeature,

        createdAt:
            DateTime(
          2026,
          8,
          1,
          12,
          0,
        ),

        actionText:
            'View Games',

        actionRoute:
            'games',
      ),

      // =====================================================
      // APP UPDATE
      // =====================================================

      AppNotification(
        id: 'app_update_games_v1',

        title:
            'DevOps Quiz Updated',

        message:
            'This update adds new reward games, UI improvements and more ways to earn points.',

        type:
            AppNotificationType.appUpdate,

        createdAt:
            DateTime(
          2026,
          7,
          30,
          12,
          0,
        ),

        actionText: null,

        actionRoute: null,
      ),
    ];
  }

  // =========================================================
  // JSON ENCODE
  // =========================================================

  static String encodeNotifications(
    List<AppNotification> notifications,
  ) {
    final List<Map<String, dynamic>> data =
        notifications
            .map(
              (notification) =>
                  notification.toJson(),
            )
            .toList();

    return jsonEncode(
      data,
    );
  }

  // =========================================================
  // JSON DECODE
  // =========================================================

  static List<AppNotification>
      decodeNotifications(
    String data,
  ) {
    final decoded =
        jsonDecode(
      data,
    ) as List<dynamic>;

    return decoded
        .map(
          (item) =>
              AppNotification.fromJson(
            Map<String, dynamic>.from(
              item as Map,
            ),
          ),
        )
        .toList();
  }
}