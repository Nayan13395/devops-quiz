import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'point_service.dart';

class ReferralProfile {
  const ReferralProfile({
    required this.code,
    required this.referralCount,
    required this.rewardPoints,
    this.referredBy,
    this.redeemedCode,
  });

  final String code;
  final int referralCount;
  final int rewardPoints;
  final String? referredBy;
  final String? redeemedCode;

  factory ReferralProfile.fromMap(Map<String, dynamic> data) => ReferralProfile(
    code: data['code'] as String,
    referralCount: (data['referralCount'] as num).toInt(),
    rewardPoints: (data['rewardPoints'] as num).toInt(),
    referredBy: data['referredBy'] as String?,
    redeemedCode: data['redeemedCode'] as String?,
  );
}

class ReferralService {
  ReferralService({FirebaseAuth? auth, FirebaseFirestore? firestore})
    : _auth = auth,
      _firestore = firestore;

  final FirebaseAuth? _auth;
  final FirebaseFirestore? _firestore;
  static const int rewardPoints = 1000;
  static const playStoreUrl =
      'https://play.google.com/store/apps/details?id=com.nayan.devops';
  static const String _referralCodeKey = 'my_referral_code';

  FirebaseFirestore get _db => _firestore ?? FirebaseFirestore.instance;

  User? get _user {
    try {
      return (_auth ?? FirebaseAuth.instance).currentUser;
    } catch (_) {
      return null;
    }
  }

  bool get isSignedIn =>
      _user?.providerData.any(
            (provider) => provider.providerId == 'google.com',
          ) ==
          true &&
      _user!.emailVerified;

  String get _uid {
    if (!isSignedIn)
      throw FirebaseAuthException(
        code: 'requires-google-sign-in',
        message: 'Sign in with Google to use referrals.',
      );
    return _user!.uid;
  }

  static String? normalizeCode(String value) {
    final normalized = value.trim().toUpperCase();
    return RegExp(
          r'^DEV-[ABCDEFGHJKLMNPQRSTUVWXYZ23456789]{6,12}$',
        ).hasMatch(normalized)
        ? normalized
        : null;
  }

  static String shareMessage(String code) =>
      'Join me on DevOps Quiz!\n\nMy referral code: $code\n\n'
      'Sign in with Google, open Refer & Earn and enter this code. '
      'Download DevOps Quiz:\n$playStoreUrl';

  Future<ReferralProfile> getProfile() async {
    final uid = _uid;
    final account = _db.collection('referralAccounts').doc(uid);
    for (int attempt = 0; attempt < 5; attempt++) {
      final candidate = attempt == 0
          ? await getReferralCode()
          : _generateReferralCode();
      final result = await _db.runTransaction<ReferralProfile?>(
        (transaction) async {
          final existing = await transaction.get(account);
          if (existing.exists) return ReferralProfile.fromMap(existing.data()!);
          final code = _db.collection('referralCodes').doc(candidate);
          final claimed = await transaction.get(code);
          if (claimed.exists) return null;
          transaction.set(account, {
            'code': candidate,
            'referralCount': 0,
            'rewardPoints': 0,
            'referredBy': null,
            'redeemedCode': null,
            'createdAt': FieldValue.serverTimestamp(),
          });
          transaction.set(code, {
            'ownerUid': uid,
            'createdAt': FieldValue.serverTimestamp(),
          });
          return ReferralProfile(
            code: candidate,
            referralCount: 0,
            rewardPoints: 0,
          );
        },
        timeout: const Duration(seconds: 12),
        maxAttempts: 3,
      );
      if (result != null) return result;
    }
    throw StateError('Could not reserve a referral code. Please retry.');
  }

  Future<ReferralProfile> redeem(String input) async {
    final code = normalizeCode(input);
    if (code == null)
      throw const FormatException('Enter a valid DEV referral code.');
    final uid = _uid;
    await getProfile();
    return _db.runTransaction<ReferralProfile>(
      (transaction) async {
        final accountRef = _db.collection('referralAccounts').doc(uid);
        final codeRef = _db.collection('referralCodes').doc(code);
        final claimRef = _db.collection('referralClaims').doc(uid);
        final account = await transaction.get(accountRef);
        final invitation = await transaction.get(codeRef);
        final existingClaim = await transaction.get(claimRef);
        if (!invitation.exists)
          throw const FormatException('This referral code was not found.');
        final owner = invitation.data()!['ownerUid'] as String;
        if (owner == uid)
          throw const FormatException(
            'You cannot redeem your own referral code.',
          );
        if (existingClaim.exists || account.data()?['referredBy'] != null) {
          throw const FormatException(
            'This account has already redeemed a referral code.',
          );
        }
        transaction.update(accountRef, {
          'referredBy': owner,
          'redeemedCode': code,
        });
        transaction.update(_db.collection('referralAccounts').doc(owner), {
          'referralCount': FieldValue.increment(1),
          'rewardPoints': FieldValue.increment(rewardPoints),
        });
        transaction.set(claimRef, {
          'referrerUid': owner,
          'code': code,
          'points': rewardPoints,
          'createdAt': FieldValue.serverTimestamp(),
        });
        return ReferralProfile.fromMap({
          ...account.data()!,
          'referredBy': owner,
          'redeemedCode': code,
        });
      },
      timeout: const Duration(seconds: 12),
      maxAttempts: 3,
    );
  }

  Future<int> syncRewards() async {
    if (!isSignedIn) return 0;
    final uid = _uid;
    final snapshot = await _db
        .collection('referralAccounts')
        .doc(uid)
        .get(const GetOptions(source: Source.server))
        .timeout(const Duration(seconds: 8));
    if (!snapshot.exists) return 0;
    final profile = ReferralProfile.fromMap(snapshot.data()!);
    await PointService.applyReferralReward(uid, profile.rewardPoints);
    return profile.rewardPoints;
  }

  /// Returns a local code candidate; it is valid only after server registration.
  static Future<String> getReferralCode() async {
    final prefs = await SharedPreferences.getInstance();

    String? existingCode = prefs.getString(_referralCodeKey);

    if (existingCode != null && normalizeCode(existingCode) != null) {
      return normalizeCode(existingCode)!;
    }

    final String newCode = _generateReferralCode();

    await prefs.setString(_referralCodeKey, newCode);

    return newCode;
  }

  /// Generates a code such as:
  ///
  /// DEV-A7K9P2QA
  /// DEV-X3M8Q5BZ
  static String _generateReferralCode() {
    const characters = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';

    final random = Random.secure();

    final code = List.generate(
      8,
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
