import 'package:flutter/material.dart';

import '../services/point_service.dart';
import '../widgets/daily_game_gate.dart';

class _Pair {
  final String command;
  final String meaning;

  const _Pair(this.command, this.meaning);
}

const List<_Pair> _pairs = [
  _Pair('ls -la', 'List all files with details'),
  _Pair('grep', 'Search text using a pattern'),
  _Pair('chmod', 'Change file permissions'),
  _Pair('df -h', 'Show free disk space'),
  _Pair('tail -f', 'Follow a growing log file'),
  _Pair('ps aux', 'List running processes'),
  _Pair('git clone', 'Copy a remote repository'),
  _Pair('git stash', 'Shelve uncommitted changes'),
  _Pair('git rebase', 'Reapply commits on a new base'),
  _Pair('git blame', 'Show who changed each line'),
  _Pair('docker ps', 'List running containers'),
  _Pair('docker build', 'Create an image from a Dockerfile'),
  _Pair('docker logs', 'Show container output'),
  _Pair('docker exec', 'Run a command inside a container'),
  _Pair('kubectl get pods', 'List pods in a namespace'),
  _Pair('kubectl apply', 'Create resources from a file'),
  _Pair('kubectl describe', 'Show detailed resource info'),
  _Pair('kubectl scale', 'Change the number of replicas'),
  _Pair('terraform init', 'Download providers and set up'),
  _Pair('terraform plan', 'Preview infrastructure changes'),
  _Pair('terraform apply', 'Create or update infrastructure'),
  _Pair('terraform destroy', 'Remove managed infrastructure'),
  _Pair('ansible-playbook', 'Run an automation playbook'),
  _Pair('ping', 'Test reachability with ICMP'),
  _Pair('traceroute', 'Show the path to a host'),
  _Pair('curl', 'Transfer data from a URL'),
  _Pair('ssh', 'Log in to a remote machine securely'),
  _Pair('crontab -e', 'Edit scheduled jobs'),
  _Pair('systemctl status', 'Check a service state'),
  _Pair('helm install', 'Deploy a chart to Kubernetes'),
];

class CommandMatchScreen extends StatelessWidget {
  const CommandMatchScreen({super.key});

  static const String gameKey = 'command_match';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Command Match 🔗')),
      body: const DailyGameGate(gameKey: gameKey, child: _MatchGame()),
    );
  }
}

class _MatchGame extends StatefulWidget {
  const _MatchGame();

  @override
  State<_MatchGame> createState() => _MatchGameState();
}

class _MatchGameState extends State<_MatchGame> {
  static const int _rounds = 3;
  static const int _pairsPerRound = 5;
  static const int _pointsPerFirstTry = 10;
  static const int _pointsPerRetry = 4;

  int _round = 0;
  int _points = 0;
  int _mistakes = 0;

  late List<_Pair> _roundPairs;
  late List<_Pair> _meanings;
  final Set<_Pair> _matched = {};
  final Set<_Pair> _missedBefore = {};

  _Pair? _selectedCommand;
  _Pair? _wrongMeaning;

  late final List<_Pair> _deck = List<_Pair>.of(_pairs)..shuffle();

  @override
  void initState() {
    super.initState();
    _startRound();
  }

  void _startRound() {
    final int start = _round * _pairsPerRound;

    _roundPairs = _deck.sublist(start, start + _pairsPerRound);
    _meanings = List<_Pair>.of(_roundPairs)..shuffle();
    _matched.clear();
    _missedBefore.clear();
    _selectedCommand = null;
    _wrongMeaning = null;
  }

  void _pickMeaning(_Pair meaning) {
    final _Pair? command = _selectedCommand;

    if (command == null || _matched.contains(meaning)) return;

    if (identical(command, meaning)) {
      setState(() {
        _matched.add(command);
        _points += _missedBefore.contains(command)
            ? _pointsPerRetry
            : _pointsPerFirstTry;
        _selectedCommand = null;
        _wrongMeaning = null;
      });

      if (_matched.length == _pairsPerRound) {
        _nextRoundOrFinish();
      }

      return;
    }

    setState(() {
      _mistakes++;
      _missedBefore.add(command);
      _wrongMeaning = meaning;
    });

    Future<void>.delayed(const Duration(milliseconds: 500), () {
      if (mounted) setState(() => _wrongMeaning = null);
    });
  }

  Future<void> _nextRoundOrFinish() async {
    await Future<void>.delayed(const Duration(milliseconds: 500));

    if (!mounted) return;

    if (_round + 1 < _rounds) {
      setState(() {
        _round++;
        _startRound();
      });

      return;
    }

    await DailyGameGate.markPlayed(CommandMatchScreen.gameKey);

    if (_points > 0)
      await PointService.addPoints(_points, source: PointSource.game);

    if (!mounted) return;

    await showGameResultDialog(
      context,
      icon: '🔗',
      title: 'All Matched!',
      message:
          'Mistakes: $_mistakes\nYou earned $_points points!\n\n'
          'Come back tomorrow for new commands!',
    );
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return SafeArea(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 12,
                children: [
                  Chip(label: Text('Round ${_round + 1} / $_rounds')),
                  Chip(label: Text('⭐ $_points')),
                  Chip(label: Text('❌ $_mistakes')),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                _selectedCommand == null
                    ? 'Tap a command, then tap its meaning.'
                    : 'Now tap the matching meaning.',
                textAlign: TextAlign.center,
                style: TextStyle(color: colors.onSurfaceVariant),
              ),
              const SizedBox(height: 14),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        for (final pair in _roundPairs)
                          _tile(
                            text: pair.command,
                            mono: true,
                            matched: _matched.contains(pair),
                            selected: identical(_selectedCommand, pair),
                            wrong: false,
                            onTap: () =>
                                setState(() => _selectedCommand = pair),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        for (final pair in _meanings)
                          _tile(
                            text: pair.meaning,
                            mono: false,
                            matched: _matched.contains(pair),
                            selected: false,
                            wrong: identical(_wrongMeaning, pair),
                            onTap: () => _pickMeaning(pair),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tile({
    required String text,
    required bool mono,
    required bool matched,
    required bool selected,
    required bool wrong,
    required VoidCallback onTap,
  }) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    Color background = colors.surfaceContainerHighest;

    if (matched) {
      background = Colors.green.withValues(alpha: 0.35);
    } else if (wrong) {
      background = Colors.red.withValues(alpha: 0.35);
    } else if (selected) {
      background = colors.primaryContainer;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        color: background,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: matched ? null : onTap,
          child: Container(
            width: double.infinity,
            constraints: const BoxConstraints(minHeight: 64),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            alignment: Alignment.center,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: mono ? 14 : 13,
                fontWeight: mono ? FontWeight.bold : FontWeight.w500,
                fontFamily: mono ? 'monospace' : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
