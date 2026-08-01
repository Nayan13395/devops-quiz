import 'package:flutter/material.dart';

import '../models/achievement.dart';

Future<void> showAchievementDialog(
  BuildContext context,
  Achievement achievement,
) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (dialogContext) {
      final size =
          MediaQuery.of(dialogContext).size;

      final bool smallScreen =
          size.height < 700;

      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(20),
        ),
        insetPadding:
            const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 24,
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 420,
            maxHeight:
                size.height * 0.85,
          ),
          child: SingleChildScrollView(
            padding:
                EdgeInsets.symmetric(
              horizontal: 24,
              vertical:
                  smallScreen ? 18 : 24,
            ),
            child: Column(
              mainAxisSize:
                  MainAxisSize.min,
              children: [
                Text(
                  "🏆",
                  style: TextStyle(
                    fontSize:
                        smallScreen
                            ? 42
                            : 52,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  "Achievement Unlocked!",
                  textAlign:
                      TextAlign.center,
                  style: TextStyle(
                    fontSize:
                        smallScreen
                            ? 20
                            : 22,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                Text(
                  achievement.icon,
                  style: TextStyle(
                    fontSize:
                        smallScreen
                            ? 32
                            : 40,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  achievement.title,
                  textAlign:
                      TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    fontSize:
                        smallScreen
                            ? 20
                            : 23,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  achievement.description,
                  textAlign:
                      TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                    fontSize:
                        smallScreen
                            ? 14
                            : 16,
                    height: 1.3,
                  ),
                ),

                const SizedBox(height: 16),

                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "+${achievement.reward} Points ⭐",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight:
                          FontWeight.bold,
                      fontSize:
                          smallScreen
                              ? 18
                              : 21,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                        dialogContext,
                      );
                    },
                    child: const Text(
                      "Continue",
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