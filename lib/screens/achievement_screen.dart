import 'package:flutter/material.dart';

import '../l10n/achievement_localizations.dart';
import '../l10n/app_localizations.dart';
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
    final colors = Theme.of(context).colorScheme;
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.achievements)),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              top: false,
              bottom: true,
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(12, 7, 12, 40),
                itemCount: achievements.length,
                itemBuilder: (context, index) {
                  final achievement = achievements[index];
                  final text = achievementText(context, achievement);
                  final progress = achievement.unlocked
                      ? 1.0
                      : achievement.progress.clamp(0.0, 1.0);

                  return Card(
                    key: ValueKey('achievement-card-${achievement.id}'),
                    elevation: 1,
                    color: colors.surface,
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                      side: BorderSide(
                        color: colors.outlineVariant.withValues(alpha: 0.55),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            key: ValueKey('achievement-icon-${achievement.id}'),
                            width: 48,
                            height: 48,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: colors.primaryContainer,
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Text(
                              achievement.icon,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 28),
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text.title,
                                  style: Theme.of(context).textTheme.titleMedium
                                      ?.copyWith(fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  text.description,
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                        color: colors.onSurfaceVariant,
                                        height: 1.25,
                                      ),
                                ),
                                if (!achievement.unlocked) ...[
                                  const SizedBox(height: 10),
                                  LinearProgressIndicator(
                                    key: ValueKey(
                                      'achievement-progress-${achievement.id}',
                                    ),
                                    value: progress,
                                    minHeight: 5,
                                    borderRadius: BorderRadius.circular(3),
                                    backgroundColor:
                                        colors.surfaceContainerHighest,
                                  ),
                                ],
                              ],
                            ),
                          ),
                          const SizedBox(width: 12),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Icon(
                              achievement.unlocked
                                  ? Icons.check_circle_rounded
                                  : Icons.lock_outline_rounded,
                              color: achievement.unlocked
                                  ? colors.primary
                                  : colors.onSurfaceVariant,
                              size: 26,
                              semanticLabel: text.title,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
    );
  }
}
