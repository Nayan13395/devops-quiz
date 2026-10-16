import 'package:flutter/material.dart';

import '../screens/achievement_screen.dart';
import '../screens/certificates_screen.dart';
import '../screens/games_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/theme_screen.dart';
import '../services/whats_new_service.dart';

class _Highlight {
  final String icon;
  final String title;
  final String description;
  final String? actionLabel;
  final String? featureId;
  final WidgetBuilder? destination;

  const _Highlight(
    this.icon,
    this.title,
    this.description, {
    this.actionLabel,
    this.featureId,
    this.destination,
  });
}

final List<_Highlight> _highlights = [
  _Highlight(
    '🎓',
    'Certificates',
    'Finish all 5 sets of a category to earn a certificate you can '
        'download and share.',
    actionLabel: 'View certificates',
    featureId: WhatsNewService.certificates,
    destination: (_) => const CertificatesScreen(),
  ),
  const _Highlight(
    '📚',
    'A new Set 5 in every category',
    'All 21 categories now have a fifth set of fresh questions.',
  ),
  _Highlight(
    '🎮',
    'Tap Away Arrows: 100 levels',
    'Clear arrows with an open path to the edge. Save your hearts, earn '
        '100 points per level and keep playing at your own pace.',
    actionLabel: 'Play now',
    featureId: WhatsNewService.games,
    destination: (_) => const GamesScreen(),
  ),
  const _Highlight(
    '📅',
    'Daily Quiz from every category',
    'Each day\'s quiz now mixes questions from all 21 categories.',
  ),
  _Highlight(
    '🎨',
    '5 new themes',
    'Sakura, Sunset, Coffee, Aurora and Matrix are ready to unlock.',
    actionLabel: 'Browse themes',
    featureId: WhatsNewService.themes,
    destination: (_) => const ThemeScreen(),
  ),
  _Highlight(
    '🌍',
    '10 new languages',
    'Spanish, French, German, Portuguese, Arabic, Indonesian, Russian, '
        'Japanese, Chinese and Bengali.',
    actionLabel: 'Change language',
    featureId: WhatsNewService.settings,
    destination: (_) => const SettingsScreen(),
  ),
  _Highlight(
    '🏅',
    'New milestones',
    'More achievements for quizzes, points, daily quizzes, sets and '
        'certificates.',
    actionLabel: 'See milestones',
    featureId: WhatsNewService.achievements,
    destination: (_) => const AchievementScreen(),
  ),
  const _Highlight(
    '🔔',
    'Smarter notifications',
    'Get alerts when an update is available on Google Play and new '
        'features in your notification centre.',
  ),
];

/// Shows the release highlights once per release.
Future<void> showWhatsNewIfNeeded(BuildContext context) async {
  if (!await WhatsNewService.shouldShowRelease()) return;
  if (!context.mounted) return;

  await WhatsNewService.markReleaseShown();

  if (!context.mounted) return;

  await showWhatsNew(context);
}

Future<void> showWhatsNew(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (dialogContext) {
      final ColorScheme colors = Theme.of(dialogContext).colorScheme;

      return Dialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520, maxHeight: 640),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
                child: Column(
                  children: [
                    const Text('🆕', style: TextStyle(fontSize: 40)),
                    const SizedBox(height: 6),
                    Text(
                      'What\'s New',
                      style: Theme.of(dialogContext).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'DevOps Quiz ${WhatsNewService.releaseId}',
                      style: TextStyle(color: colors.onSurfaceVariant),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: _highlights.length,
                  separatorBuilder: (_, _) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final item = _highlights[index];

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.icon, style: const TextStyle(fontSize: 28)),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.title,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  item.description,
                                  style: TextStyle(
                                    color: colors.onSurfaceVariant,
                                  ),
                                ),
                                if (item.destination != null)
                                  Align(
                                    alignment: AlignmentDirectional.centerStart,
                                    child: TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        minimumSize: const Size(0, 32),
                                        tapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                      ),
                                      onPressed: () {
                                        final navigator = Navigator.of(
                                          dialogContext,
                                        );

                                        if (item.featureId != null) {
                                          WhatsNewService.markFeatureSeen(
                                            item.featureId!,
                                          );
                                        }

                                        navigator.pop();
                                        navigator.push(
                                          MaterialPageRoute(
                                            builder: item.destination!,
                                          ),
                                        );
                                      },
                                      child: Text('${item.actionLabel} →'),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: FilledButton(
                  onPressed: () => Navigator.pop(dialogContext),
                  child: const Text('Got it'),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
