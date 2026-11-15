import 'package:shared_preferences/shared_preferences.dart';

import '../models/achievement.dart';
import '../models/app_theme.dart';
import 'achievement_service.dart';
import 'point_service.dart';

class UnlockNotice {
  const UnlockNotice.achievement(Achievement value)
    : achievement = value,
      theme = null;
  const UnlockNotice.theme(AppThemeInfo value)
    : theme = value,
      achievement = null;

  final Achievement? achievement;
  final AppThemeInfo? theme;

  String get id => achievement != null
      ? 'achievement:${achievement!.id}'
      : 'theme:${theme!.type.name}';
}

class UnlockNoticeService {
  static const seenKey = 'acknowledged_unlock_notices_v1';

  static Future<List<UnlockNotice>> _available({DateTime? now}) async {
    final points = await PointService.getTotalPoints();
    final achievements = await AchievementService.getAchievements();
    return [
      for (final achievement in achievements)
        if (achievement.unlocked) UnlockNotice.achievement(achievement),
      for (final theme in AppThemes.sortedByUnlock)
        if (theme.requiredPoints > 0 &&
            AppThemes.isUnlocked(theme, points, now: now))
          UnlockNotice.theme(theme),
    ];
  }

  /// Existing unlocks are a baseline on upgrade, not a backlog of popups.
  static Future<void> initialize({DateTime? now}) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(seenKey)) return;
    final existing = await _available(now: now);
    if (!await prefs.setStringList(
      seenKey,
      existing.map((notice) => notice.id).toList(),
    )) {
      throw StateError('Could not initialize unlock notices');
    }
  }

  static Future<List<UnlockNotice>> pending({DateTime? now}) async {
    await initialize(now: now);
    final prefs = await SharedPreferences.getInstance();
    final seen = prefs.getStringList(seenKey)!.toSet();
    return (await _available(
      now: now,
    )).where((notice) => !seen.contains(notice.id)).toList();
  }

  static Future<void> acknowledge(UnlockNotice notice) async {
    final prefs = await SharedPreferences.getInstance();
    final seen = (prefs.getStringList(seenKey) ?? []).toSet()..add(notice.id);
    try {
      if (!await prefs.setStringList(seenKey, seen.toList())) {
        throw StateError('Could not acknowledge unlock notice');
      }
    } catch (_) {
      await prefs.reload();
      rethrow;
    }
  }
}
