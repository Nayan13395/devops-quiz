import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../services/point_service.dart';

enum _TicTacToeMode { computer, local }

class TicTacToeScreen extends StatefulWidget {
  const TicTacToeScreen({super.key});

  @override
  State<TicTacToeScreen> createState() => _TicTacToeScreenState();
}

class _TicTacToeScreenState extends State<TicTacToeScreen> {
  final Random _random = Random();
  List<String?> _board = List<String?>.filled(9, null);
  _TicTacToeMode _mode = _TicTacToeMode.computer;
  String _turn = 'X';
  bool _computerStartsNext = true;
  String? _winner;
  bool _draw = false;
  int _xWins = 0;
  int _oWins = 0;
  int _draws = 0;

  static const List<List<int>> _lines = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6],
  ];

  void _play(int index) {
    if (_board[index] != null || _winner != null || _draw) return;
    if (_mode == _TicTacToeMode.computer && _turn != 'X') return;

    final marker = _mode == _TicTacToeMode.computer ? 'X' : _turn;
    setState(() {
      _board[index] = marker;
      _resolveMove(marker);
    });

    if (_winner == 'X' && _mode == _TicTacToeMode.computer) {
      unawaited(_awardWin());
    }

    if (_mode == _TicTacToeMode.computer && _turn == 'O') {
      _playComputerTurn();
    }
  }

  void _playComputerTurn() {
    if (_winner != null || _draw || _turn != 'O') return;

    final computerMove = _chooseComputerMove();
    if (computerMove == null) return;

    setState(() {
      _board[computerMove] = 'O';
      _resolveMove('O');
    });
  }

  void _resolveMove(String marker) {
    _winner = _findWinner(_board);
    if (_winner != null) {
      if (_winner == 'X') {
        _xWins++;
      } else {
        _oWins++;
      }
      return;
    }

    if (_board.every((cell) => cell != null)) {
      _draw = true;
      _draws++;
      return;
    }

    _turn = marker == 'X' ? 'O' : 'X';
  }

  String? _findWinner(List<String?> board) {
    for (final line in _lines) {
      final marker = board[line.first];
      if (marker != null && line.every((cell) => board[cell] == marker)) {
        return marker;
      }
    }
    return null;
  }

  int? _chooseComputerMove() {
    final available = [
      for (int index = 0; index < _board.length; index++)
        if (_board[index] == null) index,
    ];
    if (available.isEmpty) return null;

    for (final marker in ['O', 'X']) {
      for (final index in available) {
        final candidate = List<String?>.from(_board)..[index] = marker;
        if (_findWinner(candidate) == marker) return index;
      }
    }

    if (available.contains(4)) return 4;
    final corners = available.where((index) => [0, 2, 6, 8].contains(index));
    final preferred = corners.isEmpty ? available : corners.toList();
    return preferred[_random.nextInt(preferred.length)];
  }

  Future<void> _awardWin() async {
    try {
      await PointService.addLocalPoints(10);
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('You earned 10 points!')));
      }
    } catch (error) {
      debugPrint('Tic-Tac-Toe reward failed: $error');
    }
  }

  void _resetBoard() {
    final computerStarts =
        _mode == _TicTacToeMode.computer && _computerStartsNext;
    if (_mode == _TicTacToeMode.computer) {
      _computerStartsNext = !_computerStartsNext;
    }

    setState(() {
      _board = List<String?>.filled(9, null);
      _turn = computerStarts ? 'O' : 'X';
      _winner = null;
      _draw = false;
    });

    if (computerStarts) _playComputerTurn();
  }

  String get _status {
    if (_winner != null) {
      return _winner == 'X'
          ? _mode == _TicTacToeMode.computer
                ? 'You win!'
                : 'X wins!'
          : _mode == _TicTacToeMode.computer
          ? 'Computer wins'
          : 'O wins!';
    }
    if (_draw) return 'It\'s a draw';
    return _mode == _TicTacToeMode.computer
        ? _turn == 'X'
              ? 'Your turn'
              : 'Computer is thinking'
        : 'Player $_turn to move';
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final finished = _winner != null || _draw;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic-Tac-Toe'),
        actions: [
          IconButton(
            tooltip: 'New round',
            onPressed: _resetBoard,
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 440),
              child: Column(
                children: [
                  SegmentedButton<_TicTacToeMode>(
                    segments: const [
                      ButtonSegment(
                        value: _TicTacToeMode.computer,
                        label: Text('Vs computer'),
                        icon: Icon(Icons.smart_toy_outlined),
                      ),
                      ButtonSegment(
                        value: _TicTacToeMode.local,
                        label: Text('2 players'),
                        icon: Icon(Icons.people_outline_rounded),
                      ),
                    ],
                    selected: {_mode},
                    onSelectionChanged: (selection) {
                      setState(() => _mode = selection.first);
                      _resetBoard();
                    },
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _Score(
                        label: _mode == _TicTacToeMode.computer ? 'You' : 'X',
                        score: _xWins,
                        color: colors.primary,
                      ),
                      const SizedBox(width: 28),
                      _Score(
                        label: 'Draws',
                        score: _draws,
                        color: colors.onSurfaceVariant,
                      ),
                      const SizedBox(width: 28),
                      _Score(
                        label: _mode == _TicTacToeMode.computer ? 'CPU' : 'O',
                        score: _oWins,
                        color: colors.tertiary,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 180),
                    child: Text(
                      _status,
                      key: ValueKey(_status),
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  AspectRatio(
                    aspectRatio: 1,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 9,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                      itemBuilder: (context, index) {
                        final marker = _board[index];
                        return Semantics(
                          button: true,
                          label:
                              'Cell ${index + 1}${marker == null ? '' : ': $marker'}',
                          child: Material(
                            color: marker == null
                                ? colors.surfaceContainerHighest
                                : marker == 'X'
                                ? colors.primaryContainer
                                : colors.tertiaryContainer,
                            borderRadius: BorderRadius.circular(16),
                            child: InkWell(
                              key: ValueKey('tic-tac-toe-cell-$index'),
                              borderRadius: BorderRadius.circular(16),
                              onTap: finished ? null : () => _play(index),
                              child: Center(
                                child: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 140),
                                  child: Text(
                                    marker ?? '',
                                    key: ValueKey(marker),
                                    style: TextStyle(
                                      fontSize: 44,
                                      fontWeight: FontWeight.w800,
                                      color: marker == 'X'
                                          ? colors.primary
                                          : colors.tertiary,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  FilledButton.icon(
                    onPressed: _resetBoard,
                    icon: const Icon(Icons.replay_rounded),
                    label: const Text('Play again'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Score extends StatelessWidget {
  const _Score({required this.label, required this.score, required this.color});

  final String label;
  final int score;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$score',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(label, style: Theme.of(context).textTheme.labelMedium),
      ],
    );
  }
}
