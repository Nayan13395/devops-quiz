import 'package:flutter/material.dart';

import '../models/app_notification.dart';
import '../services/daily_login_bonus_service.dart';
import '../services/in_app_notification_service.dart';
import '../services/rate_prompt_service.dart';
import '../widgets/daily_login_bonus_dialog.dart';
import '../widgets/play_store_badge.dart';
import '../widgets/whats_new_dialog.dart';
import 'achievement_screen.dart';
import 'category_screen.dart';
import 'certificates_screen.dart';
import 'games_screen.dart';
import 'lucky_slot_screen.dart';
import 'scripting_screen.dart';
import 'settings_screen.dart';
import 'theme_screen.dart';
import 'quiz_screen.dart'; // <-- Added for Daily Quiz redirect

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool _loading = true;
  List<AppNotification> _notifications = [];
  final Set<String> _processingNotifications = {};

  @override
  void initState() {
    super.initState();
    _loadNotifications();
  }

  Future<void> _loadNotifications() async {
    try {
      setState(() {
        _loading = true;
      });

      final notifications =
          await InAppNotificationService.getUnreadNotifications();

      debugPrint('Loaded ${notifications.length} unread notifications');

      for (var notification in notifications) {
        debugPrint(
          'Notification: ${notification.id} - ${notification.title} - Route: ${notification.actionRoute}',
        );
      }

      if (!mounted) return;

      setState(() {
        _notifications = notifications;
        _loading = false;
      });
    } catch (e, stackTrace) {
      debugPrint('Error loading notifications: $e');
      debugPrint('Stack trace: $stackTrace');

      if (!mounted) return;

      setState(() {
        _loading = false;
        _notifications = [];
      });
    }
  }

  Future<void> _markAsRead(AppNotification notification) async {
    await InAppNotificationService.markAsRead(notification.id);

    if (!mounted) return;

    setState(() {
      _notifications.removeWhere((item) => item.id == notification.id);
    });
  }

  Future<void> _markAllAsRead() async {
    await InAppNotificationService.markAllAsRead();

    if (!mounted) return;

    setState(() {
      _notifications = [];
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('All notifications read.')));
  }

  // ✅ KEY METHOD FOR REDIRECTING
  Future<void> _handleNotification(AppNotification notification) async {
    if (!_processingNotifications.add(notification.id)) return;
    setState(() {});

    try {
      final String? route = notification.actionRoute;

      switch (route) {
        case 'claim_daily_reward':
          final bonus = await DailyLoginBonusService.claimDailyBonus();
          await _markAsRead(notification);
          if (!mounted) return;

          if (bonus == null) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Today\'s reward was already claimed.'),
              ),
            );
          } else {
            await showDailyLoginBonusDialog(context, bonus);
          }
          break;

        case 'daily_quiz':
          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  const QuizScreen(category: 'DailyQuiz', setNumber: 0),
            ),
          );
          await _markAsRead(notification);
          break;

        case 'games':
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const GamesScreen()),
          );
          await _markAsRead(notification);
          break;

        case 'lucky_slots':
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const LuckySlotScreen()),
          );
          await _markAsRead(notification);
          break;

        case 'scripting':
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ScriptingScreen()),
          );
          await _markAsRead(notification);
          break;

        case 'certificates':
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const CertificatesScreen()),
          );
          await _markAsRead(notification);
          break;

        case 'categories':
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const CategoryScreen()),
          );
          await _markAsRead(notification);
          break;

        case 'themes':
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ThemeScreen()),
          );
          await _markAsRead(notification);
          break;

        case 'settings':
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SettingsScreen()),
          );
          await _markAsRead(notification);
          break;

        case 'achievements':
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AchievementScreen()),
          );
          await _markAsRead(notification);
          break;

        case 'whats_new':
          await showWhatsNew(context);
          await _markAsRead(notification);
          break;

        case 'rate_app':
          await RatePromptService.markRated();
          await RatePromptService.openStore();
          await _markAsRead(notification);
          break;

        case 'play_store':
          await PlayStoreBadge.open();
          await _markAsRead(notification);
          break;

        case null:
          await _markAsRead(notification);
          break;

        default:
          throw StateError('Unknown notification route: $route');
      }
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Unable to open notification: $error')),
        );
      }
    } finally {
      _processingNotifications.remove(notification.id);
      if (mounted) await _loadNotifications();
    }
  }

  int get _unreadCount => _notifications.isEmpty ? 0 : _notifications.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        actions: [
          if (_unreadCount > 0)
            TextButton.icon(
              onPressed: _markAllAsRead,
              icon: const Icon(Icons.done_all_rounded, size: 18),
              label: const Text('Read All'),
            ),
          const SizedBox(width: 8),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _notifications.isEmpty
          ? _buildEmptyState()
          : RefreshIndicator(
              onRefresh: _loadNotifications,
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 30),
                children: [
                  _buildHeader(),
                  const SizedBox(height: 20),
                  ..._notifications.map(
                    (notification) => _NotificationCard(
                      notification: notification,
                      isProcessing: _processingNotifications.contains(
                        notification.id,
                      ),
                      onTap: () => _handleNotification(notification),
                      onMarkRead: () => _markAsRead(notification),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildHeader() {
    final colorScheme = Theme.of(context).colorScheme;
    final double screenWidth = MediaQuery.sizeOf(context).width;
    final bool smallScreen = screenWidth < 360;
    final double iconContainerSize = smallScreen ? 46 : 55;
    final double iconSize = smallScreen ? 25 : 30;

    return Container(
      padding: EdgeInsets.all(smallScreen ? 14 : 18),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: iconContainerSize,
            height: iconContainerSize,
            decoration: BoxDecoration(
              color: colorScheme.primary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              Icons.notifications_active_rounded,
              color: colorScheme.onPrimary,
              size: iconSize,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Stay Updated',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  '$_unreadCount unread '
                  '${_unreadCount == 1 ? 'notification' : 'notifications'}',
                  style: TextStyle(color: colorScheme.onSurfaceVariant),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    final colorScheme = Theme.of(context).colorScheme;

    return RefreshIndicator(
      onRefresh: _loadNotifications,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.65,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.notifications_none_rounded,
                      size: 70,
                      color: colorScheme.primary.withValues(alpha: 0.6),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'You\'re All Caught Up!',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'New app updates, features, games and rewards will appear here.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NotificationCard extends StatelessWidget {
  final AppNotification notification;
  final VoidCallback onTap;
  final VoidCallback onMarkRead;
  final bool isProcessing;

  const _NotificationCard({
    required this.notification,
    required this.onTap,
    required this.onMarkRead,
    required this.isProcessing,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final double screenWidth = MediaQuery.sizeOf(context).width;
    final bool smallScreen = screenWidth < 360;

    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(
          color: colorScheme.primary.withValues(alpha: 0.35),
          width: 1.5,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: isProcessing ? null : onTap,
        child: Padding(
          padding: EdgeInsets.all(smallScreen ? 13 : 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: smallScreen ? 44 : 52,
                height: smallScreen ? 44 : 52,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  notification.icon,
                  style: TextStyle(fontSize: smallScreen ? 23 : 27),
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            notification.title,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.only(left: 8),
                          decoration: BoxDecoration(
                            color: colorScheme.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Text(
                      notification.message,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.4,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 4,
                      runSpacing: 4,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.access_time_rounded,
                              size: 14,
                              color: colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              _formatDate(notification.createdAt),
                              style: TextStyle(
                                fontSize: 12,
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                        if (notification.actionText != null)
                          TextButton.icon(
                            onPressed: isProcessing ? null : onTap,
                            icon: isProcessing
                                ? const SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  )
                                : const Icon(Icons.arrow_forward_rounded),
                            label: Text(notification.actionText!),
                          ),
                        IconButton(
                          tooltip: 'Mark as read',
                          visualDensity: VisualDensity.compact,
                          onPressed: isProcessing ? null : onMarkRead,
                          icon: const Icon(Icons.mark_email_read_outlined),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final notificationDate = DateTime(date.year, date.month, date.day);
    final difference = today.difference(notificationDate);

    if (difference.inDays == 0) return 'Today';
    if (difference.inDays == 1) return 'Yesterday';
    if (difference.inDays > 1 && difference.inDays < 7) {
      return '${difference.inDays} days ago';
    }

    return '${date.day.toString().padLeft(2, '0')}/'
        '${date.month.toString().padLeft(2, '0')}/'
        '${date.year}';
  }
}
