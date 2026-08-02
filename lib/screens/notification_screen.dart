import 'package:flutter/material.dart';

import '../models/app_notification.dart';
import '../services/in_app_notification_service.dart';
import 'games_screen.dart';
import 'lucky_slot_screen.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() =>
      _NotificationScreenState();
}

class _NotificationScreenState
    extends State<NotificationScreen> {
  bool _loading = true;

  List<AppNotification> _notifications = [];

  @override
  void initState() {
    super.initState();
    _loadNotifications();
  }

  // =========================================================
  // LOAD NOTIFICATIONS
  // =========================================================

  Future<void> _loadNotifications() async {
    final notifications =
        await InAppNotificationService
            .getNotifications();

    if (!mounted) return;

    setState(() {
      _notifications = notifications;
      _loading = false;
    });
  }

  // =========================================================
  // MARK SINGLE NOTIFICATION AS READ
  // =========================================================

  Future<void> _markAsRead(
    AppNotification notification,
  ) async {
    if (notification.isRead) {
      return;
    }

    await InAppNotificationService.markAsRead(
      notification.id,
    );

    if (!mounted) return;

    setState(() {
      final index = _notifications.indexWhere(
        (item) => item.id == notification.id,
      );

      if (index != -1) {
        _notifications[index] =
            _notifications[index].copyWith(
          isRead: true,
        );
      }
    });
  }

  // =========================================================
  // MARK ALL AS READ
  // =========================================================

  Future<void> _markAllAsRead() async {
    await InAppNotificationService.markAllAsRead();

    if (!mounted) return;

    setState(() {
      _notifications = _notifications
          .map(
            (notification) =>
                notification.copyWith(
              isRead: true,
            ),
          )
          .toList();
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'All notifications marked as read.',
        ),
      ),
    );
  }

  // =========================================================
  // NOTIFICATION ACTION
  // =========================================================

  Future<void> _handleNotification(
    AppNotification notification,
  ) async {
    // Mark as read first.
    await _markAsRead(
      notification,
    );

    if (!mounted) return;

    final String? route =
        notification.actionRoute;

    // Notification has no action.
    if (route == null) {
      return;
    }

    switch (route) {
      // =====================================================
      // GAMES
      // =====================================================

      case 'games':
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                const GamesScreen(),
          ),
        );
        break;

      // =====================================================
      // LUCKY SLOTS
      // =====================================================

      case 'lucky_slots':
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                const LuckySlotScreen(),
          ),
        );
        break;

      // =====================================================
      // UNKNOWN ROUTE
      // =====================================================

      default:
        debugPrint(
          'Unknown notification route: $route',
        );
        break;
    }

    // Refresh notification list when user returns.
    if (!mounted) return;

    await _loadNotifications();
  }

  // =========================================================
  // UNREAD COUNT
  // =========================================================

  int get _unreadCount {
    return _notifications
        .where(
          (notification) =>
              !notification.isRead,
        )
        .length;
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
        ),
        actions: [
          if (_unreadCount > 0)
            TextButton(
              onPressed:
                  _markAllAsRead,
              child: const Text(
                'Mark all read',
              ),
            ),

          const SizedBox(
            width: 8,
          ),
        ],
      ),

      body: _loading
          ? const Center(
              child:
                  CircularProgressIndicator(),
            )
          : _notifications.isEmpty
              ? _buildEmptyState()
              : RefreshIndicator(
                  onRefresh:
                      _loadNotifications,
                  child: ListView(
                    physics:
                        const AlwaysScrollableScrollPhysics(),
                    padding:
                        const EdgeInsets.fromLTRB(
                      16,
                      16,
                      16,
                      30,
                    ),
                    children: [
                      // =====================================
                      // HEADER
                      // =====================================

                      _buildHeader(),

                      const SizedBox(
                        height: 20,
                      ),

                      // =====================================
                      // NOTIFICATIONS
                      // =====================================

                      ..._notifications.map(
                        (notification) =>
                            _NotificationCard(
                          notification:
                              notification,
                          onTap: () {
                            _handleNotification(
                              notification,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }

  // =========================================================
  // HEADER
  // =========================================================

  Widget _buildHeader() {
    final colorScheme =
        Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(
        18,
      ),
      decoration: BoxDecoration(
        color:
            colorScheme.primaryContainer,
        borderRadius:
            BorderRadius.circular(
          20,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color:
                  colorScheme.primary,
              borderRadius:
                  BorderRadius.circular(
                16,
              ),
            ),
            child: Icon(
              Icons
                  .notifications_active_rounded,
              color:
                  colorScheme.onPrimary,
              size: 30,
            ),
          ),

          const SizedBox(
            width: 15,
          ),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                const Text(
                  'Stay Updated',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(
                  height: 4,
                ),

                Text(
                  _unreadCount == 0
                      ? 'You are all caught up!'
                      : '$_unreadCount unread '
                          '${_unreadCount == 1 ? 'notification' : 'notifications'}',
                  style: TextStyle(
                    color:
                        colorScheme
                            .onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =========================================================
  // EMPTY STATE
  // =========================================================

  Widget _buildEmptyState() {
    final colorScheme =
        Theme.of(context).colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(
          30,
        ),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Icon(
              Icons
                  .notifications_none_rounded,
              size: 80,
              color:
                  colorScheme.primary
                      .withValues(
                alpha: 0.6,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            const Text(
              'No Notifications',
              style: TextStyle(
                fontSize: 24,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 8,
            ),

            Text(
              'App updates, new features and rewards will appear here.',
              textAlign:
                  TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color:
                    colorScheme
                        .onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ===========================================================
// NOTIFICATION CARD
// ===========================================================

class _NotificationCard
    extends StatelessWidget {
  final AppNotification notification;

  final VoidCallback onTap;

  const _NotificationCard({
    required this.notification,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme =
        Theme.of(context).colorScheme;

    return Card(
      elevation:
          notification.isRead ? 1 : 4,
      margin: const EdgeInsets.only(
        bottom: 14,
      ),
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(
          18,
        ),
        side: BorderSide(
          color: notification.isRead
              ? colorScheme
                  .outlineVariant
              : colorScheme.primary
                  .withValues(
                  alpha: 0.35,
                ),
          width:
              notification.isRead
                  ? 1
                  : 1.5,
        ),
      ),
      child: InkWell(
        borderRadius:
            BorderRadius.circular(
          18,
        ),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(
            16,
          ),
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              // =============================================
              // ICON
              // =============================================

              Container(
                width: 52,
                height: 52,
                alignment:
                    Alignment.center,
                decoration: BoxDecoration(
                  color:
                      colorScheme
                          .primaryContainer,
                  borderRadius:
                      BorderRadius.circular(
                    15,
                  ),
                ),
                child: Text(
                  notification.icon,
                  style:
                      const TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),

              const SizedBox(
                width: 14,
              ),

              // =============================================
              // CONTENT
              // =============================================

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            notification
                                .title,
                            style:
                                TextStyle(
                              fontSize: 17,
                              fontWeight:
                                  notification
                                          .isRead
                                      ? FontWeight
                                          .w600
                                      : FontWeight
                                          .bold,
                            ),
                          ),
                        ),

                        // ===================================
                        // UNREAD DOT
                        // ===================================

                        if (!notification
                            .isRead)
                          Container(
                            width: 10,
                            height: 10,
                            margin:
                                const EdgeInsets
                                    .only(
                              left: 8,
                            ),
                            decoration:
                                BoxDecoration(
                              color:
                                  colorScheme
                                      .primary,
                              shape:
                                  BoxShape
                                      .circle,
                            ),
                          ),
                      ],
                    ),

                    const SizedBox(
                      height: 6,
                    ),

                    Text(
                      notification.message,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.4,
                        color:
                            colorScheme
                                .onSurfaceVariant,
                      ),
                    ),

                    const SizedBox(
                      height: 12,
                    ),

                    Row(
                      children: [
                        // ===================================
                        // DATE
                        // ===================================

                        Icon(
                          Icons
                              .access_time_rounded,
                          size: 14,
                          color:
                              colorScheme
                                  .onSurfaceVariant,
                        ),

                        const SizedBox(
                          width: 5,
                        ),

                        Text(
                          _formatDate(
                            notification
                                .createdAt,
                          ),
                          style:
                              TextStyle(
                            fontSize: 12,
                            color:
                                colorScheme
                                    .onSurfaceVariant,
                          ),
                        ),

                        const Spacer(),

                        // ===================================
                        // ACTION
                        // ===================================

                        if (notification
                                .actionText !=
                            null)
                          Row(
                            mainAxisSize:
                                MainAxisSize.min,
                            children: [
                              Text(
                                notification
                                    .actionText!,
                                style:
                                    TextStyle(
                                  fontSize: 13,
                                  fontWeight:
                                      FontWeight
                                          .bold,
                                  color:
                                      colorScheme
                                          .primary,
                                ),
                              ),

                              const SizedBox(
                                width: 3,
                              ),

                              Icon(
                                Icons
                                    .arrow_forward_rounded,
                                size: 16,
                                color:
                                    colorScheme
                                        .primary,
                              ),
                            ],
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

  // =========================================================
  // DATE FORMAT
  // =========================================================

  String _formatDate(
    DateTime date,
  ) {
    final now =
        DateTime.now();

    final today =
        DateTime(
      now.year,
      now.month,
      now.day,
    );

    final notificationDate =
        DateTime(
      date.year,
      date.month,
      date.day,
    );

    final difference =
        today.difference(
      notificationDate,
    );

    if (difference.inDays == 0) {
      return 'Today';
    }

    if (difference.inDays == 1) {
      return 'Yesterday';
    }

    if (difference.inDays > 1 &&
        difference.inDays < 7) {
      return '${difference.inDays} days ago';
    }

    return '${date.day.toString().padLeft(2, '0')}/'
        '${date.month.toString().padLeft(2, '0')}/'
        '${date.year}';
  }
}