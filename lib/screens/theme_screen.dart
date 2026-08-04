import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';
import '../models/app_theme.dart';
import '../services/point_service.dart';
import '../services/theme_service.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  int totalPoints = 0;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    _loadPoints();
  }

  Future<void> _loadPoints() async {
    final points = await PointService.getTotalPoints();

    if (!mounted) return;

    setState(() {
      totalPoints = points;
      loading = false;
    });
  }

  Future<void> _selectTheme(AppThemeInfo theme) async {
    final bool unlocked = ThemeService.isThemeUnlocked(
      theme: theme,
      totalPoints: totalPoints,
    );

    if (!unlocked) {
      _showLockedDialog(theme);
      return;
    }

    final provider = context.read<ThemeProvider>();

    final changed = await provider.setTheme(
      theme: theme.type,
      totalPoints: totalPoints,
    );

    if (!mounted) return;

    if (changed) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${theme.emoji} ${theme.name} theme applied!'),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  void _showLockedDialog(AppThemeInfo theme) {
    final remaining = ThemeService.pointsRemaining(
      theme: theme,
      totalPoints: totalPoints,
    );

    final progress = ThemeService.unlockProgress(
      theme: theme,
      totalPoints: totalPoints,
    );

    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          icon: const Icon(Icons.lock_outline, size: 42),

          title: Text(
            '${theme.emoji} ${theme.name}',
            textAlign: TextAlign.center,
          ),

          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'This theme is still locked.',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              Text(
                'Unlock at '
                '${_formatPoints(theme.requiredPoints)} points',
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              Text(
                'You need '
                '${_formatPoints(remaining)} more points.',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 18),

              LinearProgressIndicator(
                value: progress,
                minHeight: 8,
                borderRadius: BorderRadius.circular(10),
              ),

              const SizedBox(height: 8),

              Text(
                '${_formatPoints(totalPoints)} / '
                '${_formatPoints(theme.requiredPoints)}',
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
            ],
          ),

          actionsAlignment: MainAxisAlignment.center,

          actions: [
            FilledButton(
              onPressed: () {
                Navigator.pop(dialogContext);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  String _formatPoints(int points) {
    final text = points.toString();

    final buffer = StringBuffer();

    for (int i = 0; i < text.length; i++) {
      if (i > 0 && (text.length - i) % 3 == 0) {
        buffer.write(',');
      }

      buffer.write(text[i]);
    }

    return buffer.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🎨 Themes')),

      body: RefreshIndicator(
        onRefresh: _loadPoints,
        child: loading
            ? const Center(child: CircularProgressIndicator())
            : ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(16),
                children: [
                  // ================================
                  // POINTS HEADER
                  // ================================
                  _buildPointsHeader(),

                  const SizedBox(height: 22),

                  const Text(
                    'Choose Your Theme',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    'Earn points by completing quizzes '
                    'to unlock new themes.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),

                  const SizedBox(height: 18),

                  Consumer<ThemeProvider>(
                    builder: (context, provider, child) {
                      return Column(
                        children: AppThemes.all.map((theme) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 12),
                            child: _buildThemeCard(theme, provider),
                          );
                        }).toList(),
                      );
                    },
                  ),
                ],
              ),
      ),
    );
  }

  Widget _buildPointsHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.stars_rounded,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 30,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Your Points', style: TextStyle(fontSize: 14)),

                Text(
                  _formatPoints(totalPoints),
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const Text('🏆', style: TextStyle(fontSize: 34)),
        ],
      ),
    );
  }

  Widget _buildThemeCard(AppThemeInfo theme, ThemeProvider provider) {
    final bool unlocked = ThemeService.isThemeUnlocked(
      theme: theme,
      totalPoints: totalPoints,
    );

    final bool selected = provider.selectedTheme == theme.type;

    final progress = ThemeService.unlockProgress(
      theme: theme,
      totalPoints: totalPoints,
    );

    final remaining = ThemeService.pointsRemaining(
      theme: theme,
      totalPoints: totalPoints,
    );

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,

        borderRadius: BorderRadius.circular(20),

        border: Border.all(
          color: selected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.outlineVariant,
          width: selected ? 2.5 : 1,
        ),

        boxShadow: [
          if (selected)
            BoxShadow(
              color: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: 0.20),
              blurRadius: 12,
              spreadRadius: 1,
            ),
        ],
      ),

      child: Material(
        color: Colors.transparent,

        child: InkWell(
          borderRadius: BorderRadius.circular(20),

          onTap: () {
            _selectTheme(theme);
          },

          child: Padding(
            padding: const EdgeInsets.all(15),

            child: Column(
              children: [
                Row(
                  children: [
                    // ======================
                    // COLOR PREVIEW
                    // ======================
                    Container(
                      width: 58,
                      height: 58,
                      alignment: Alignment.center,

                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [theme.primaryColor, theme.secondaryColor],
                        ),

                        borderRadius: BorderRadius.circular(16),
                      ),

                      child: Text(
                        theme.emoji,
                        style: const TextStyle(fontSize: 28),
                      ),
                    ),

                    const SizedBox(width: 15),

                    // ======================
                    // NAME
                    // ======================
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            theme.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          if (theme.requiredPoints == 0)
                            const Text('Free Theme')
                          else if (unlocked)
                            Text(
                              'Unlocked at '
                              '${_formatPoints(theme.requiredPoints)} points',
                            )
                          else
                            Text(
                              'Requires '
                              '${_formatPoints(theme.requiredPoints)} points',
                              style: TextStyle(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                              ),
                            ),
                        ],
                      ),
                    ),

                    // ======================
                    // STATUS
                    // ======================
                    if (selected)
                      Icon(
                        Icons.check_circle,
                        color: Theme.of(context).colorScheme.primary,
                        size: 30,
                      )
                    else if (unlocked)
                      const Icon(Icons.lock_open_rounded)
                    else
                      const Icon(Icons.lock_rounded),
                  ],
                ),

                // ==========================
                // LOCK PROGRESS
                // ==========================
                if (!unlocked && theme.requiredPoints > 0) ...[
                  const SizedBox(height: 14),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                      value: progress,
                      minHeight: 7,
                    ),
                  ),

                  const SizedBox(height: 7),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${_formatPoints(totalPoints)} / '
                        '${_formatPoints(theme.requiredPoints)}',
                        style: const TextStyle(fontSize: 12),
                      ),

                      Text(
                        '${_formatPoints(remaining)} more',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
