import 'package:shared_preferences/shared_preferences.dart';

/// Tracks which release highlights and "NEW" feature badges were seen.
class WhatsNewService {
  WhatsNewService._();

  /// Change this whenever a release should show the "What's New" sheet again.
  static const String releaseId = '1.10.2';

  static const String _seenReleaseKey = 'whats_new_seen_release';
  static const String _seenFeaturesKey = 'new_features_seen';

  static const String certificates = 'certificates';
  static const String games = 'games';
  static const String themes = 'themes';
  static const String settings = 'settings_languages';
  static const String achievements = 'achievements';

  static Future<bool> shouldShowRelease() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(_seenReleaseKey) != releaseId;
  }

  static Future<void> markReleaseShown() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_seenReleaseKey, releaseId);
  }

  static Future<bool> isFeatureNew(String featureId) async {
    final prefs = await SharedPreferences.getInstance();

    return !(prefs.getStringList(_seenFeaturesKey) ?? const []).contains(
      '$releaseId:$featureId',
    );
  }

  static Future<void> markFeatureSeen(String featureId) async {
    final prefs = await SharedPreferences.getInstance();

    final seen = List<String>.from(
      prefs.getStringList(_seenFeaturesKey) ?? const [],
    );

    final key = '$releaseId:$featureId';

    if (!seen.contains(key)) {
      seen.add(key);
      await prefs.setStringList(_seenFeaturesKey, seen);
    }
  }
}
