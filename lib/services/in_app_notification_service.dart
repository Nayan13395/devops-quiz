import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../l10n/notification_localizations.dart';
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

  static Future<List<AppNotification>> getNotifications({
    String? languageCode,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final l10n = await NotificationLocalizations.loadSelected(
      languageCode: languageCode,
    );

    final List<String> readIds = prefs.getStringList(_readIdsKey) ?? [];

    final List<AppNotification> notifications = await _buildNotifications(l10n);

    final List<AppNotification> result = notifications.map((notification) {
      return notification.copyWith(isRead: readIds.contains(notification.id));
    }).toList();

    result.sort((a, b) => b.createdAt.compareTo(a.createdAt));

    return result;
  }

  // =========================================================
  // GET ONLY UNREAD / NEW NOTIFICATIONS
  // =========================================================

  static Future<List<AppNotification>> getUnreadNotifications({
    String? languageCode,
  }) async {
    final notifications = await getNotifications(languageCode: languageCode);

    return notifications.where((notification) => !notification.isRead).toList();
  }

  // =========================================================
  // GET UNREAD COUNT
  // =========================================================

  static Future<int> getUnreadCount({String? languageCode}) async {
    final notifications = await getUnreadNotifications(
      languageCode: languageCode,
    );

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

    final l10n = await NotificationLocalizations.loadSelected();
    final notifications = await _buildNotifications(l10n);

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

  static Future<List<AppNotification>> _buildNotifications(
    NotificationLocalizations l10n,
  ) async {
    final List<AppNotification> notifications = _defaultNotifications(l10n);
    notifications.add(await _buildDailyRewardNotification(l10n));
    notifications.addAll(await _buildDynamicNotifications(l10n));
    return notifications;
  }

  // =========================================================
  // NOTIFICATIONS THAT DEPEND ON THE USER'S STATE
  // =========================================================

  static Future<List<AppNotification>> _buildDynamicNotifications(
    NotificationLocalizations l10n,
  ) async {
    final List<AppNotification> result = [];

    // New version available on Google Play.
    final String? updateVersion = await UpdateService.availableVersion();

    if (updateVersion != null) {
      result.add(
        AppNotification(
          id: 'app_update_$updateVersion',
          title: l10n.text('inApp.appUpdate.title', {'version': updateVersion}),
          message: l10n.text('inApp.appUpdate.message'),
          type: AppNotificationType.appUpdate,
          createdAt: DateTime.now(),
          actionText: l10n.text('inApp.appUpdate.action'),
          actionRoute: 'play_store',
        ),
      );
    }

    // Ask for a rating after a couple of quizzes.
    if (await RatePromptService.isRatingPending()) {
      result.add(
        AppNotification(
          id: 'rate_app_v1',
          title: l10n.text('inApp.rateApp.title'),
          message: l10n.text('inApp.rateApp.message'),
          type: AppNotificationType.announcement,
          createdAt: DateTime(2026, 10, 4, 9, 0),
          actionText: l10n.text('inApp.rateApp.action'),
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
          title: l10n.text('inApp.certificate.title', {
            'category': certificate.category,
          }),
          message: l10n.text('inApp.certificate.message', {
            'category': certificate.category,
          }),
          type: AppNotificationType.achievement,
          createdAt: certificate.issuedOn,
          actionText: l10n.text('inApp.certificate.action'),
          actionRoute: 'certificates',
        ),
      );
    }

    return result;
  }

  // =========================================================
  // DAILY REWARD
  // =========================================================

  static Future<AppNotification> _buildDailyRewardNotification(
    NotificationLocalizations l10n,
  ) async {
    final bool claimed = await DailyLoginBonusService.hasClaimedToday();
    final int? lastBonus = await DailyLoginBonusService.getLastBonusAmount();
    final DateTime now = DateTime.now();

    if (claimed) {
      return AppNotification(
        id: _dailyRewardId(),
        title: l10n.text('inApp.dailyRewardCollected.title'),
        message: lastBonus != null
            ? l10n.text('inApp.dailyRewardCollected.messageWithPoints', {
                'points': lastBonus,
              })
            : l10n.text('inApp.dailyRewardCollected.message'),
        type: AppNotificationType.dailyReward,
        createdAt: DateTime(now.year, now.month, now.day, 0, 0),
        actionText: null,
        actionRoute: null,
      );
    }

    return AppNotification(
      id: _dailyRewardId(),
      title: l10n.text('inApp.dailyRewardAvailable.title'),
      message: l10n.text('inApp.dailyRewardAvailable.message'),
      type: AppNotificationType.dailyReward,
      createdAt: DateTime(now.year, now.month, now.day, 0, 0),
      isRead: false,
      actionText: l10n.text('inApp.dailyRewardAvailable.action'),
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

  static List<AppNotification> _defaultNotifications(
    NotificationLocalizations l10n,
  ) {
    return [
      _staticNotification(
        l10n,
        'daily_quiz_v1',
        type: AppNotificationType.dailyReward,
        createdAt: DateTime(2026, 8, 10, 8, 0),
        actionRoute: 'daily_quiz',
      ),
      _staticNotification(
        l10n,
        'whats_new_v1102',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 10, 16, 12, 0),
        actionRoute: 'categories',
      ),
      _staticNotification(
        l10n,
        'spot_difference_v1',
        type: AppNotificationType.newGame,
        createdAt: DateTime(2026, 11, 6, 12, 0),
        actionRoute: 'games',
      ),
      _staticNotification(
        l10n,
        'whats_new_v1104',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 11, 6, 12, 10),
        actionRoute: 'whats_new',
      ),
      _staticNotification(
        l10n,
        'auto_themes_v1',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 11, 6, 11, 50),
        actionRoute: 'themes',
      ),
      _staticNotification(
        l10n,
        'game_sounds_v1',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 11, 6, 11, 40),
        actionRoute: 'settings',
      ),
      _staticNotification(
        l10n,
        'regional_festivals_v1',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 11, 6, 11, 30),
      ),
      _staticNotification(
        l10n,
        'board_games_v2',
        type: AppNotificationType.newGame,
        createdAt: DateTime(2026, 11, 6, 11, 20),
        actionRoute: 'games',
      ),
      _staticNotification(
        l10n,
        'certificates_v1',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 10, 3, 11, 50),
        actionRoute: 'certificates',
      ),
      _staticNotification(
        l10n,
        'new_sets_v1',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 10, 3, 11, 40),
        actionRoute: 'categories',
      ),
      _staticNotification(
        l10n,
        'board_games_v1',
        type: AppNotificationType.newGame,
        createdAt: DateTime(2026, 10, 16, 12, 0),
        actionRoute: 'games',
      ),
      _staticNotification(
        l10n,
        'daily_quiz_all_v1',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 10, 3, 11, 20),
        actionRoute: 'daily_quiz',
      ),
      _staticNotification(
        l10n,
        'themes_v2',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 10, 3, 11, 10),
        actionRoute: 'themes',
      ),
      _staticNotification(
        l10n,
        'languages_v1',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 10, 3, 11, 0),
        actionRoute: 'settings',
      ),
      _staticNotification(
        l10n,
        'milestones_v1',
        type: AppNotificationType.achievement,
        createdAt: DateTime(2026, 10, 3, 10, 50),
        actionRoute: 'achievements',
      ),
      _staticNotification(
        l10n,
        'scripting_category_v1',
        type: AppNotificationType.newFeature,
        createdAt: DateTime(2026, 8, 9, 10, 0),
        actionRoute: 'scripting',
      ),
      _staticNotification(
        l10n,
        'games_feature_v1',
        type: AppNotificationType.newGame,
        createdAt: DateTime(2026, 8, 9, 12, 0),
        actionRoute: 'games',
      ),
      _staticNotification(
        l10n,
        'lucky_slots_v1',
        type: AppNotificationType.newGame,
        createdAt: DateTime(2026, 8, 2, 12, 0),
        actionRoute: 'lucky_slots',
      ),
    ];
  }

  static AppNotification _staticNotification(
    NotificationLocalizations l10n,
    String id, {
    required AppNotificationType type,
    required DateTime createdAt,
    String? actionRoute,
  }) {
    final base = 'inApp.$id';
    String? actionText;
    try {
      actionText = l10n.text('$base.action');
    } on StateError {
      actionText = null;
    }
    return AppNotification(
      id: id,
      title: l10n.text('$base.title'),
      message: l10n.text('$base.message'),
      type: type,
      createdAt: createdAt,
      actionText: actionText,
      actionRoute: actionRoute,
    );
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
