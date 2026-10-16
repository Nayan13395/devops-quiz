import 'dart:async';
import 'dart:math' show max;

import 'package:flutter/material.dart';

import '../services/arrow_puzzle_service.dart';

class ArrowPuzzleScreen extends StatefulWidget {
  const ArrowPuzzleScreen({super.key});

  @override
  State<ArrowPuzzleScreen> createState() => _ArrowPuzzleScreenState();
}

class _ArrowPuzzleScreenState extends State<ArrowPuzzleScreen> {
  Set<int> _solvedLevels = {};
  final Set<int> _removed = {};
  int _levelNumber = 1;
  int _lives = ArrowPuzzleService.startingLives;
  int _hintsRemaining = 2;
  bool _loading = true;
  bool _animatingArrow = false;
  int? _hintedCell;
  int? _mistakeCell;
  String? _status;
  late ArrowPuzzleLevel _level;

  @override
  void initState() {
    super.initState();
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    final solved = await ArrowPuzzleService.loadSolvedLevels();
    final savedLevel = await ArrowPuzzleService.loadSelectedLevel();
    final int firstUnsolved = _firstUnsolved(solved);
    final int selected = ArrowPuzzleService.isUnlocked(savedLevel, solved)
        ? savedLevel
        : firstUnsolved;

    if (!mounted) return;

    setState(() {
      _solvedLevels = solved;
      _selectLevel(selected, persist: false);
      _loading = false;
    });
  }

  int _firstUnsolved(Set<int> solved) {
    for (int level = 1; level <= ArrowPuzzleService.levelCount; level++) {
      if (!solved.contains(level)) return level;
    }

    return ArrowPuzzleService.levelCount;
  }

  void _selectLevel(int number, {bool persist = true}) {
    _levelNumber = number;
    _level = ArrowPuzzleService.levels[number - 1];
    _removed.clear();
    _lives = ArrowPuzzleService.startingLives;
    _hintsRemaining = 2;
    _hintedCell = null;
    _mistakeCell = null;
    _status = null;

    if (persist) ArrowPuzzleService.saveSelectedLevel(number);
  }

  Future<void> _tapArrow(int cell) async {
    if (_loading || _animatingArrow || _removed.contains(cell)) return;

    if (!_level.canRemove(cell, _removed)) {
      final int nextLives = _lives - 1;

      setState(() {
        _lives = nextLives;
        _mistakeCell = cell;
        _hintedCell = null;
        _status = nextLives == 0
            ? 'No lives left. Try the level again.'
            : 'That arrow is blocked. You lost a heart.';
      });

      if (nextLives == 0) {
        await Future<void>.delayed(const Duration(milliseconds: 350));
        if (mounted) await _showGameOver();
      } else {
        Future<void>.delayed(const Duration(milliseconds: 500), () {
          if (mounted && _mistakeCell == cell) {
            setState(() => _mistakeCell = null);
          }
        });
      }

      return;
    }

    setState(() {
      _animatingArrow = true;
      _removed.add(cell);
      _mistakeCell = null;
      _hintedCell = null;
      _status =
          '${_removed.length} of ${_level.size * _level.size} arrows cleared';
    });

    await Future<void>.delayed(const Duration(milliseconds: 220));

    if (!mounted) return;

    setState(() => _animatingArrow = false);

    if (_removed.length == _level.size * _level.size) {
      await _finishLevel();
    }
  }

  void _showHint() {
    if (_hintsRemaining <= 0) {
      setState(() => _status = 'No hints left for this level.');
      return;
    }

    final List<int> available = _level.availableArrows
        .where((cell) => !_removed.contains(cell))
        .toList();

    if (available.isEmpty) return;

    setState(() {
      _hintsRemaining--;
      _hintedCell = available.first;
      _mistakeCell = null;
      _status = 'Try the highlighted arrow.';
    });
  }

  Future<void> _finishLevel() async {
    final bool rewarded = await ArrowPuzzleService.completeLevel(_levelNumber);

    if (!mounted) return;

    setState(() {
      _solvedLevels.add(_levelNumber);
      _status = 'Board cleared!';
    });

    await _showLevelComplete(rewarded);
  }

  Future<void> _showLevelComplete(bool rewarded) async {
    final int completedLevel = _levelNumber;
    final bool hasNext = completedLevel < ArrowPuzzleService.levelCount;

    final String? action = await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        icon: const Icon(Icons.celebration_rounded, size: 48),
        title: Text('Level $completedLevel cleared!'),
        content: Text(
          rewarded
              ? 'You earned ${ArrowPuzzleService.rewardPerLevel} points. '
                    'Level ${completedLevel + 1} is now unlocked.'
              : 'You already earned points for this level. '
                    'Keep going to unlock the next one.',
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, 'levels'),
            child: const Text('All levels'),
          ),
          if (hasNext)
            FilledButton.icon(
              onPressed: () => Navigator.pop(dialogContext, 'next'),
              icon: const Icon(Icons.arrow_forward_rounded),
              label: const Text('Next level'),
            )
          else
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, 'levels'),
              child: const Text('All levels complete'),
            ),
        ],
      ),
    );

    if (!mounted) return;

    if (action == 'next' && hasNext) {
      setState(() => _selectLevel(completedLevel + 1));
    } else if (action == 'levels') {
      await _showLevelPicker();
    }
  }

  Future<void> _showGameOver() async {
    final String? action = await showDialog<String>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) => AlertDialog(
        icon: const Icon(Icons.favorite_border_rounded, size: 44),
        title: Text('Level $_levelNumber'),
        content: const Text(
          'Those arrows were blocked. Take a breath and try again.',
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, 'levels'),
            child: const Text('Levels'),
          ),
          FilledButton.icon(
            onPressed: () => Navigator.pop(dialogContext, 'retry'),
            icon: const Icon(Icons.refresh_rounded),
            label: const Text('Try again'),
          ),
        ],
      ),
    );

    if (!mounted) return;

    if (action == 'retry') {
      setState(() => _selectLevel(_levelNumber));
    } else if (action == 'levels') {
      await _showLevelPicker();
    }
  }

  Future<void> _showLevelPicker() async {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final int? selected = await showDialog<int>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Choose a level'),
        content: SizedBox(
          width: 420,
          height: 360,
          child: GridView.builder(
            itemCount: ArrowPuzzleService.levelCount,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1.25,
            ),
            itemBuilder: (context, index) {
              final int number = index + 1;
              final bool unlocked = ArrowPuzzleService.isUnlocked(
                number,
                _solvedLevels,
              );
              final bool solved = _solvedLevels.contains(number);

              return Tooltip(
                message: solved
                    ? 'Level $number completed'
                    : unlocked
                    ? 'Play level $number'
                    : 'Complete level ${number - 1} to unlock',
                child: OutlinedButton(
                  onPressed: unlocked
                      ? () => Navigator.pop(dialogContext, number)
                      : null,
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: solved ? colors.primaryContainer : null,
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (solved) const Icon(Icons.check_rounded, size: 15),
                        if (!unlocked)
                          const Icon(Icons.lock_outline_rounded, size: 15),
                        Text(' $number'),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Close'),
          ),
        ],
      ),
    );

    if (selected != null && mounted) {
      setState(() => _selectLevel(selected));
    }
  }

  Future<void> _showSettings() async {
    final String? action = await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.grid_view_rounded),
              title: const Text('Choose level'),
              onTap: () => Navigator.pop(sheetContext, 'levels'),
            ),
            ListTile(
              leading: const Icon(Icons.restart_alt_rounded),
              title: const Text('Restart this level'),
              onTap: () => Navigator.pop(sheetContext, 'restart'),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 20),
              child: Text(
                'Tap an arrow with a clear path to the edge. Clear every arrow '
                'before you lose all three hearts.',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );

    if (!mounted) return;

    if (action == 'levels') {
      await _showLevelPicker();
    } else if (action == 'restart') {
      setState(() => _selectLevel(_levelNumber));
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colors = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Away Arrows'),
        actions: [
          IconButton(
            tooltip: 'Game settings',
            onPressed: _loading ? null : _showSettings,
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: LayoutBuilder(
                builder: (context, constraints) => SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 14),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 520),
                      child: Column(
                        children: [
                          _buildLevelHeader(colors),
                          const SizedBox(height: 10),
                          _buildLives(colors),
                          const SizedBox(height: 12),
                          _buildBoard(constraints.maxWidth, colors),
                          const SizedBox(height: 8),
                          SizedBox(
                            height: 34,
                            child: AnimatedSwitcher(
                              duration: const Duration(milliseconds: 160),
                              child: Text(
                                _status ??
                                    'Tap an arrow that can escape the board.',
                                key: ValueKey(_status),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: _mistakeCell != null
                                      ? colors.error
                                      : colors.onSurfaceVariant,
                                  fontWeight: _status == null
                                      ? FontWeight.normal
                                      : FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          _buildBottomControls(colors),
                          const SizedBox(height: 4),
                          Text(
                            '${_solvedLevels.length}/${ArrowPuzzleService.levelCount} '
                            'levels cleared  ·  '
                            '${ArrowPuzzleService.rewardPerLevel} points each',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colors.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }

  Widget _buildLevelHeader(ColorScheme colors) {
    return Row(
      children: [
        IconButton(
          tooltip: 'Previous level',
          onPressed:
              _levelNumber > 1 &&
                  ArrowPuzzleService.isUnlocked(_levelNumber - 1, _solvedLevels)
              ? () => setState(() => _selectLevel(_levelNumber - 1))
              : null,
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                'Level $_levelNumber',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '$_levelNumber / ${ArrowPuzzleService.levelCount}',
                style: TextStyle(fontSize: 12, color: colors.onSurfaceVariant),
              ),
            ],
          ),
        ),
        IconButton(
          tooltip: 'Next level',
          onPressed:
              _levelNumber < ArrowPuzzleService.levelCount &&
                  ArrowPuzzleService.isUnlocked(_levelNumber + 1, _solvedLevels)
              ? () => setState(() => _selectLevel(_levelNumber + 1))
              : null,
          icon: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    );
  }

  Widget _buildLives(ColorScheme colors) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < ArrowPuzzleService.startingLives; i++) ...[
          if (i > 0) const SizedBox(width: 10),
          Icon(
            Icons.favorite_rounded,
            key: ValueKey<String>('arrow-life-$i'),
            size: 32,
            color: i < _lives ? colors.error : colors.outlineVariant,
          ),
        ],
      ],
    );
  }

  Widget _buildBoard(double availableWidth, ColorScheme colors) {
    final double boardWidth = (availableWidth - 32).clamp(0.0, 480.0);
    final double tileSize = boardWidth / _level.size;

    return Center(
      child: SizedBox(
        width: boardWidth,
        child: AspectRatio(
          aspectRatio: 1,
          child: GridView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _level.size * _level.size,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _level.size,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            itemBuilder: (context, index) {
              final bool removed = _removed.contains(index);
              final bool hinted = _hintedCell == index;
              final bool mistake = _mistakeCell == index;
              final ArrowDirection direction = _level.initialDirections[index]!;
              final Color color = mistake
                  ? colors.error
                  : hinted
                  ? colors.tertiary
                  : const Color(0xFF202B50);

              return Semantics(
                button: !removed,
                label: removed
                    ? 'Arrow cleared'
                    : '${direction.name} arrow${hinted ? ', hint' : ''}',
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    key: ValueKey<String>('arrow-cell-$index'),
                    onTap: removed || _animatingArrow
                        ? null
                        : () => _tapArrow(index),
                    borderRadius: BorderRadius.circular(8),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 130),
                      decoration: BoxDecoration(
                        color: mistake
                            ? colors.errorContainer.withValues(alpha: 0.7)
                            : hinted
                            ? colors.tertiaryContainer
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      alignment: Alignment.center,
                      child: AnimatedSwitcher(
                        duration: const Duration(milliseconds: 190),
                        transitionBuilder: (child, animation) => FadeTransition(
                          opacity: animation,
                          child: ScaleTransition(
                            scale: animation,
                            child: child,
                          ),
                        ),
                        child: removed
                            ? Icon(
                                Icons.circle,
                                key: const ValueKey<String>('empty'),
                                size: max(5, tileSize * 0.13),
                                color: colors.outlineVariant.withValues(
                                  alpha: 0.55,
                                ),
                              )
                            : Icon(
                                _arrowIcon(direction),
                                key: ValueKey<String>(direction.name),
                                size: tileSize * 0.62,
                                color: color,
                              ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildBottomControls(ColorScheme colors) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _RoundControl(
          tooltip: 'Hint: show a clear arrow',
          badge: '$_hintsRemaining',
          icon: Icons.lightbulb_outline_rounded,
          onPressed: _animatingArrow || _hintsRemaining == 0 ? null : _showHint,
        ),
        const SizedBox(width: 34),
        _RoundControl(
          tooltip: 'Choose level',
          icon: Icons.grid_4x4_rounded,
          onPressed: _showLevelPicker,
        ),
      ],
    );
  }

  IconData _arrowIcon(ArrowDirection direction) => switch (direction) {
    ArrowDirection.up => Icons.arrow_upward_rounded,
    ArrowDirection.right => Icons.arrow_forward_rounded,
    ArrowDirection.down => Icons.arrow_downward_rounded,
    ArrowDirection.left => Icons.arrow_back_rounded,
  };
}

class _RoundControl extends StatelessWidget {
  final String tooltip;
  final String? badge;
  final IconData icon;
  final VoidCallback? onPressed;

  const _RoundControl({
    required this.tooltip,
    required this.icon,
    required this.onPressed,
    this.badge,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: 78,
      height: 78,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Material(
              color: colors.surface,
              elevation: 3,
              shadowColor: colors.primary.withValues(alpha: 0.15),
              shape: const CircleBorder(),
              child: IconButton(
                tooltip: tooltip,
                onPressed: onPressed,
                icon: Icon(icon, size: 32, color: colors.primary),
              ),
            ),
          ),
          if (badge != null)
            Positioned(
              right: 0,
              top: 0,
              child: CircleAvatar(
                radius: 13,
                backgroundColor: colors.primary,
                foregroundColor: colors.onPrimary,
                child: Text(
                  badge!,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
