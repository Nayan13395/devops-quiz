import 'package:shared_preferences/shared_preferences.dart';

class DeveloperCelebrationService {
  DeveloperCelebrationService._();

  static const String linkedInProfileId = 'nayan-chaudhari-200b31241';
  static const String linkedInProfileUrl =
      'https://www.linkedin.com/in/$linkedInProfileId';
  static const String _shownKeyPrefix = 'developer_birthday_popup_shown_';

  static Future<bool> claimBirthdayPopup(DateTime date) async {
    if (date.month != 3 || date.day != 13) return false;

    final prefs = await SharedPreferences.getInstance();
    final key = '$_shownKeyPrefix${date.year}';
    if (prefs.getBool(key) ?? false) return false;

    await prefs.setBool(key, true);
    return true;
  }
}
