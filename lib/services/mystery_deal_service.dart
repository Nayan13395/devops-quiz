import 'package:shared_preferences/shared_preferences.dart';

class MysteryDealService {
  MysteryDealService._();

  static const String _completedDateKey =
      'mystery_deal_completed_date';

  static const String _lastRewardKey =
      'mystery_deal_last_reward';

  static const String _lastWonKey =
      'mystery_deal_last_won';

  // =========================================================
  // CHECK IF PLAYED TODAY
  // =========================================================

  static Future<bool> isCompletedToday() async {
    final SharedPreferences prefs =
        await SharedPreferences.getInstance();

    final String? completedDate =
        prefs.getString(
      _completedDateKey,
    );

    return completedDate ==
        _dateKey(
          DateTime.now(),
        );
  }

  // =========================================================
  // MARK TODAY'S ATTEMPT COMPLETE
  //
  // Call this only after the user answers the question.
  // =========================================================

  static Future<void> markCompleted({
    required int reward,
    required bool won,
  }) async {
    final SharedPreferences prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      _completedDateKey,
      _dateKey(
        DateTime.now(),
      ),
    );

    await prefs.setInt(
      _lastRewardKey,
      reward,
    );

    await prefs.setBool(
      _lastWonKey,
      won,
    );
  }

  // =========================================================
  // LAST REWARD
  // =========================================================

  static Future<int?> getLastReward() async {
    final SharedPreferences prefs =
        await SharedPreferences.getInstance();

    return prefs.getInt(
      _lastRewardKey,
    );
  }

  // =========================================================
  // DID USER WIN LAST ATTEMPT?
  // =========================================================

  static Future<bool?> didWinLastAttempt() async {
    final SharedPreferences prefs =
        await SharedPreferences.getInstance();

    return prefs.getBool(
      _lastWonKey,
    );
  }

  // =========================================================
  // RESET
  //
  // Useful only while developing/testing.
  // =========================================================

  static Future<void> reset() async {
    final SharedPreferences prefs =
        await SharedPreferences.getInstance();

    await prefs.remove(
      _completedDateKey,
    );

    await prefs.remove(
      _lastRewardKey,
    );

    await prefs.remove(
      _lastWonKey,
    );
  }

  // =========================================================
  // DATE KEY
  // =========================================================

  static String _dateKey(
    DateTime date,
  ) {
    final String year =
        date.year.toString();

    final String month =
        date.month
            .toString()
            .padLeft(
              2,
              '0',
            );

    final String day =
        date.day
            .toString()
            .padLeft(
              2,
              '0',
            );

    return '$year-$month-$day';
  }
}