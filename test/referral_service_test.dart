import 'package:devops_quiz/services/referral_service.dart';
import 'package:devops_quiz/services/point_service.dart';
import 'package:devops_quiz/services/leaderboard_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('referral codes persist and support existing codes', () async {
    SharedPreferences.setMockInitialValues({});
    final code = await ReferralService.getReferralCode();
    expect(ReferralService.normalizeCode(code), code);
    expect(await ReferralService.getReferralCode(), code);
    SharedPreferences.setMockInitialValues({'my_referral_code': 'DEV-A7K9P2'});
    expect(await ReferralService.getReferralCode(), 'DEV-A7K9P2');
  });

  test('codes normalize whitespace/case and reject malformed input', () {
    expect(ReferralService.normalizeCode('  dev-a7k9p2  '), 'DEV-A7K9P2');
    for (final code in [
      '',
      'DEV-123',
      'DEV-OOOOOO',
      'other-code',
      'DEV-A7K9P2/extra',
    ]) {
      expect(ReferralService.normalizeCode(code), isNull);
    }
    expect(
      ReferralService.shareMessage('DEV-A7K9P2'),
      contains('Refer & Earn'),
    );
    expect(
      ReferralService.shareMessage('DEV-A7K9P2'),
      contains('com.nayan.devops'),
    );
  });

  test(
    'unsigned users cannot use redemption or create verified codes',
    () async {
      final service = ReferralService();
      expect(service.isSignedIn, isFalse);
      await expectLater(service.getProfile(), throwsA(isA<Exception>()));
      expect(await service.syncRewards(), 0);
    },
  );

  test(
    'verified cumulative rewards credit once and stay outside quiz/game totals',
    () async {
      SharedPreferences.setMockInitialValues({});
      await PointService.applyReferralReward('inviter', 1000);
      await PointService.applyReferralReward('inviter', 1000);
      expect(await PointService.getTotalPoints(), 1000);
      await Future.wait([
        PointService.applyReferralReward('inviter', 2000),
        PointService.applyReferralReward('inviter', 3000),
      ]);
      expect(await PointService.getTotalPoints(), 3000);
      expect(
        (await LeaderboardService().getLeaderboard()).single['points'],
        3000,
      );
      expect(await PointService.getEarnedPoints(), {
        PointSource.quiz: 0,
        PointSource.game: 0,
      });
    },
  );
}
