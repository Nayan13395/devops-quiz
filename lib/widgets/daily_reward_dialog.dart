import 'package:flutter/material.dart';
import '../models/streak_result.dart';

Future<void> showDailyRewardDialog(
  BuildContext context,
  StreakResult result,
) {
  final bool isBroken = result.streakBroken;

  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Column(
          children: [
            Text(
              isBroken ? "😢" : "🎉",
              style: const TextStyle(fontSize: 50),
            ),
            const SizedBox(height: 10),
            Text(
              isBroken ? "Streak Broken" : "Daily Reward",
              textAlign: TextAlign.center,
            ),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "+${result.reward} Points ⭐",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "🔥 ${result.streak} Day Streak",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              isBroken
                  ? "A new streak has started.\nCome back tomorrow to earn 200 points!"
                  : "Come back tomorrow to earn ${(result.streak + 1) * 100} points!",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              "Total Points: ${result.totalPoints}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Awesome!"),
          ),
        ],
      );
    },
  );
}