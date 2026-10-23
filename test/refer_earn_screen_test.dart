import 'package:devops_quiz/screens/refer_earn_screen.dart';
import 'package:devops_quiz/services/referral_service.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestReferralService extends ReferralService {
  bool signedIn = true;
  Object? failure;
  int redemptions = 0;
  ReferralProfile profile = const ReferralProfile(
    code: 'DEV-AAAAAA',
    referralCount: 0,
    rewardPoints: 0,
  );

  @override
  bool get isSignedIn => signedIn;

  @override
  Future<ReferralProfile> getProfile() async {
    if (failure != null) throw failure!;
    return profile;
  }

  @override
  Future<int> syncRewards() async => 0;

  @override
  Future<ReferralProfile> redeem(String code) async {
    if (failure != null) throw failure!;
    final normalized = ReferralService.normalizeCode(code);
    if (normalized == null)
      throw const FormatException('Enter a valid DEV referral code.');
    if (normalized == profile.code)
      throw const FormatException('You cannot redeem your own referral code.');
    redemptions++;
    return profile = ReferralProfile(
      code: profile.code,
      referralCount: 0,
      rewardPoints: 0,
      referredBy: 'friend',
      redeemedCode: normalized,
    );
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('guest sees sign-in rather than an unverified earning code', (
    tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    final service = TestReferralService()..signedIn = false;
    await tester.pumpWidget(
      MaterialApp(home: ReferEarnScreen(referralService: service)),
    );
    await tester.pumpAndSettle();
    expect(find.text('Sign in with Google'), findsOneWidget);
    expect(find.byKey(const ValueKey('referral-code-input')), findsNothing);
    expect(
      tester.widget<ElevatedButton>(find.byType(ElevatedButton)).onPressed,
      isNull,
    );
    expect(await PointService.getTotalPoints(), 0);
  });

  testWidgets(
    'friend code can be entered once and validation errors are visible',
    (tester) async {
      SharedPreferences.setMockInitialValues({});
      final service = TestReferralService();
      await tester.pumpWidget(
        MaterialApp(home: ReferEarnScreen(referralService: service)),
      );
      await tester.pumpAndSettle();
      final input = find.byKey(const ValueKey('referral-code-input'));
      await tester.ensureVisible(input);
      await tester.enterText(input, 'bad');
      await tester.ensureVisible(find.byKey(const ValueKey('referral-redeem')));
      await tester.tap(find.byKey(const ValueKey('referral-redeem')));
      await tester.pumpAndSettle();
      expect(find.text('Enter a valid DEV referral code.'), findsOneWidget);
      await tester.enterText(input, ' dev-bbbbbb ');
      await tester.ensureVisible(find.byKey(const ValueKey('referral-redeem')));
      await tester.tap(find.byKey(const ValueKey('referral-redeem')));
      await tester.pumpAndSettle();
      expect(find.text('Redeemed code: DEV-BBBBBB'), findsOneWidget);
      expect(find.byKey(const ValueKey('referral-redeem')), findsNothing);
      expect(service.redemptions, 1);
      expect(await PointService.getTotalPoints(), 0);
    },
  );

  testWidgets('verification permission error can be retried', (tester) async {
    SharedPreferences.setMockInitialValues({});
    final service = TestReferralService()
      ..failure = FirebaseException(
        plugin: 'cloud_firestore',
        code: 'permission-denied',
      );
    await tester.pumpWidget(
      MaterialApp(home: ReferEarnScreen(referralService: service)),
    );
    await tester.pumpAndSettle();
    expect(find.textContaining('not enabled on the server'), findsOneWidget);
    service.failure = null;
    await tester.tap(find.text('Retry'));
    await tester.pumpAndSettle();
    expect(find.text('DEV-AAAAAA'), findsOneWidget);
    expect(find.byKey(const ValueKey('referral-code-input')), findsOneWidget);
  });

  testWidgets('copying and sharing do not earn points', (tester) async {
    SharedPreferences.setMockInitialValues({});
    String? copied;
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async {
        if (call.method == 'Clipboard.setData')
          copied = (call.arguments as Map)['text'] as String;
        return null;
      },
    );
    addTearDown(
      () => tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        SystemChannels.platform,
        null,
      ),
    );
    final service = TestReferralService();
    await tester.pumpWidget(
      MaterialApp(home: ReferEarnScreen(referralService: service)),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byTooltip('Copy Code'));
    await tester.tap(find.byTooltip('Copy Code'));
    await tester.pumpAndSettle();
    expect(copied, 'DEV-AAAAAA');
    await tester.ensureVisible(find.text('Refer a Friend'));
    await tester.tap(find.text('Refer a Friend'));
    await tester.pumpAndSettle();
    expect(await PointService.getTotalPoints(), 0);
    expect(service.redemptions, 0);
  });

  testWidgets('referral code and controls fit narrow phones', (tester) async {
    SharedPreferences.setMockInitialValues({});
    tester.view.devicePixelRatio = 1;
    tester.view.physicalSize = const Size(320, 568);
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final service = TestReferralService()
      ..profile = const ReferralProfile(
        code: 'DEV-ABCDEFGHJKLM',
        referralCount: 2,
        rewardPoints: 2000,
      );
    await tester.pumpWidget(
      MaterialApp(home: ReferEarnScreen(referralService: service)),
    );
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byTooltip('Copy Code'));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    expect(find.text('Successful referrals: 2'), findsOneWidget);
  });
}
