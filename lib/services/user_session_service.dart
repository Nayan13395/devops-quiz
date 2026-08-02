import 'package:shared_preferences/shared_preferences.dart';

class UserSessionService {
  UserSessionService._();

  static const String _loginTypeKey =
      'user_login_type';

  static const String _guestValue =
      'guest';

  static const String _googleValue =
      'google';

  // =========================================================
  // CONTINUE AS GUEST
  // =========================================================

  static Future<void> continueAsGuest() async {
    final prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      _loginTypeKey,
      _guestValue,
    );
  }

  // =========================================================
  // SAVE GOOGLE LOGIN
  // =========================================================

  static Future<void> saveGoogleLogin() async {
    final prefs =
        await SharedPreferences.getInstance();

    await prefs.setString(
      _loginTypeKey,
      _googleValue,
    );
  }

  // =========================================================
  // LOGIN TYPE
  // =========================================================

  static Future<String?> getLoginType() async {
    final prefs =
        await SharedPreferences.getInstance();

    return prefs.getString(
      _loginTypeKey,
    );
  }

  // =========================================================
  // IS GUEST
  // =========================================================

  static Future<bool> isGuest() async {
    return await getLoginType() ==
        _guestValue;
  }

  // =========================================================
  // IS GOOGLE USER
  // =========================================================

  static Future<bool> isGoogleUser() async {
    return await getLoginType() ==
        _googleValue;
  }

  // =========================================================
  // HAS SELECTED LOGIN METHOD
  // =========================================================

  static Future<bool>
      hasSelectedLoginMethod() async {
    final loginType =
        await getLoginType();

    return loginType != null;
  }

  // =========================================================
  // LOGOUT / RESET
  // =========================================================

  static Future<void> clearSession() async {
    final prefs =
        await SharedPreferences.getInstance();

    await prefs.remove(
      _loginTypeKey,
    );
  }
}