import 'package:flutter/material.dart';

import '../services/in_app_notification_service.dart';
import '../screens/notification_screen.dart';

class NotificationButton extends StatefulWidget {
  const NotificationButton({super.key});

  @override
  State<NotificationButton> createState() => _NotificationButtonState();
}

class _NotificationButtonState extends State<NotificationButton> {
  int _unreadCount = 0;

  @override
  void initState() {
    super.initState();
    _loadUnreadCount();
  }

  Future<void> _loadUnreadCount() async {
    final count = await InAppNotificationService.getUnreadCount();
    if (mounted) {
      setState(() {
        _unreadCount = count;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          icon: const Icon(Icons.notifications_rounded),
          onPressed: () async {
            await _loadUnreadCount();
            if (!context.mounted) return;

            await Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const NotificationScreen()),
            );
            await _loadUnreadCount();
          },
          tooltip: 'Notifications',
          padding: EdgeInsets.zero, // Remove default padding
          constraints: const BoxConstraints(minWidth: 48, minHeight: 48),
        ),
        // ✅ BADGE POPUP - Better positioned
        if (_unreadCount > 0)
          Positioned(
            right: 4, // Adjusted from 8 to 4 for better alignment
            top: 4, // Adjusted from 8 to 4 for better alignment
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 1.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.2),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
              child: Text(
                _unreadCount > 99 ? '99+' : '$_unreadCount',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
