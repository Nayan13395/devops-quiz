import 'user_profile_service.dart';

class GamePlayerNames {
  GamePlayerNames._();

  static String? get signedInFirstName {
    try {
      if (!UserProfileService.isGoogleUser) return null;
      final name = UserProfileService.firstName.trim();
      if (name.isEmpty || name == 'Guest') return null;
      return name;
    } catch (_) {
      return null;
    }
  }

  static String playerOne({String fallback = 'Player 1'}) =>
      signedInFirstName ?? fallback;

  static String firstNameFrom(String? displayName) {
    final name = displayName?.trim();
    if (name == null || name.isEmpty) return 'Player 1';
    return name.split(RegExp(r'\s+')).first;
  }
}
