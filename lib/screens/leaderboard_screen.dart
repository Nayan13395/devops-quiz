import 'package:flutter/material.dart';
import '../services/point_service.dart';
import '../services/leaderboard_service.dart';
import '../l10n/app_localizations.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  final LeaderboardService _leaderboardService = LeaderboardService();
  late final Stream<List<Map<String, dynamic>>> _dailyLeaderboard;
  late Future<Map<String, int>> _personalProgress;

  @override
  void initState() {
    super.initState();
    _personalProgress = _loadPersonalProgress();
    _dailyLeaderboard = _leaderboardService.watchDailyLeaderboard();
  }

  Future<Map<String, int>> _loadPersonalProgress() async {
    final rewards = await _leaderboardService.getMyDailyRewards();
    for (final reward in rewards) {
      await PointService.applyLeaderboardReward(
        reward['date'] as String? ?? '',
        (reward['points'] as num?)?.toInt() ?? 0,
      );
    }

    final history = await _leaderboardService.getLeaderboard();
    final now = DateTime.now();
    final today = '${now.day}-${now.month}-${now.year}';
    final todayPoints = history
        .where((entry) => entry['date'] == today)
        .fold<int>(
          0,
          (sum, entry) => sum + ((entry['points'] as num?)?.toInt() ?? 0),
        );

    return {'total': await PointService.getTotalPoints(), 'today': todayPoints};
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('🏆 ${l10n.leaderboard}'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'My Progress'),
              Tab(text: 'Universal'),
            ],
          ),
          actions: [
            IconButton(
              tooltip: 'Refresh progress',
              onPressed: () => setState(() {
                _personalProgress = _loadPersonalProgress();
              }),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            _buildPersonalProgress(),
            _buildUniversalLeaderboard(l10n),
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
            Text(
              'Daily universal prizes',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            const Text('Top 5: 5,000 · 4,000 · 3,000 · 2,000 · 1,000 points'),
            const SizedBox(height: 4),
            Text(
              'Tied players receive the same rank reward.',
              style: Theme.of(context).textTheme.bodySmall,
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
            final prize = rank <= 5
                ? [5000, 4000, 3000, 2000, 1000][rank - 1]
                : 0;
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
              subtitle: prize > 0
                  ? Text('Daily prize: $prize ${l10n.pointsShort}')
                  : null,
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
      height: 132,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon),
          const Spacer(),
          Text('$value', style: Theme.of(context).textTheme.headlineSmall),
          Text(label, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
