import 'package:devops_quiz/services/in_app_notification_service.dart';
import 'package:devops_quiz/services/whats_new_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('latest release notifications link to supported destinations', () async {
    SharedPreferences.setMockInitialValues({});
    final notifications = await InAppNotificationService.getNotifications();
    final byId = {for (final notification in notifications) notification.id: notification};

    const latestIds = [
      'spot_difference_v1',
      'whats_new_v1104',
      'auto_themes_v1',
      'game_sounds_v1',
      'regional_festivals_v1',
      'board_games_v2',
    ];
    expect(byId.keys, containsAll(latestIds));
    expect(byId['spot_difference_v1']!.actionRoute, 'games');
    expect(byId['whats_new_v1104']!.actionRoute, 'whats_new');
    expect(byId['auto_themes_v1']!.actionRoute, 'themes');
    expect(byId['game_sounds_v1']!.actionRoute, 'settings');
    expect(byId['regional_festivals_v1']!.actionRoute, isNull);
    expect(byId['board_games_v2']!.actionRoute, 'games');
  });

  test('What’s New prompts once for the current release', () async {
    SharedPreferences.setMockInitialValues({});
    expect(WhatsNewService.releaseId, '1.10.3');
    expect(await WhatsNewService.shouldShowRelease(), isTrue);
    await WhatsNewService.markReleaseShown();
    expect(await WhatsNewService.shouldShowRelease(), isFalse);
  });
}
