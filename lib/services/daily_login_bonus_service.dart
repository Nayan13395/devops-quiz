import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

import 'point_service.dart';

class DailyLoginBonusService {
  DailyLoginBonusService._();

  static const String _lastBonusDateKey = 'daily_login_bonus_last_date';

  static const String _lastBonusAmountKey = 'daily_login_bonus_last_amount';

  // =========================================================
  // CLAIM DAILY BONUS
  // =========================================================

  /// Awards today's app-opening bonus.
  ///
  /// Returns:
  /// - 10, 20, 30 ... 1000 when awarded
  /// - null when already claimed today
  static Future<int?> claimDailyBonus() async {
    final prefs = await SharedPreferences.getInstance();

    final String today = _dateKey(DateTime.now());

    final String? lastBonusDate = prefs.getString(_lastBonusDateKey);

    // Already received today's bonus.
    if (lastBonusDate == today) {
      return null;
    }

    // Generates:
    //
    // 10, 20, 30 ... 990, 1000
    //
    // Exactly 100 possible rewards.
    final int bonus = (Random().nextInt(100) + 1) * 10;

    // Add reward to total points.
    await PointService.addPoints(bonus);

    // Only save the claim after points
    // have successfully been added.
    await prefs.setString(_lastBonusDateKey, today);

    await prefs.setInt(_lastBonusAmountKey, bonus);

    return bonus;
  }

  // =========================================================
  // CHECK IF BONUS IS AVAILABLE
  // =========================================================

  /// Returns true when the user has NOT
  /// received today's bonus yet.
  ///
  /// IMPORTANT:
  /// This does NOT award any points.
  ///
  /// The notification system can safely call
  /// this method without accidentally claiming
  /// the user's reward.
  static Future<bool> isBonusAvailableToday() async {
    final bool claimed = await hasClaimedToday();

    return !claimed;
  }

  // =========================================================
  // CHECK IF ALREADY CLAIMED
  // =========================================================

  /// Returns true when today's bonus
  /// has already been awarded.
  static Future<bool> hasClaimedToday() async {
    final prefs = await SharedPreferences.getInstance();

    final String? lastBonusDate = prefs.getString(_lastBonusDateKey);

    return lastBonusDate == _dateKey(DateTime.now());
  }

  // =========================================================
  // GET LAST BONUS
  // =========================================================

  /// Returns the most recently awarded
  /// bonus amount.
  static Future<int?> getLastBonusAmount() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getInt(_lastBonusAmountKey);
  }

  // =========================================================
  // GET LAST CLAIM DATE
  // =========================================================

  static Future<String?> getLastBonusDate() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(_lastBonusDateKey);
  }

  // =========================================================
  // DATE KEY
  // =========================================================

  /// Converts:
  ///
  /// DateTime(...)
  ///
  /// into:
  ///
  /// 2026-08-02
  ///
  /// Hours, minutes and seconds are deliberately
  /// ignored because the bonus resets by calendar day.
  static String _dateKey(DateTime date) {
    final String year = date.year.toString();

    final String month = date.month.toString().padLeft(2, '0');

    final String day = date.day.toString().padLeft(2, '0');

    return '$year-$month-$day';
  }
}
