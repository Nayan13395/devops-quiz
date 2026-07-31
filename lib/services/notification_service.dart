import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter/foundation.dart';

class NotificationMessage {
  final String title;
  final String body;

  const NotificationMessage({
    required this.title,
    required this.body,
  });
}

class NotificationService {
  NotificationService._();

  static final NotificationService instance =
      NotificationService._();

  final FlutterLocalNotificationsPlugin
      flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static const List<NotificationMessage> _messages = [
    NotificationMessage(
      title: "🚀 Ready for Today's Quiz?",
      body: "Answer today's DevOps questions and grow your skills!",
    ),
    NotificationMessage(
      title: "🏆 Keep Your Streak Alive!",
      body: "Complete today's quiz and continue your winning streak!",
    ),
    NotificationMessage(
      title: "💡 Learn Something New",
      body: "Discover a new DevOps concept today.",
    ),
    NotificationMessage(
      title: "⚡ Sharpen Your DevOps Skills",
      body: "Practice a few questions and level up your knowledge.",
    ),
    NotificationMessage(
      title: "🎯 Daily Challenge Awaits",
      body: "Today's DevOps questions are ready for you.",
    ),
    NotificationMessage(
      title: "🔥 Earn More Points",
      body: "Every correct answer gets you closer to the top!",
    ),
    NotificationMessage(
      title: "📚 Practice Makes Perfect",
      body: "Improve your Docker, Kubernetes and Linux skills.",
    ),
    NotificationMessage(
      title: "🐧 Linux Challenge",
      body: "Ready to test your Linux knowledge today?",
    ),
    NotificationMessage(
      title: "🐳 Docker Time!",
      body: "Container skills begin with one simple question.",
    ),
    NotificationMessage(
      title: "☸ Kubernetes Practice",
      body: "Can you answer today's Kubernetes questions?",
    ),
    NotificationMessage(
      title: "⚙️ Terraform Challenge",
      body: "Build your Infrastructure as Code expertise.",
    ),
    NotificationMessage(
      title: "☁️ Cloud Skills Matter",
      body: "Keep improving your cloud knowledge today.",
    ),
    NotificationMessage(
      title: "🎉 New Achievement Awaits",
      body: "Complete today's quiz and unlock new achievements.",
    ),
    NotificationMessage(
      title: "💯 Can You Score Full Marks?",
      body: "Take today's challenge and aim for a perfect score.",
    ),
    NotificationMessage(
      title: "🚀 Become a DevOps Expert",
      body: "One quiz every day builds real expertise.",
    ),
    NotificationMessage(
      title: "🧠 Learn One New Thing",
      body: "Today's quiz could teach you something valuable.",
    ),
    NotificationMessage(
      title: "🏅 Climb the Leaderboard",
      body: "Earn points and move closer to the top.",
    ),
    NotificationMessage(
      title: "📖 Daily DevOps Practice",
      body: "A few questions today can make a big difference.",
    ),
    NotificationMessage(
      title: "⚙️ Automation Starts Here",
      body: "Improve your DevOps automation knowledge today.",
    ),
    NotificationMessage(
      title: "🌐 Cloud & DevOps Quiz",
      body: "Ready for another round of learning?",
    ),
    NotificationMessage(
      title: "🚀 Keep Growing",
      body: "Consistency is the fastest way to master DevOps.",
    ),
    NotificationMessage(
      title: "🎓 Knowledge Check",
      body: "See how much you've learned with today's quiz.",
    ),
    NotificationMessage(
      title: "💪 Build Better Skills",
      body: "Complete today's quiz and keep improving.",
    ),
    NotificationMessage(
      title: "📈 Small Progress Every Day",
      body: "Practice today and become better than yesterday.",
    ),
    NotificationMessage(
      title: "⭐ Ready for Another Challenge?",
      body: "Your next DevOps quiz is waiting!",
    ),
  ];

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

    await scheduleDailyNotifications();

    final pending =
        await flutterLocalNotificationsPlugin
            .pendingNotificationRequests();

    debugPrint(
      "Pending Notifications : ${pending.length}",
    );
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
          channelDescription:
              'Daily quiz reminder notifications',
          importance: Importance.high,
          priority: Priority.high,
        ),
      ),
      androidScheduleMode:
          AndroidScheduleMode.exactAllowWhileIdle,
    );

    debugPrint(
      "30-second test notification scheduled.",
    );
  }

  tz.TZDateTime _nextInstance(
    int hour,
    int minute,
  ) {
    final now = tz.TZDateTime.now(tz.local);

    var scheduled = tz.TZDateTime(
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

  NotificationMessage messageForToday(
    int offset,
  ) {
    final now = DateTime.now();

    final dayNumber =
        now.difference(
          DateTime(now.year),
        ).inDays;

    return _messages[
        (dayNumber + offset) %
            _messages.length];
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

    // Remove previous schedules
 await flutterLocalNotificationsPlugin.cancel(id: 1);
await flutterLocalNotificationsPlugin.cancel(id: 2);
await flutterLocalNotificationsPlugin.cancel(id: 3);
    // Pick today's messages
    final morning = messageForToday(0);
    final afternoon = messageForToday(1);
    final evening = messageForToday(2);

    // 9:00 AM
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id: 1,
      title: morning.title,
      body: morning.body,
      scheduledDate: _nextInstance(9, 0),
      notificationDetails: details,
      androidScheduleMode:
          AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents:
          DateTimeComponents.time,
    );

    // 4:00 PM
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id: 2,
      title: afternoon.title,
      body: afternoon.body,
      scheduledDate: _nextInstance(16, 0),
      notificationDetails: details,
      androidScheduleMode:
          AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents:
          DateTimeComponents.time,
    );

    // 9:00 PM
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id: 3,
      title: evening.title,
      body: evening.body,
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

    debugPrint(
      "Scheduled Notifications : ${pending.length}",
    );

    for (final notification in pending) {
      debugPrint(
        "ID: ${notification.id}, "
        "Title: ${notification.title}",
      );
    }
  }
}