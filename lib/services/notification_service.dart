import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import '../l10n/notification_localizations.dart';
import 'streak_service.dart';

class NotificationMessage {
  final String title;
  final String body;

  const NotificationMessage({required this.title, required this.body});
}

class NotificationService extends WidgetsBindingObserver {
  NotificationService._();

  static final NotificationService instance = NotificationService._();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Timer? _streakReminderRefreshTimer;
  bool _lifecycleObserverAttached = false;

  static const int _streakReminderNotificationId = 4;

  // =========================================================
  // INITIALIZE
  // =========================================================

  Future<void> initialize() async {
    if (kIsWeb) {
      return;
    }

    if (!_lifecycleObserverAttached) {
      WidgetsBinding.instance.addObserver(this);
      _lifecycleObserverAttached = true;
    }

    try {
      // ===========================================
      // INITIALIZE TIMEZONE DATABASE
      // ===========================================

      tz.initializeTimeZones();

      // ===========================================
      // GET DEVICE LOCAL TIMEZONE
      //
      // India:
      // Asia/Kolkata
      //
      // New York:
      // America/New_York
      //
      // California:
      // America/Los_Angeles
      //
      // London:
      // Europe/London
      // ===========================================
      try {
        final TimezoneInfo timezoneInfo =
            await FlutterTimezone.getLocalTimezone();

        String timezoneName = timezoneInfo.identifier;

        debugPrint('Detected device timezone: $timezoneName');

        // ===========================================
        // NORMALIZE LEGACY TIMEZONE NAMES
        // ===========================================

        const Map<String, String> timezoneAliases = {
          'Asia/Calcutta': 'Asia/Kolkata',
          'Asia/Katmandu': 'Asia/Kathmandu',
          'Asia/Rangoon': 'Asia/Yangon',
          'US/Eastern': 'America/New_York',
          'US/Central': 'America/Chicago',
          'US/Mountain': 'America/Denver',
          'US/Pacific': 'America/Los_Angeles',
        };

        timezoneName = timezoneAliases[timezoneName] ?? timezoneName;

        debugPrint('Normalized timezone: $timezoneName');

        final tz.Location location = tz.getLocation(timezoneName);

        tz.setLocalLocation(location);

        debugPrint(
          'Timezone successfully set: '
          '${tz.local.name}',
        );

        debugPrint(
          'Current local time: '
          '${tz.TZDateTime.now(tz.local)}',
        );
      } catch (e) {
        debugPrint('Unable to detect device timezone: $e');

        debugPrint('Using timezone package default.');
      }
      // ===========================================
      // INITIALIZE NOTIFICATIONS
      // ===========================================

      const AndroidInitializationSettings initializationSettingsAndroid =
          AndroidInitializationSettings('@mipmap/ic_launcher');

      const InitializationSettings initializationSettings =
          InitializationSettings(android: initializationSettingsAndroid);

      await flutterLocalNotificationsPlugin.initialize(
        settings: initializationSettings,
      );

      final AndroidFlutterLocalNotificationsPlugin? androidPlugin =
          flutterLocalNotificationsPlugin
              .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin
              >();

      // ===========================================
      // REQUEST NOTIFICATION PERMISSION
      // ===========================================

      try {
        await androidPlugin?.requestNotificationsPermission();
      } catch (e) {
        debugPrint('Notification permission request failed: $e');
      }

      // ===========================================
      // CREATE NOTIFICATION CHANNEL
      // ===========================================

      final l10n = await NotificationLocalizations.loadSelected();
      final AndroidNotificationChannel channel = AndroidNotificationChannel(
        'daily_quiz_channel',
        l10n.text('channel.name'),
        description: l10n.text('channel.description'),
        importance: Importance.high,
      );

      await androidPlugin?.createNotificationChannel(channel);

      // ===========================================
      // SCHEDULE DAILY NOTIFICATIONS
      // ===========================================

      try {
        await scheduleDailyNotifications();
      } catch (e, stackTrace) {
        debugPrint('Unable to schedule daily notifications: $e');

        debugPrint('$stackTrace');
      }

      // ===========================================
      // DEBUG PENDING NOTIFICATIONS
      // ===========================================

      try {
        final pending = await flutterLocalNotificationsPlugin
            .pendingNotificationRequests();

        debugPrint('Pending Notifications: ${pending.length}');
      } catch (e) {
        debugPrint('Unable to read pending notifications: $e');
      }
    } catch (e, stackTrace) {
      // Notification failure must never stop
      // the application from opening.

      debugPrint('NotificationService initialization error: $e');

      debugPrint('$stackTrace');
    }
  }

  // =========================================================
  // UPDATE AVAILABLE
  // =========================================================

  Future<void> showUpdateAvailable(String version) async {
    if (kIsWeb) {
      return;
    }

    final l10n = await NotificationLocalizations.loadSelected();
    final AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'daily_quiz_channel',
          l10n.text('channel.name'),
          channelDescription: l10n.text('channel.description'),
          importance: Importance.high,
          priority: Priority.high,
        );

    try {
      await flutterLocalNotificationsPlugin.show(
        id: 998,
        title: l10n.text('system.updateTitle'),
        body: l10n.text('system.updateBody', {'version': version}),
        notificationDetails: NotificationDetails(android: androidDetails),
      );
    } catch (e) {
      debugPrint('Update notification failed: $e');
    }
  }

  // =========================================================
  // TEST IMMEDIATE NOTIFICATION
  // =========================================================

  Future<void> showTestNotification() async {
    if (kIsWeb) {
      return;
    }

    final l10n = await NotificationLocalizations.loadSelected();
    final AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'daily_quiz_channel',
          l10n.text('channel.name'),
          channelDescription: l10n.text('channel.description'),
          importance: Importance.high,
          priority: Priority.high,
        );

    final NotificationDetails details = NotificationDetails(
      android: androidDetails,
    );

    try {
      await flutterLocalNotificationsPlugin.show(
        id: 999,
        title: l10n.text('system.testTitle'),
        body: l10n.text('system.testBody'),
        notificationDetails: details,
      );
    } catch (e) {
      debugPrint('Test notification failed: $e');
    }
  }

  // =========================================================
  // TEST SCHEDULED NOTIFICATION
  // =========================================================

  Future<void> testScheduleNotification() async {
    if (kIsWeb) {
      return;
    }

    try {
      final l10n = await NotificationLocalizations.loadSelected();
      final tz.TZDateTime testTime = tz.TZDateTime.now(
        tz.local,
      ).add(const Duration(seconds: 30));

      debugPrint('Test notification scheduled for: $testTime');

      await flutterLocalNotificationsPlugin.zonedSchedule(
        id: 100,
        title: l10n.text('system.scheduledTestTitle'),
        body: l10n.text('system.scheduledTestBody'),
        scheduledDate: testTime,
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            'daily_quiz_channel',
            l10n.text('channel.name'),
            channelDescription: l10n.text('channel.description'),
            importance: Importance.high,
            priority: Priority.high,
          ),
        ),

        // Does not require exact alarm permission.
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      );
    } catch (e) {
      debugPrint('Unable to schedule test notification: $e');
    }
  }

  // =========================================================
  // GET NEXT LOCAL NOTIFICATION TIME
  // =========================================================

  tz.TZDateTime _nextInstance(int hour, int minute) {
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);

    tz.TZDateTime scheduled = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      hour,
      minute,
    );

    // If today's notification time has already
    // passed, schedule it for tomorrow.

    if (!scheduled.isAfter(now)) {
      scheduled = tz.TZDateTime(
        tz.local,
        now.year,
        now.month,
        now.day + 1,
        hour,
        minute,
      );
    }

    return scheduled;
  }

  // =========================================================
  // MESSAGE FOR TODAY
  // =========================================================

  Future<NotificationMessage> messageForToday(
    int offset, {
    String? languageCode,
    DateTime? now,
  }) async {
    final current = now ?? tz.TZDateTime.now(tz.local);

    final DateTime startOfYear = DateTime(current.year, 1, 1);

    final DateTime today = DateTime(current.year, current.month, current.day);

    final int dayNumber = today.difference(startOfYear).inDays;

    final l10n = await NotificationLocalizations.loadSelected(
      languageCode: languageCode,
    );
    final messages = l10n.dailyMessages;
    final message = messages[(dayNumber + offset) % messages.length];
    return NotificationMessage(title: message.title, body: message.body);
  }

  // =========================================================
  // DAILY NOTIFICATIONS
  // =========================================================

  Future<void> scheduleDailyNotifications({String? languageCode}) async {
    if (kIsWeb) {
      return;
    }

    try {
      final l10n = await NotificationLocalizations.loadSelected(
        languageCode: languageCode,
      );
      final AndroidNotificationDetails androidDetails =
          AndroidNotificationDetails(
            'daily_quiz_channel',
            l10n.text('channel.name'),
            channelDescription: l10n.text('channel.description'),
            importance: Importance.high,
            priority: Priority.high,
          );

      final NotificationDetails details = NotificationDetails(
        android: androidDetails,
      );

      // ===========================================
      // REMOVE PREVIOUS DAILY SCHEDULES
      // ===========================================

      await flutterLocalNotificationsPlugin.cancel(id: 1);

      await flutterLocalNotificationsPlugin.cancel(id: 2);

      await flutterLocalNotificationsPlugin.cancel(id: 3);

      // ===========================================
      // PICK TODAY'S MESSAGES
      // ===========================================

      final NotificationMessage morning = await messageForToday(
        0,
        languageCode: languageCode,
      );

      final NotificationMessage afternoon = await messageForToday(
        1,
        languageCode: languageCode,
      );

      final NotificationMessage evening = await messageForToday(
        2,
        languageCode: languageCode,
      );

      // ===========================================
      // CALCULATE LOCAL TIMES
      // ===========================================

      final tz.TZDateTime morningTime = _nextInstance(9, 0);

      final tz.TZDateTime afternoonTime = _nextInstance(16, 0);

      final tz.TZDateTime eveningTime = _nextInstance(21, 0);

      debugPrint('--------------------------------');

      debugPrint('Device timezone: ${tz.local.name}');

      debugPrint(
        'Current local time: '
        '${tz.TZDateTime.now(tz.local)}',
      );

      debugPrint('Morning notification: $morningTime');

      debugPrint('Afternoon notification: $afternoonTime');

      debugPrint('Evening notification: $eveningTime');

      debugPrint('--------------------------------');

      // ===========================================
      // 9:00 AM LOCAL TIME
      // ===========================================

      await flutterLocalNotificationsPlugin.zonedSchedule(
        id: 1,
        title: morning.title,
        body: morning.body,
        scheduledDate: morningTime,
        notificationDetails: details,

        // IMPORTANT:
        // Inexact mode prevents the Vivo
        // exact_alarms_not_permitted crash.
        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,

        matchDateTimeComponents: DateTimeComponents.time,
      );

      // ===========================================
      // 4:00 PM LOCAL TIME
      // ===========================================

      await flutterLocalNotificationsPlugin.zonedSchedule(
        id: 2,
        title: afternoon.title,
        body: afternoon.body,
        scheduledDate: afternoonTime,
        notificationDetails: details,

        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,

        matchDateTimeComponents: DateTimeComponents.time,
      );

      // ===========================================
      // 9:00 PM LOCAL TIME
      // ===========================================

      await flutterLocalNotificationsPlugin.zonedSchedule(
        id: 3,
        title: evening.title,
        body: evening.body,
        scheduledDate: eveningTime,
        notificationDetails: details,

        androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,

        matchDateTimeComponents: DateTimeComponents.time,
      );

      // ===========================================
      // DEBUG PENDING NOTIFICATIONS
      // ===========================================

      final pending = await flutterLocalNotificationsPlugin
          .pendingNotificationRequests();

      debugPrint('Scheduled Notifications: ${pending.length}');

      for (final notification in pending) {
        debugPrint(
          'ID: ${notification.id}, '
          'Title: ${notification.title}',
        );
      }

      await scheduleStreakSaveReminder();
    } catch (e, stackTrace) {
      // Notification scheduling must never
      // crash the application.

      debugPrint('Daily notification scheduling failed: $e');

      debugPrint('$stackTrace');
    }
  }

  Future<void> scheduleStreakSaveReminder() async {
    if (kIsWeb) return;

    try {
      await flutterLocalNotificationsPlugin.cancel(
        id: _streakReminderNotificationId,
      );

      if (await StreakService.hasStreakToSave()) {
        final l10n = await NotificationLocalizations.loadSelected();
        final now = tz.TZDateTime.now(tz.local);
        final reminderTime = tz.TZDateTime(
          tz.local,
          now.year,
          now.month,
          now.day + 1,
          23,
          50,
        );

        await flutterLocalNotificationsPlugin.zonedSchedule(
          id: _streakReminderNotificationId,
          title: l10n.text('system.streakTitle'),
          body: l10n.text('system.streakBody'),
          scheduledDate: reminderTime,
          notificationDetails: NotificationDetails(
            android: AndroidNotificationDetails(
              'daily_quiz_channel',
              l10n.text('channel.name'),
              channelDescription: l10n.text('channel.description'),
              importance: Importance.high,
              priority: Priority.high,
            ),
          ),
          androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
        );
      }
    } catch (error, stackTrace) {
      debugPrint('Streak reminder scheduling failed: $error');
      debugPrint('$stackTrace');
    } finally {
      _scheduleStreakReminderRefresh();
    }
  }

  void _scheduleStreakReminderRefresh() {
    _streakReminderRefreshTimer?.cancel();
    if (kIsWeb) return;

    final now = tz.TZDateTime.now(tz.local);
    final nextMidnight = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day + 1,
      0,
      1,
    );
    _streakReminderRefreshTimer = Timer(
      nextMidnight.difference(now),
      scheduleStreakSaveReminder,
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      scheduleStreakSaveReminder();
    }
  }
}
