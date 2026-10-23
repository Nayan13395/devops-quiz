import 'dart:async';

import 'package:flutter/material.dart';
import '../services/point_service.dart';
import '../services/leaderboard_service.dart';
import '../services/referral_service.dart';
import '../l10n/app_localizations.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  static const bool _universalEnabled = false;
  final LeaderboardService _leaderboardService = LeaderboardService();
  late final Stream<List<Map<String, dynamic>>> _dailyLeaderboard;
  late Future<Map<String, int>> _personalProgress;
  bool _syncingReferrals = false;

  @override
  void initState() {
    super.initState();
    _personalProgress = _loadPersonalProgress();
    _dailyLeaderboard = _universalEnabled
        ? _leaderboardService.watchDailyLeaderboard()
        : Stream.value(const []);
    unawaited(_syncReferralRewards());
  }

  Future<void> _syncReferralRewards() async {
    if (_syncingReferrals) return;
    _syncingReferrals = true;
    try {
      await ReferralService().syncRewards();
      if (mounted) {
        setState(() {
          _personalProgress = _loadPersonalProgress();
        });
      }
    } catch (error) {
      debugPrint('Referral rewards could not be refreshed: $error');
    } finally {
      _syncingReferrals = false;
    }
  }

  Future<Map<String, int>> _loadPersonalProgress() async {
    final history = await _leaderboardService.getLeaderboard();
    final now = DateTime.now();
    final today = '${now.day}-${now.month}-${now.year}';
    final todayPoints = history
        .where((entry) => entry['date'] == today)
        .fold<int>(
          0,
          (sum, entry) => sum + ((entry['points'] as num?)?.toInt() ?? 0),
        );

    final earned = await PointService.getEarnedPoints();
    return {
      'total': await PointService.getTotalPoints(),
      'today': todayPoints,
      'quiz': earned[PointSource.quiz]!,
      'game': earned[PointSource.game]!,
    };
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return DefaultTabController(
      length: _universalEnabled ? 2 : 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('🏆 ${l10n.leaderboard}'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'My Progress'),
              if (_universalEnabled) Tab(text: 'Universal'),
            ],
          ),
          actions: [
            IconButton(
              tooltip: 'Refresh progress',
              onPressed: () => setState(() {
                _personalProgress = _loadPersonalProgress();
                unawaited(_syncReferralRewards());
              }),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            _buildPersonalProgress(),
            if (_universalEnabled) _buildUniversalLeaderboard(l10n),
          ],
        ),
      ),
    );
  }

  Widget _buildPersonalProgress() {
    return FutureBuilder<Map<String, int>>(
      future: _personalProgress,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        final progress = snapshot.data ?? const {'total': 0, 'today': 0};

        return ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'Your progress',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: _ProgressMetric(
                    label: 'Lifetime points',
                    value: progress['total']!,
                    icon: Icons.stars_outlined,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _ProgressMetric(
                    label: 'Earned today',
                    value: progress['today']!,
                    icon: Icons.today_outlined,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: _ProgressMetric(
                    label: 'Quiz points',
                    value: progress['quiz'] ?? 0,
                    icon: Icons.quiz_outlined,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _ProgressMetric(
                    label: 'Game points',
                    value: progress['game'] ?? 0,
                    icon: Icons.sports_esports_outlined,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _buildUniversalLeaderboard(AppLocalizations l10n) {
    if (!LeaderboardService.isAuthenticated) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text('Sign in with Google to join the universal leaderboard.'),
        ),
      );
    }

    return StreamBuilder<List<Map<String, dynamic>>>(
      stream: _dailyLeaderboard,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('Universal leaderboard unavailable.'),
          );
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final scores = snapshot.data!;
        if (scores.isEmpty) {
          return Center(child: Text(l10n.noScoresYet));
        }

        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          itemCount: scores.length,
          separatorBuilder: (_, _) => const Divider(height: 1),
          itemBuilder: (context, index) {
            final score = scores[index];
            final points = (score['points'] as num?)?.toInt() ?? 0;
            final rank = _rankAt(scores, index);
            final name = (score['displayName'] as String?)?.trim();
            final photoUrl = score['photoUrl'] as String?;

            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 4),
              leading: CircleAvatar(
                backgroundImage: photoUrl == null || photoUrl.isEmpty
                    ? null
                    : NetworkImage(photoUrl),
                child: photoUrl == null || photoUrl.isEmpty
                    ? Text('$rank')
                    : null,
              ),
              title: Text(name == null || name.isEmpty ? 'Player' : name),
              trailing: Text(
                '$points ${l10n.pointsShort}',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            );
          },
        );
      },
    );
  }

  int _rankAt(List<Map<String, dynamic>> scores, int index) {
    if (index == 0) return 1;
    final points = (scores[index]['points'] as num?)?.toInt() ?? 0;
    final previousPoints = (scores[index - 1]['points'] as num?)?.toInt() ?? 0;
    return points == previousPoints ? _rankAt(scores, index - 1) : index + 1;
  }
}

class _ProgressMetric extends StatelessWidget {
  const _ProgressMetric({
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final int value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 132),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon),
          const SizedBox(height: 16),
          Text('$value', style: Theme.of(context).textTheme.headlineSmall),
          Text(label, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
