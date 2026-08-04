import 'package:flutter/material.dart';

Future<void> showDailyLoginBonusDialog(BuildContext context, int bonus) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (dialogContext) {
      final size = MediaQuery.sizeOf(dialogContext);

      final bool smallScreen = size.height < 750;

      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 400,
            maxHeight: size.height * 0.88,
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: smallScreen ? 20 : 24,
              vertical: smallScreen ? 16 : 24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // =========================
                // ANIMATED GIFT
                // =========================
                TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 700),
                  tween: Tween(begin: 0.0, end: 1.0),
                  curve: Curves.elasticOut,
                  builder: (context, value, child) {
                    return Transform.scale(scale: value, child: child);
                  },
                  child: Text(
                    '🎁',
                    style: TextStyle(fontSize: smallScreen ? 50 : 64),
                  ),
                ),

                SizedBox(height: smallScreen ? 8 : 12),

                // =========================
                // TITLE
                // =========================
                Text(
                  'Daily Login Bonus',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: smallScreen ? 22 : 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: smallScreen ? 5 : 8),

                Text(
                  'Thanks for coming back!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: smallScreen ? 14 : 15,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),

                SizedBox(height: smallScreen ? 16 : 22),

                // =========================
                // BONUS CARD
                // =========================
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: smallScreen ? 14 : 18,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '⭐',
                        style: TextStyle(fontSize: smallScreen ? 28 : 34),
                      ),

                      const SizedBox(height: 4),

                      // Animated points
                      TweenAnimationBuilder<double>(
                        duration: const Duration(milliseconds: 1000),
                        tween: Tween(begin: 0, end: bonus.toDouble()),
                        curve: Curves.easeOutCubic,
                        builder: (context, value, child) {
                          return Text(
                            '+${value.round()}',
                            style: TextStyle(
                              fontSize: smallScreen ? 32 : 38,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 2),

                      const Text(
                        'POINTS',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: smallScreen ? 14 : 18),

                // =========================
                // MESSAGE
                // =========================
                Text(
                  'Your daily reward has been added '
                  'to your total points.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: smallScreen ? 14 : 15,
                    height: 1.3,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),

                SizedBox(height: smallScreen ? 16 : 22),

                // =========================
                // BUTTON
                // =========================
                SizedBox(
                  width: double.infinity,
                  height: smallScreen ? 46 : 50,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(dialogContext);
                    },
                    icon: const Icon(Icons.celebration_outlined),
                    label: const Text(
                      'Awesome!',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
