import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter/foundation.dart';

class NotificationService {
  NotificationService._();

  static final NotificationService instance =
      NotificationService._();

  final FlutterLocalNotificationsPlugin
      flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    if (kIsWeb) return;
    tz.initializeTimeZones();

    const AndroidInitializationSettings
        initializationSettingsAndroid =
        AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );

    const InitializationSettings
        initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );

    await flutterLocalNotificationsPlugin.initialize(
  settings: initializationSettings,
);

    final androidPlugin =
        flutterLocalNotificationsPlugin
            .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin>();

    await androidPlugin?.requestNotificationsPermission();

    const AndroidNotificationChannel channel =
        AndroidNotificationChannel(
      'daily_quiz_channel',
      'Daily Quiz Notifications',
      description:
          'Daily quiz reminder notifications',
      importance: Importance.high,
    );

    await androidPlugin?.createNotificationChannel(
      channel,
    );

    // Schedule notifications every time app starts
    await scheduleDailyNotifications();

    final pending =
        await flutterLocalNotificationsPlugin
            .pendingNotificationRequests();

    print(
        "Pending Notifications : ${pending.length}");
  }

  Future<void> showTestNotification() async {
  if (kIsWeb) return;
    const AndroidNotificationDetails
        androidDetails =
        AndroidNotificationDetails(
      'daily_quiz_channel',
      'Daily Quiz Notifications',
      channelDescription:
          'Daily quiz reminder notifications',
      importance: Importance.high,
      priority: Priority.high,
    );

    const NotificationDetails details =
        NotificationDetails(
      android: androidDetails,
    );

    await flutterLocalNotificationsPlugin.show(
  id: 999,
  title: 'DevOps Quiz',
  body: 'Test notification',
  notificationDetails: details,
);
  }
  Future<void> testScheduleNotification() async {
  if (kIsWeb) return;

  await flutterLocalNotificationsPlugin.zonedSchedule(
  id: 100,
  title: "Test Notification",
  body: "This notification should appear after 30 seconds.",
  scheduledDate: tz.TZDateTime.now(tz.local).add(
    const Duration(seconds: 30),
  ),
  notificationDetails: const NotificationDetails(
      android: AndroidNotificationDetails(
        'daily_quiz_channel',
        'Daily Quiz Notifications',
        channelDescription: 'Daily quiz reminder notifications',
        importance: Importance.high,
        priority: Priority.high,
      ),
    ),
    androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
  );

  print("30-second test notification scheduled.");
}

  tz.TZDateTime _nextInstance(
    int hour,
    int minute,
  ) {
    final now =
        tz.TZDateTime.now(tz.local);

    var scheduled =
        tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      hour,
      minute,
    );

    if (scheduled.isBefore(now)) {
      scheduled = scheduled.add(
        const Duration(days: 1),
      );
    }

    return scheduled;
  }

  Future<void> scheduleDailyNotifications() async {
    if (kIsWeb) return;
    const AndroidNotificationDetails
        androidDetails =
        AndroidNotificationDetails(
      'daily_quiz_channel',
      'Daily Quiz Notifications',
      channelDescription:
          'Daily quiz reminder notifications',
      importance: Importance.high,
      priority: Priority.high,
    );

    const NotificationDetails details =
        NotificationDetails(
      android: androidDetails,
    );

    // Remove old schedules
await flutterLocalNotificationsPlugin.cancel(
  id: 1,
);

await flutterLocalNotificationsPlugin.cancel(
  id: 2,
);

await flutterLocalNotificationsPlugin.cancel(
  id: 3,
);

    await flutterLocalNotificationsPlugin.zonedSchedule(
  id: 1,
  title: '☀️ Good Morning!',
  body: 'Complete today\'s DevOps Quiz and earn more points!',
  scheduledDate: _nextInstance(9, 0),
  notificationDetails: details,
      androidScheduleMode:
          AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents:
          DateTimeComponents.time,
    );

await flutterLocalNotificationsPlugin.zonedSchedule(
  id: 2,
      title: '🚀 DevOps Challenge',
      body: 'Take a quick DevOps Quiz and keep your streak alive!',
      scheduledDate: _nextInstance(16, 0),
      notificationDetails: details,
      androidScheduleMode:
          AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents:
          DateTimeComponents.time,
    );

await flutterLocalNotificationsPlugin.zonedSchedule(
      id: 3,
      title: '🌙 Before You Sleep',
      body: 'Finish today\'s DevOps Quiz before the day ends!',
      scheduledDate: _nextInstance(21, 0),
      notificationDetails: details,
      androidScheduleMode:
          AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents:
          DateTimeComponents.time,
    );

    final pending =
        await flutterLocalNotificationsPlugin
            .pendingNotificationRequests();

    print(
        "Scheduled Notifications : ${pending.length}");
        for (final notification in pending) {
  print(
    "ID: ${notification.id}, Title: ${notification.title}",
  );
}
  }
}