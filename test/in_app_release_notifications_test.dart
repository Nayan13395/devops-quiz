import 'package:devops_quiz/l10n/notification_localizations.dart';
import 'package:devops_quiz/services/in_app_notification_service.dart';
import 'package:devops_quiz/services/notification_service.dart';
import 'package:devops_quiz/services/whats_new_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('latest release notifications link to supported destinations', () async {
    SharedPreferences.setMockInitialValues({});
    final notifications = await InAppNotificationService.getNotifications();
    final byId = {
      for (final notification in notifications) notification.id: notification,
    };

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

  test(
    'selected locale changes notification text without changing IDs',
    () async {
      SharedPreferences.setMockInitialValues({'languageCode': 'en'});
      final english = await InAppNotificationService.getNotifications();
      final hindi = await InAppNotificationService.getNotifications(
        languageCode: 'hi',
      );
      final englishById = {for (final item in english) item.id: item};
      final hindiById = {for (final item in hindi) item.id: item};

      expect(hindiById.keys, unorderedEquals(englishById.keys));
      expect(
        hindiById['daily_quiz_v1']!.title,
        isNot(englishById['daily_quiz_v1']!.title),
      );

      await InAppNotificationService.markAsRead('daily_quiz_v1');
      final unreadHindi = await InAppNotificationService.getUnreadNotifications(
        languageCode: 'hi',
      );
      expect(
        unreadHindi.map((item) => item.id),
        isNot(contains('daily_quiz_v1')),
      );
    },
  );

  test('scheduled messages use the requested persisted locale', () async {
    SharedPreferences.setMockInitialValues({'languageCode': 'en'});
    final english = await NotificationService.instance.messageForToday(
      0,
      languageCode: 'en',
      now: DateTime(2026, 11, 14),
    );
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', 'hi');
    final hindi = await NotificationService.instance.messageForToday(
      0,
      now: DateTime(2026, 11, 14),
    );
    expect(hindi.title, isNot(english.title));
    expect(hindi.body, isNot(english.body));

    final selected = await NotificationLocalizations.loadSelected(
      languageCode: 'hi',
    );
    expect(selected.locale, const Locale('hi'));
  });

  test('What’s New prompts once for the current release', () async {
    SharedPreferences.setMockInitialValues({});
    expect(WhatsNewService.releaseId, '1.10.4');
    expect(await WhatsNewService.shouldShowRelease(), isTrue);
    await WhatsNewService.markReleaseShown();
    expect(await WhatsNewService.shouldShowRelease(), isFalse);
  });
}
