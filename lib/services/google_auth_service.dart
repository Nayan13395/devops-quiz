import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'user_session_service.dart';

class GoogleAuthService {
  GoogleAuthService._();

  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static final GoogleSignIn _googleSignIn = GoogleSignIn.instance;

  static bool _initialized = false;

  static String? lastError;

  // =========================================================
  // INITIALIZE
  // =========================================================

  static Future<void> initialize() async {
    if (kIsWeb || _initialized) {
      return;
    }

    try {
      debugPrint('==============================================');
      debugPrint('INITIALIZING GOOGLE SIGN-IN');
      debugPrint('==============================================');

      await _googleSignIn.initialize(
        serverClientId:
            '742868981766-ihssmbru2mo0neaiuli6h3od7g9i19po.apps.googleusercontent.com',
      );

      _initialized = true;

      debugPrint('Google Sign-In initialized successfully.');
    } catch (e, stackTrace) {
      lastError =
          'Google Sign-In could not be initialized. '
          'Please restart the app and try again.';

      debugPrint('GOOGLE INITIALIZATION ERROR');

      debugPrint('Type: ${e.runtimeType}');

      debugPrint('Error: $e');

      debugPrintStack(stackTrace: stackTrace);

      rethrow;
    }
  }

  // =========================================================
  // SIGN IN
  // =========================================================

  static Future<User?> signInWithGoogle() async {
    lastError = null;

    debugPrint('');
    debugPrint('==============================================');
    debugPrint('STARTING GOOGLE SIGN-IN');
    debugPrint('==============================================');

    try {
      final User? user;

      if (kIsWeb) {
        user = await _signInWithGoogleWeb();
      } else {
        user = await _signInWithGoogleMobile();
      }

      if (user == null) {
        lastError ??=
            'Google Sign-In did not return a user. '
            'Please try again.';

        debugPrint('==============================================');
        debugPrint('GOOGLE LOGIN RETURNED NULL');
        debugPrint('Error: $lastError');
        debugPrint('==============================================');

        return null;
      }

      debugPrint('==============================================');
      debugPrint('GOOGLE LOGIN SUCCESSFUL');
      debugPrint('UID: ${user.uid}');
      debugPrint('Email: ${user.email}');
      debugPrint('Name: ${user.displayName}');
      debugPrint('==============================================');

      return user;
    } on GoogleSignInException catch (e, stackTrace) {
      lastError = _googleErrorMessage(e);

      debugPrint('');
      debugPrint('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
      debugPrint('GOOGLE SIGN-IN EXCEPTION');
      debugPrint('Code: ${e.code}');
      debugPrint('Description: ${e.description}');
      debugPrint('Raw: $e');
      debugPrint('Display error: $lastError');
      debugPrint('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');

      debugPrintStack(stackTrace: stackTrace);

      return null;
    } on FirebaseAuthException catch (e, stackTrace) {
      lastError = _firebaseErrorMessage(e);

      debugPrint('');
      debugPrint('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
      debugPrint('FIREBASE AUTHENTICATION EXCEPTION');
      debugPrint('Code: ${e.code}');
      debugPrint('Message: ${e.message}');
      debugPrint('Display error: $lastError');
      debugPrint('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');

      debugPrintStack(stackTrace: stackTrace);

      return null;
    } catch (e, stackTrace) {
      lastError =
          'Unable to sign in with Google. '
          'Please try again.';

      debugPrint('');
      debugPrint('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
      debugPrint('UNEXPECTED GOOGLE LOGIN ERROR');
      debugPrint('Type: ${e.runtimeType}');
      debugPrint('Error: $e');
      debugPrint('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');

      debugPrintStack(stackTrace: stackTrace);

      return null;
    }
  }

  // =========================================================
  // MOBILE LOGIN
  // =========================================================

  static Future<User?> _signInWithGoogleMobile() async {
    await initialize();

    debugPrint('Platform: Android/iOS');

    debugPrint('Opening Google account chooser...');

    // =======================================================
    // GOOGLE ACCOUNT
    // =======================================================

    final GoogleSignInAccount googleUser = await _googleSignIn.authenticate();

    debugPrint('----------------------------------------------');
    debugPrint('GOOGLE ACCOUNT SELECTED');
    debugPrint('ID: ${googleUser.id}');
    debugPrint('Email: ${googleUser.email}');
    debugPrint('Name: ${googleUser.displayName}');
    debugPrint('----------------------------------------------');

    // =======================================================
    // GOOGLE AUTHENTICATION
    // =======================================================

    debugPrint('Getting Google authentication token...');

    final GoogleSignInAuthentication googleAuth = googleUser.authentication;

    final String? idToken = googleAuth.idToken;

    if (idToken == null || idToken.trim().isEmpty) {
      debugPrint('Google ID token is NULL.');

      throw FirebaseAuthException(
        code: 'missing-google-id-token',
        message: 'Google did not return an ID token.',
      );
    }

    debugPrint('Google ID token received.');

    // =======================================================
    // FIREBASE CREDENTIAL
    // =======================================================

    final OAuthCredential credential = GoogleAuthProvider.credential(
      idToken: idToken,
    );

    debugPrint('Firebase credential created.');

    // =======================================================
    // FIREBASE SIGN-IN
    // =======================================================

    debugPrint('Signing in to Firebase...');

    final UserCredential userCredential = await _firebaseAuth
        .signInWithCredential(credential);

    debugPrint('Firebase signInWithCredential completed.');

    User? firebaseUser = userCredential.user;

    firebaseUser ??= _firebaseAuth.currentUser;

    if (firebaseUser == null) {
      throw FirebaseAuthException(
        code: 'firebase-user-null',
        message:
            'Firebase authentication completed '
            'but no authenticated user was available.',
      );
    }

    User authenticatedUser = firebaseUser;

    debugPrint('----------------------------------------------');
    debugPrint('FIREBASE USER AUTHENTICATED');
    debugPrint('UID: ${authenticatedUser.uid}');
    debugPrint('Email: ${authenticatedUser.email}');
    debugPrint('Name: ${authenticatedUser.displayName}');
    debugPrint(
      'New user: '
      '${userCredential.additionalUserInfo?.isNewUser}',
    );
    debugPrint(
      'Providers: '
      '${authenticatedUser.providerData.map((e) => e.providerId).join(", ")}',
    );
    debugPrint('----------------------------------------------');

    // =======================================================
    // RELOAD FIREBASE USER
    // =======================================================

    try {
      await authenticatedUser.reload();

      final User? refreshedUser = _firebaseAuth.currentUser;

      if (refreshedUser != null) {
        authenticatedUser = refreshedUser;
      }

      debugPrint('Firebase user reloaded successfully.');
    } catch (e) {
      debugPrint('Firebase reload warning: $e');
    }

    // =======================================================
    // REFRESH FIREBASE ID TOKEN
    // =======================================================

    try {
      await authenticatedUser.getIdToken(true);

      debugPrint('Firebase ID token refreshed.');
    } catch (e) {
      debugPrint('Firebase token refresh warning: $e');
    }

    // =======================================================
    // SAVE LOCAL LOGIN SESSION
    // =======================================================

    try {
      await UserSessionService.saveGoogleLogin();

      debugPrint('Google login saved locally.');
    } catch (e) {
      debugPrint('WARNING: Could not save local Google session: $e');
    }

    return authenticatedUser;
  }

  // =========================================================
  // WEB LOGIN
  // =========================================================

  static Future<User?> _signInWithGoogleWeb() async {
    debugPrint('Platform: Web');

    final GoogleAuthProvider googleProvider = GoogleAuthProvider();

    googleProvider.addScope('email');

    googleProvider.addScope('profile');

    googleProvider.setCustomParameters({'prompt': 'select_account'});

    debugPrint('Opening Google Firebase popup...');

    final UserCredential userCredential = await _firebaseAuth.signInWithPopup(
      googleProvider,
    );

    User? firebaseUser = userCredential.user;

    firebaseUser ??= _firebaseAuth.currentUser;

    if (firebaseUser == null) {
      throw FirebaseAuthException(
        code: 'firebase-user-null',
        message:
            'Firebase authentication completed '
            'but no authenticated user was available.',
      );
    }

    final User authenticatedUser = firebaseUser;

    debugPrint('----------------------------------------------');
    debugPrint('WEB FIREBASE LOGIN SUCCESSFUL');
    debugPrint('UID: ${authenticatedUser.uid}');
    debugPrint('Email: ${authenticatedUser.email}');
    debugPrint(
      'New user: '
      '${userCredential.additionalUserInfo?.isNewUser}',
    );
    debugPrint('----------------------------------------------');

    try {
      await UserSessionService.saveGoogleLogin();
    } catch (e) {
      debugPrint('WARNING: Could not save local Google session: $e');
    }

    return authenticatedUser;
  }

  // =========================================================
  // GOOGLE ERROR MESSAGE
  // =========================================================

  static String _googleErrorMessage(GoogleSignInException e) {
    final String description = (e.description ?? '').toLowerCase();

    final String raw = e.toString().toLowerCase();

    if (description.contains('account reauth failed') ||
        raw.contains('account reauth failed') ||
        raw.contains('[16]')) {
      return 'Google could not verify this account. '
          'Please try the account again.';
    }

    if (description.contains('network') || raw.contains('network')) {
      return 'Unable to connect to Google. '
          'Please check your internet connection.';
    }

    if (raw.contains('canceled') || raw.contains('cancelled')) {
      return 'Google Sign-In was cancelled.';
    }

    if (description.isNotEmpty) {
      return 'Google Sign-In failed: '
          '${e.description}';
    }

    return 'Unable to sign in with Google. '
        'Please try again.';
  }

  // =========================================================
  // FIREBASE ERROR MESSAGE
  // =========================================================

  static String _firebaseErrorMessage(FirebaseAuthException e) {
    switch (e.code) {
      case 'account-exists-with-different-credential':
        return 'An account already exists with this email '
            'using another sign-in method.';

      case 'credential-already-in-use':
        return 'This Google credential is already linked '
            'to another account.';

      case 'invalid-credential':
        return 'Google returned an invalid or expired '
            'authentication credential. Please try again.';

      case 'user-disabled':
        return 'This account has been disabled.';

      case 'operation-not-allowed':
        return 'Google Sign-In is currently disabled.';

      case 'network-request-failed':
        return 'A network error occurred. '
            'Please check your internet connection.';

      case 'too-many-requests':
        return 'Too many sign-in attempts. '
            'Please wait and try again.';

      case 'missing-google-id-token':
        return 'Google could not provide the ID token '
            'required by Firebase.';

      case 'firebase-user-null':
        return 'Firebase could not load the signed-in '
            'Google account. Please try again.';

      default:
        if (kDebugMode && e.message != null) {
          return 'Firebase Sign-In failed: '
              '${e.message}';
        }

        return 'Unable to sign in with Google. '
            'Please try again.';
    }
  }

  // =========================================================
  // CURRENT USER
  // =========================================================

  static User? get currentUser => _firebaseAuth.currentUser;

  // =========================================================
  // LOGIN STATUS
  // =========================================================

  static bool get isSignedIn => _firebaseAuth.currentUser != null;

  // =========================================================
  // REFRESH CURRENT USER
  // =========================================================

  static Future<User?> refreshCurrentUser() async {
    final User? user = _firebaseAuth.currentUser;

    if (user == null) {
      return null;
    }

    try {
      await user.reload();

      return _firebaseAuth.currentUser ?? user;
    } catch (e) {
      debugPrint('Firebase user refresh warning: $e');

      return _firebaseAuth.currentUser ?? user;
    }
  }

  // =========================================================
  // SIGN OUT
  // =========================================================

  static Future<void> signOut() async {
    debugPrint('');
    debugPrint('==============================================');
    debugPrint('SIGNING OUT');
    debugPrint('==============================================');

    try {
      await _firebaseAuth.signOut();

      debugPrint('Firebase signed out.');

      if (!kIsWeb) {
        try {
          await initialize();

          await _googleSignIn.signOut();

          debugPrint('Google Sign-In signed out.');
        } catch (e) {
          debugPrint('Google Sign-Out warning: $e');
        }
      }
    } finally {
      try {
        await UserSessionService.clearSession();

        debugPrint('Local session cleared.');
      } catch (e) {
        debugPrint('Local session clear warning: $e');
      }

      lastError = null;
    }

    debugPrint('==============================================');
    debugPrint('SIGN OUT COMPLETE');
    debugPrint('==============================================');
  }
}
