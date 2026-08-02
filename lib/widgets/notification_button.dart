import 'package:flutter/material.dart';

import '../screens/notification_screen.dart';
import '../services/in_app_notification_service.dart';

class NotificationButton extends StatefulWidget {
  const NotificationButton({
    super.key,
  });

  @override
  State<NotificationButton> createState() =>
      _NotificationButtonState();
}

class _NotificationButtonState
    extends State<NotificationButton> {
  int _unreadCount = 0;
  bool _loading = true;

  @override
  void initState() {
    super.initState();

    _loadUnreadCount();
  }

  // =========================================================
  // LOAD UNREAD COUNT
  // =========================================================

  Future<void> _loadUnreadCount() async {
    final count =
        await InAppNotificationService
            .getUnreadCount();

    if (!mounted) return;

    setState(() {
      _unreadCount = count;
      _loading = false;
    });
  }

  // =========================================================
  // OPEN NOTIFICATION SCREEN
  // =========================================================

  Future<void> _openNotifications() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            const NotificationScreen(),
      ),
    );

    // User may have opened/read notifications,
    // so refresh the badge after returning.
    await _loadUnreadCount();
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(BuildContext context) {
    final colorScheme =
        Theme.of(context).colorScheme;

    return Tooltip(
      message: 'Notifications',

      child: InkWell(
        borderRadius:
            BorderRadius.circular(18),

        onTap:
            _loading
                ? null
                : _openNotifications,

        child: Stack(
          clipBehavior: Clip.none,

          children: [
            // =================================================
            // BELL CONTAINER
            // =================================================

            Container(
              width: 56,
              height: 56,

              decoration: BoxDecoration(
                color:
                    colorScheme
                        .primaryContainer,

                borderRadius:
                    BorderRadius.circular(
                  18,
                ),

                border: Border.all(
                  color:
                      colorScheme.primary
                          .withValues(
                    alpha: 0.20,
                  ),
                ),

                boxShadow: [
                  BoxShadow(
                    color:
                        Colors.black
                            .withValues(
                      alpha: 0.08,
                    ),
                    blurRadius: 8,
                    offset:
                        const Offset(
                      0,
                      3,
                    ),
                  ),
                ],
              ),

              child: Icon(
                _unreadCount > 0
                    ? Icons
                        .notifications_active_rounded
                    : Icons
                        .notifications_none_rounded,

                size: 29,

                color:
                    colorScheme.primary,
              ),
            ),

            // =================================================
            // UNREAD BADGE
            // =================================================

            if (_unreadCount > 0)
              Positioned(
                top: -7,
                right: -7,

                child: Container(
                  constraints:
                      const BoxConstraints(
                    minWidth: 22,
                    minHeight: 22,
                  ),

                  padding:
                      const EdgeInsets
                          .symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),

                  decoration:
                      BoxDecoration(
                    color:
                        Colors.red,

                    borderRadius:
                        BorderRadius.circular(
                      20,
                    ),

                    border: Border.all(
                      color:
                          Theme.of(context)
                              .scaffoldBackgroundColor,
                      width: 2,
                    ),

                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black
                                .withValues(
                          alpha: 0.15,
                        ),
                        blurRadius: 4,
                      ),
                    ],
                  ),

                  alignment:
                      Alignment.center,

                  child: Text(
                    _unreadCount > 99
                        ? '99+'
                        : '$_unreadCount',

                    style:
                        const TextStyle(
                      color:
                          Colors.white,
                      fontSize: 11,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}