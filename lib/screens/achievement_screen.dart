import 'package:flutter/material.dart';
import '../models/achievement.dart';
import '../services/achievement_service.dart';

class AchievementScreen extends StatefulWidget {
  const AchievementScreen({super.key});

  @override
  State<AchievementScreen> createState() =>
      _AchievementScreenState();
}

class _AchievementScreenState
    extends State<AchievementScreen> {

  List<Achievement> achievements = [];

  bool loading = true;

  @override
  void initState() {
    super.initState();
    loadAchievements();
  }

  Future<void> loadAchievements() async {
    achievements =
        await AchievementService.getAchievements();

    if (!mounted) return;

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🏆 Achievements"),
      ),
      body: loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: achievements.length,
              itemBuilder: (context, index) {
                final achievement =
                    achievements[index];

                return Card(
                  elevation: achievement.unlocked
                      ? 8
                      : 2,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(18),
                  ),
                  child: ListTile(
                    leading: Text(
                      achievement.icon,
                      style: const TextStyle(
                        fontSize: 34,
                      ),
                    ),
                    title: Text(
                      achievement.title,
                      style: TextStyle(
                        fontWeight:
                            FontWeight.bold,
                        color: achievement.unlocked
                            ? Colors.green
                            : Colors.grey,
                      ),
                    ),
                    subtitle: Text(
                      achievement.description,
                    ),
                    trailing: achievement.unlocked
                        ? const Icon(
                            Icons.check_circle,
                            color: Colors.green,
                          )
                        : const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                  ),
                );
              },
            ),
    );
  }
}