import 'package:flutter/material.dart';

import '../services/point_service.dart';

class ConnectFourScreen extends StatefulWidget {
  const ConnectFourScreen({super.key});

  @override
  State<ConnectFourScreen> createState() => _ConnectFourScreenState();
}

class _ConnectFourScreenState extends State<ConnectFourScreen> {
  static const int _rows = 6;
  static const int _columns = 7;

  List<int?> _board = List<int?>.filled(_rows * _columns, null);
  int _turn = 1;
  int? _winner;
  bool _draw = false;
  Set<int> _winningCells = {};

  void _drop(int column) {
    if (_winner != null || _draw) return;
    final row = List<int>.generate(_rows, (index) => _rows - index - 1)
        .firstWhere(
          (candidate) => _board[candidate * _columns + column] == null,
          orElse: () => -1,
        );
    if (row < 0) return;

    final cell = row * _columns + column;
    setState(() {
      _board[cell] = _turn;
      final line = _winningLine(row, column, _turn);
      if (line.isNotEmpty) {
        _winner = _turn;
        _winningCells = line.toSet();
      } else if (_board.every((piece) => piece != null)) {
        _draw = true;
      } else {
        _turn = _turn == 1 ? 2 : 1;
      }
    });

    if (_winner != null) {
      _awardWin();
    }
  }

  List<int> _winningLine(int row, int column, int player) {
    const directions = [(0, 1), (1, 0), (1, 1), (1, -1)];
    for (final (rowStep, columnStep) in directions) {
      final line = <int>[row * _columns + column];
      for (final direction in [1, -1]) {
        var nextRow = row + rowStep * direction;
        var nextColumn = column + columnStep * direction;
        while (nextRow >= 0 &&
            nextRow < _rows &&
            nextColumn >= 0 &&
            nextColumn < _columns &&
            _board[nextRow * _columns + nextColumn] == player) {
          line.add(nextRow * _columns + nextColumn);
          nextRow += rowStep * direction;
          nextColumn += columnStep * direction;
        }
      }
      if (line.length >= 4) return line;
    }
    return const [];
  }

  Future<void> _awardWin() async {
    try {
      await PointService.addLocalPoints(20);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Connect Four win: 20 points!')),
        );
      }
    } catch (error) {
      debugPrint('Connect Four reward failed: $error');
    }
  }

  void _reset() {
    setState(() {
      _board = List<int?>.filled(_rows * _columns, null);
      _turn = 1;
      _winner = null;
      _draw = false;
      _winningCells = {};
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final done = _winner != null || _draw;
    final status = _winner != null
        ? '${_winner == 1 ? 'Red' : 'Yellow'} wins!'
        : _draw
        ? 'Board full — draw'
        : '${_turn == 1 ? 'Red' : 'Yellow'} to move';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Connect Four'),
        actions: [
          IconButton(
            tooltip: 'New game',
            onPressed: _reset,
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(18),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Column(
                children: [
                  Text(
                    status,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Two players · tap a column to drop a disc',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 20),
                  AspectRatio(
                    aspectRatio: _columns / _rows,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: colors.primary,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _rows * _columns,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: _columns,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                              ),
                          itemBuilder: (context, index) {
                            final piece = _board[index];
                            final pieceColor = piece == 1
                                ? Colors.red.shade600
                                : piece == 2
                                ? Colors.amber.shade400
                                : colors.surface;
                            final winning = _winningCells.contains(index);

                            return Semantics(
                              button: true,
                              label: 'Column ${index % _columns + 1}',
                              child: InkWell(
                                key: ValueKey('connect-four-cell-$index'),
                                customBorder: const CircleBorder(),
                                onTap: done
                                    ? null
                                    : () => _drop(index % _columns),
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 180),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: winning
                                        ? Colors.lightGreenAccent
                                        : pieceColor,
                                    border: Border.all(
                                      color: colors.onPrimary.withValues(
                                        alpha: 0.18,
                                      ),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 18,
                    runSpacing: 8,
                    children: [
                      _Legend(color: Colors.red.shade600, label: 'Red'),
                      _Legend(color: Colors.amber.shade400, label: 'Yellow'),
                    ],
                  ),
                  const SizedBox(height: 18),
                  FilledButton.icon(
                    onPressed: _reset,
                    icon: const Icon(Icons.replay_rounded),
                    label: const Text('New game'),
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

class _Legend extends StatelessWidget {
  const _Legend({required this.color, required this.label});

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(radius: 7, backgroundColor: color),
        const SizedBox(width: 6),
        Text(label),
      ],
    );
  }
}
