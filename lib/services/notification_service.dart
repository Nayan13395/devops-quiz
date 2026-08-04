import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationMessage {
  final String title;
  final String body;

  const NotificationMessage({required this.title, required this.body});
}

class NotificationService {
  NotificationService._();

  static final NotificationService instance = NotificationService._();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
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

  // =========================================================
  // INITIALIZE
  // =========================================================

  Future<void> initialize() async {
    if (kIsWeb) {
      return;
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

      const AndroidNotificationChannel channel = AndroidNotificationChannel(
        'daily_quiz_channel',
        'Daily Quiz Notifications',
        description: 'Daily quiz reminder notifications',
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
  // TEST IMMEDIATE NOTIFICATION
  // =========================================================

  Future<void> showTestNotification() async {
    if (kIsWeb) {
      return;
    }

    const AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'daily_quiz_channel',
          'Daily Quiz Notifications',
          channelDescription: 'Daily quiz reminder notifications',
          importance: Importance.high,
          priority: Priority.high,
        );

    const NotificationDetails details = NotificationDetails(
      android: androidDetails,
    );

    try {
      await flutterLocalNotificationsPlugin.show(
        id: 999,
        title: 'DevOps Quiz',
        body: 'Test notification',
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
      final tz.TZDateTime testTime = tz.TZDateTime.now(
        tz.local,
      ).add(const Duration(seconds: 30));

      debugPrint('Test notification scheduled for: $testTime');

      await flutterLocalNotificationsPlugin.zonedSchedule(
        id: 100,
        title: 'Test Notification',
        body: 'This notification should appear after 30 seconds.',
        scheduledDate: testTime,
        notificationDetails: const NotificationDetails(
          android: AndroidNotificationDetails(
            'daily_quiz_channel',
            'Daily Quiz Notifications',
            channelDescription: 'Daily quiz reminder notifications',
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

  NotificationMessage messageForToday(int offset) {
    // Use the timezone-aware local date.

    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);

    final DateTime startOfYear = DateTime(now.year, 1, 1);

    final DateTime today = DateTime(now.year, now.month, now.day);

    final int dayNumber = today.difference(startOfYear).inDays;

    return _messages[(dayNumber + offset) % _messages.length];
  }

  // =========================================================
  // DAILY NOTIFICATIONS
  // =========================================================

  Future<void> scheduleDailyNotifications() async {
    if (kIsWeb) {
      return;
    }

    try {
      const AndroidNotificationDetails androidDetails =
          AndroidNotificationDetails(
            'daily_quiz_channel',
            'Daily Quiz Notifications',
            channelDescription: 'Daily quiz reminder notifications',
            importance: Importance.high,
            priority: Priority.high,
          );

      const NotificationDetails details = NotificationDetails(
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

      final NotificationMessage morning = messageForToday(0);

      final NotificationMessage afternoon = messageForToday(1);

      final NotificationMessage evening = messageForToday(2);

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
    } catch (e, stackTrace) {
      // Notification scheduling must never
      // crash the application.

      debugPrint('Daily notification scheduling failed: $e');

      debugPrint('$stackTrace');
    }
  }
}
