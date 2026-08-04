import 'package:firebase_auth/firebase_auth.dart';

class UserProfileService {
  UserProfileService._();

  static User? get currentUser => FirebaseAuth.instance.currentUser;

  static bool get isGoogleUser => currentUser != null;

  static String get displayName {
    return currentUser?.displayName?.trim() ?? 'Guest';
  }

  static String get firstName {
    final name = currentUser?.displayName?.trim();

    if (name == null || name.isEmpty) {
      return 'Guest';
    }

    return name.split(RegExp(r'\s+')).first;
  }

  static String get email {
    return currentUser?.email ?? '';
  }

  static String? get photoUrl {
    return currentUser?.photoURL;
  }

  static String? get uid {
    return currentUser?.uid;
  }
}
