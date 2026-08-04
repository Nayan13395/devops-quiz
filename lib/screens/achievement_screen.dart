import 'package:flutter/material.dart';

import '../models/achievement.dart';
import '../services/achievement_service.dart';

class AchievementScreen extends StatefulWidget {
  const AchievementScreen({super.key});

  @override
  State<AchievementScreen> createState() => _AchievementScreenState();
}

class _AchievementScreenState extends State<AchievementScreen> {
  List<Achievement> achievements = [];

  bool loading = true;

  @override
  void initState() {
    super.initState();

    loadAchievements();
  }

  Future<void> loadAchievements() async {
    achievements = await AchievementService.getAchievements();

    if (!mounted) return;

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🏆 Achievements")),

      body: loading
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              top: false,
              bottom: true,
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(
                  12,
                  12,
                  12,

                  // Important:
                  // Extra space after last achievement.
                  40,
                ),
                itemCount: achievements.length,
                itemBuilder: (context, index) {
                  final achievement = achievements[index];

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Card(
                      margin: EdgeInsets.zero,
                      elevation: achievement.unlocked ? 8 : 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 8,
                          ),

                          leading: SizedBox(
                            width: 52,
                            child: Center(
                              child: Text(
                                achievement.icon,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 34),
                              ),
                            ),
                          ),

                          title: Text(
                            achievement.title,
                            maxLines: 2,
                            overflow: TextOverflow.visible,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: achievement.unlocked
                                  ? Colors.green
                                  : Colors.grey,
                            ),
                          ),

                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              achievement.description,
                              maxLines: 3,
                              overflow: TextOverflow.visible,
                              style: const TextStyle(
                                fontSize: 15,
                                height: 1.25,
                              ),
                            ),
                          ),

                          trailing: achievement.unlocked
                              ? const Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 28,
                                )
                              : const Icon(
                                  Icons.lock,
                                  color: Colors.grey,
                                  size: 26,
                                ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
