import 'package:flutter/material.dart';

import '../screens/notification_screen.dart';
import '../services/in_app_notification_service.dart';

class NotificationButton extends StatefulWidget {
  const NotificationButton({super.key});

  @override
  State<NotificationButton> createState() => _NotificationButtonState();
}

class _NotificationButtonState extends State<NotificationButton> {
  int _unreadCount = 0;
  bool _loading = true;

  @override
  void initState() {
    super.initState();

    _loadUnreadCount();
  }

  Future<void> _loadUnreadCount() async {
    final count = await InAppNotificationService.getUnreadCount();

    if (!mounted) return;

    setState(() {
      _unreadCount = count;
      _loading = false;
    });
  }

  Future<void> _openNotifications() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const NotificationScreen()),
    );

    await _loadUnreadCount();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final double screenWidth = MediaQuery.sizeOf(context).width;

    // ===========================================
    // RESPONSIVE SIZE
    // ===========================================

    final double buttonSize;

    final double iconSize;

    final double badgeSize;

    final double badgeFontSize;

    if (screenWidth < 360) {
      // Small phones
      buttonSize = 34;
      iconSize = 19;
      badgeSize = 17;
      badgeFontSize = 8;
    } else if (screenWidth < 600) {
      // Normal phones
      buttonSize = 40;
      iconSize = 22;
      badgeSize = 18;
      badgeFontSize = 9;
    } else {
      // Tablets / large screens
      buttonSize = 44;
      iconSize = 24;
      badgeSize = 20;
      badgeFontSize = 10;
    }

    return Tooltip(
      message: 'Notifications',

      child: InkWell(
        borderRadius: BorderRadius.circular(buttonSize * 0.30),

        onTap: _loading ? null : _openNotifications,

        child: Stack(
          clipBehavior: Clip.none,

          children: [
            Container(
              width: buttonSize,
              height: buttonSize,

              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,

                borderRadius: BorderRadius.circular(buttonSize * 0.30),

                border: Border.all(
                  color: colorScheme.primary.withValues(alpha: 0.20),
                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.08),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),

              child: Icon(
                _unreadCount > 0
                    ? Icons.notifications_active_rounded
                    : Icons.notifications_none_rounded,

                size: iconSize,

                color: colorScheme.primary,
              ),
            ),

            // =====================================
            // UNREAD BADGE
            // =====================================
            if (_unreadCount > 0)
              Positioned(
                top: -5,
                right: -5,

                child: Container(
                  constraints: BoxConstraints(
                    minWidth: badgeSize,
                    minHeight: badgeSize,
                  ),

                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 1,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.red,

                    borderRadius: BorderRadius.circular(20),

                    border: Border.all(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      width: 1.5,
                    ),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.15),
                        blurRadius: 3,
                      ),
                    ],
                  ),

                  alignment: Alignment.center,

                  child: Text(
                    _unreadCount > 99 ? '99+' : '$_unreadCount',

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: badgeFontSize,
                      fontWeight: FontWeight.bold,
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
