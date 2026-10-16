import 'dart:async';

import 'package:flutter/material.dart';

import '../services/point_service.dart';
import '../widgets/daily_game_gate.dart';

class _Statement {
  final String text;
  final bool isTrue;

  const _Statement(this.text, this.isTrue);
}

const List<_Statement> _statements = [
  _Statement('Docker containers share the host operating system kernel.', true),
  _Statement('A Kubernetes Pod can contain more than one container.', true),
  _Statement(
    'The git pull command only downloads changes without merging.',
    false,
  ),
  _Statement(
    'Terraform stores the real-world state of resources in a state file.',
    true,
  ),
  _Statement(
    'Ansible requires an agent installed on every managed Linux host.',
    false,
  ),
  _Statement('The Linux command ls -l shows a long listing format.', true),
  _Statement('HTTP uses port 443 by default.', false),
  _Statement('A Jenkinsfile can define a pipeline as code.', true),
  _Statement(
    'In Linux, chmod 777 gives only the owner full permissions.',
    false,
  ),
  _Statement('DNS translates domain names to IP addresses.', true),
  _Statement('A Docker image is a running instance of a container.', false),
  _Statement(
    'Kubernetes Services provide a stable network endpoint for Pods.',
    true,
  ),
  _Statement('The git stash command permanently deletes your changes.', false),
  _Statement('CI stands for Continuous Integration.', true),
  _Statement('Python is a compiled language that needs no interpreter.', false),
  _Statement('SSH uses port 22 by default.', true),
  _Statement(
    'A load balancer distributes traffic across multiple servers.',
    true,
  ),
  _Statement('Blue-green deployment runs two production environments.', true),
  _Statement('kubectl is the command-line tool for Kubernetes.', true),
  _Statement('The Linux command rm -rf only removes empty folders.', false),
  _Statement('Amazon S3 is a block storage service for EC2 volumes.', false),
  _Statement(
    'Infrastructure as Code lets you manage servers with versioned files.',
    true,
  ),
  _Statement('The ping command uses the ICMP protocol.', true),
  _Statement(
    'Git branches are always copies of the entire repository on disk.',
    false,
  ),
  _Statement('A Dockerfile contains instructions to build an image.', true),
  _Statement('YAML files rely on indentation to show structure.', true),
  _Statement('The cron service runs scheduled jobs on Linux.', true),
  _Statement('Terraform apply previews changes without making any.', false),
  _Statement('A reverse proxy can terminate TLS connections.', true),
  _Statement('Ansible playbooks are written in XML.', false),
  _Statement('Port 25 is commonly used by SMTP.', true),
  _Statement(
    'Kubernetes Namespaces can help separate resources within a cluster.',
    true,
  ),
  _Statement('IPv4 addresses are 128 bits long.', false),
  _Statement('A Git commit is a snapshot of tracked changes.', true),
  _Statement('Prometheus is commonly used for monitoring and alerting.', true),
  _Statement('The Linux command cat is used to change directories.', false),
  _Statement('Containers always include a full guest operating system.', false),
  _Statement('Helm helps package and deploy Kubernetes applications.', true),
  _Statement('A rolling update replaces instances gradually.', true),
  _Statement('Bash scripts can only be run on Windows.', false),
];

class TrueFalseBlitzScreen extends StatelessWidget {
  const TrueFalseBlitzScreen({super.key});

  static const String gameKey = 'true_false_blitz';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('True or False Blitz ⚡')),
      body: const DailyGameGate(gameKey: gameKey, child: _BlitzGame()),
    );
  }
}

class _BlitzGame extends StatefulWidget {
  const _BlitzGame();

  @override
  State<_BlitzGame> createState() => _BlitzGameState();
}

class _BlitzGameState extends State<_BlitzGame> {
  static const int _seconds = 45;
  static const int _pointsPerAnswer = 10;
  static const int _wrongPenalty = 3;

  late final List<_Statement> _deck = List<_Statement>.of(_statements)
    ..shuffle();

  Timer? _timer;
  bool _started = false;
  bool _finished = false;
  int _index = 0;
  int _correct = 0;
  int _streak = 0;
  int _best = 0;
  int _timeLeft = _seconds;
  Color? _flash;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _start() {
    setState(() => _started = true);

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) return;

      setState(() => _timeLeft--);

      if (_timeLeft <= 0) {
        _finish();
      }
    });
  }

  void _answer(bool value) {
    if (_finished || !_started) return;

    final bool right = _deck[_index].isTrue == value;

    setState(() {
      if (right) {
        _correct++;
        _streak++;
        if (_streak > _best) _best = _streak;
      } else {
        _streak = 0;
        _timeLeft = (_timeLeft - _wrongPenalty).clamp(0, _seconds);
      }

      _flash = right ? Colors.green : Colors.red;
      _index++;
    });

    Future<void>.delayed(const Duration(milliseconds: 200), () {
      if (mounted) setState(() => _flash = null);
    });

    if (_timeLeft <= 0 || _index >= _deck.length) {
      _finish();
    }
  }

  Future<void> _finish() async {
    if (_finished) return;

    _finished = true;
    _timer?.cancel();

    final int points = _correct * _pointsPerAnswer + (_best >= 5 ? 20 : 0);

    await DailyGameGate.markPlayed(TrueFalseBlitzScreen.gameKey);

    if (points > 0) await PointService.addPoints(points);

    if (!mounted) return;

    await showGameResultDialog(
      context,
      icon: '⚡',
      title: 'Time\'s Up!',
      message:
          'Correct answers: $_correct\nBest streak: $_best\n'
          '${_best >= 5 ? 'Streak bonus: +20\n' : ''}'
          'You earned $points points!\n\nCome back tomorrow for another round!',
    );
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 520),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: !_started ? _intro(colors) : _play(colors),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _intro(ColorScheme colors) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('⚡', style: TextStyle(fontSize: 64)),
        const SizedBox(height: 12),
        const Text(
          'Is the statement true or false?',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Text(
          'You have $_seconds seconds. Each correct answer earns '
          '$_pointsPerAnswer points. A wrong answer costs $_wrongPenalty '
          'seconds. Reach a streak of 5 for a +20 bonus.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, color: colors.onSurfaceVariant),
        ),
        const SizedBox(height: 24),
        FilledButton.icon(
          onPressed: _start,
          icon: const Icon(Icons.play_arrow_rounded),
          label: const Text('Start'),
        ),
      ],
    );
  }

  Widget _play(ColorScheme colors) {
    final _Statement? current = _index < _deck.length ? _deck[_index] : null;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 12,
          children: [
            Chip(label: Text('⏱ $_timeLeft s')),
            Chip(label: Text('✅ $_correct')),
            Chip(label: Text('🔥 $_streak')),
          ],
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: _timeLeft / _seconds,
          minHeight: 8,
          borderRadius: BorderRadius.circular(8),
        ),
        const SizedBox(height: 24),
        AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          width: double.infinity,
          constraints: const BoxConstraints(minHeight: 150),
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: _flash?.withValues(alpha: 0.25) ?? colors.surfaceContainer,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: colors.outlineVariant),
          ),
          child: Text(
            current?.text ?? '',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 58,
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _finished ? null : () => _answer(true),
                  icon: const Icon(Icons.check_rounded),
                  label: const Text('True', style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: SizedBox(
                height: 58,
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.red.shade700,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: _finished ? null : () => _answer(false),
                  icon: const Icon(Icons.close_rounded),
                  label: const Text('False', style: TextStyle(fontSize: 18)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
