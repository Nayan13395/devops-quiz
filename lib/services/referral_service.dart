import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';

class ReferralService {
  static const String _referralCodeKey = 'my_referral_code';

  /// Returns the existing referral code.
  ///
  /// If this is the first time the app is opened,
  /// a new code is generated and stored permanently.
  static Future<String> getReferralCode() async {
    final prefs = await SharedPreferences.getInstance();

    String? existingCode = prefs.getString(_referralCodeKey);

    if (existingCode != null && existingCode.isNotEmpty) {
      return existingCode;
    }

    final String newCode = _generateReferralCode();

    await prefs.setString(_referralCodeKey, newCode);

    return newCode;
  }

  /// Generates a code such as:
  ///
  /// DEV-A7K9P2
  /// DEV-X3M8Q5
  static String _generateReferralCode() {
    const characters = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';

    final random = Random.secure();

    final code = List.generate(
      6,
      (_) => characters[random.nextInt(characters.length)],
    ).join();

    return 'DEV-$code';
  }

  /// Only useful during development/testing.
  static Future<void> resetReferralCode() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(_referralCodeKey);
  }
}
