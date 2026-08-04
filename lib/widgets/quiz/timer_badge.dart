import 'package:flutter/material.dart';

class TimerBadge extends StatelessWidget {
  final int timeLeft;

  const TimerBadge({super.key, required this.timeLeft});

  @override
  Widget build(BuildContext context) {
    Color badgeColor;

    if (timeLeft <= 5) {
      badgeColor = Colors.red;
    } else if (timeLeft <= 10) {
      badgeColor = Colors.orange;
    } else {
      badgeColor = Theme.of(context).colorScheme.secondaryContainer;
    }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: badgeColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: badgeColor.withValues(alpha: 0.35),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.timer_outlined,
            color: timeLeft <= 10
                ? Colors.white
                : Theme.of(context).iconTheme.color,
          ),

          const SizedBox(width: 8),

          Text(
            "${timeLeft}s",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: timeLeft <= 10
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyLarge?.color,
            ),
          ),
        ],
      ),
    );
  }
}
