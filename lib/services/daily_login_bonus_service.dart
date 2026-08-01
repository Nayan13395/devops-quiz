import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

import 'point_service.dart';

class DailyLoginBonusService {
  DailyLoginBonusService._();

  static const String _lastBonusDateKey =
      'daily_login_bonus_last_date';

  static const String _lastBonusAmountKey =
      'daily_login_bonus_last_amount';

  /// Checks whether today's app-opening bonus
  /// has already been awarded.
  ///
  /// Returns:
  /// - bonus amount (10–1000) when awarded
  /// - null when already claimed today
  static Future<int?> claimDailyBonus() async {
    final prefs =
        await SharedPreferences.getInstance();

    final now = DateTime.now();

    final today = _dateKey(now);

    final lastBonusDate =
        prefs.getString(_lastBonusDateKey);

    // Already received today's bonus.
    if (lastBonusDate == today) {
      return null;
    }

    // Generates:
    // 10, 20, 30 ... 990, 1000
    final int bonus =
        (Random().nextInt(100) + 1) * 10;

    // Add bonus to existing total points.
    await PointService.addPoints(bonus);

    // Save today's date only after points
    // have successfully been added.
    await prefs.setString(
      _lastBonusDateKey,
      today,
    );

    await prefs.setInt(
      _lastBonusAmountKey,
      bonus,
    );

    return bonus;
  }

  /// Returns true if today's bonus
  /// has already been awarded.
  static Future<bool>
      hasClaimedToday() async {
    final prefs =
        await SharedPreferences.getInstance();

    final lastBonusDate =
        prefs.getString(_lastBonusDateKey);

    return lastBonusDate ==
        _dateKey(DateTime.now());
  }

  /// Returns the most recently awarded
  /// bonus amount.
  static Future<int?>
      getLastBonusAmount() async {
    final prefs =
        await SharedPreferences.getInstance();

    return prefs.getInt(
      _lastBonusAmountKey,
    );
  }

  /// Converts a date to:
  ///
  /// 2026-08-01
  ///
  /// This allows us to compare calendar days
  /// without comparing hours/minutes/seconds.
  static String _dateKey(DateTime date) {
    final year =
        date.year.toString();

    final month =
        date.month
            .toString()
            .padLeft(2, '0');

    final day =
        date.day
            .toString()
            .padLeft(2, '0');

    return '$year-$month-$day';
  }
}