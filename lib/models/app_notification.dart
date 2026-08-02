enum AppNotificationType {
  dailyReward,
  newFeature,
  appUpdate,
  achievement,
  newGame,
  announcement,
}

class AppNotification {
  final String id;

  final String title;

  final String message;

  final AppNotificationType type;

  final DateTime createdAt;

  final bool isRead;

  // Optional button/action
  // Example:
  // "Play Now"
  // "View"
  // "Claim Reward"
  final String? actionText;

  // Used later to determine what should happen
  // when the user presses the action button.
  //
  // Examples:
  // "games"
  // "daily_quiz"
  // "achievements"
  // "categories"
  final String? actionRoute;

  const AppNotification({
    required this.id,
    required this.title,
    required this.message,
    required this.type,
    required this.createdAt,
    this.isRead = false,
    this.actionText,
    this.actionRoute,
  });

  // =========================================================
  // ICON
  // =========================================================

  String get icon {
    switch (type) {
      case AppNotificationType.dailyReward:
        return '🎁';

      case AppNotificationType.newFeature:
        return '🆕';

      case AppNotificationType.appUpdate:
        return '🚀';

      case AppNotificationType.achievement:
        return '🏆';

      case AppNotificationType.newGame:
        return '🎮';

      case AppNotificationType.announcement:
        return '📢';
    }
  }

  // =========================================================
  // CREATE COPY
  // Used when changing read/unread status
  // =========================================================

  AppNotification copyWith({
    String? id,
    String? title,
    String? message,
    AppNotificationType? type,
    DateTime? createdAt,
    bool? isRead,
    String? actionText,
    String? actionRoute,
  }) {
    return AppNotification(
      id: id ?? this.id,
      title: title ?? this.title,
      message: message ?? this.message,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      isRead: isRead ?? this.isRead,
      actionText: actionText ?? this.actionText,
      actionRoute: actionRoute ?? this.actionRoute,
    );
  }

  // =========================================================
  // CONVERT TO MAP
  // Required for SharedPreferences storage later
  // =========================================================

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'message': message,
      'type': type.name,
      'createdAt':
          createdAt.toIso8601String(),
      'isRead': isRead,
      'actionText': actionText,
      'actionRoute': actionRoute,
    };
  }

  // =========================================================
  // CREATE FROM MAP
  // =========================================================

  factory AppNotification.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppNotification(
      id: map['id'] as String,

      title: map['title'] as String,

      message: map['message'] as String,

      type:
          AppNotificationType.values.firstWhere(
        (type) =>
            type.name == map['type'],
        orElse: () =>
            AppNotificationType.announcement,
      ),

      createdAt: DateTime.parse(
        map['createdAt'] as String,
      ),

      isRead:
          map['isRead'] as bool? ?? false,

      actionText:
          map['actionText'] as String?,

      actionRoute:
          map['actionRoute'] as String?,
    );
  }

  // =========================================================
  // CONVERT TO JSON
  // =========================================================

  Map<String, dynamic> toJson() {
    return toMap();
  }

  // =========================================================
  // CREATE FROM JSON
  // =========================================================

  factory AppNotification.fromJson(
    Map<String, dynamic> json,
  ) {
    return AppNotification.fromMap(
      json,
    );
  }
}