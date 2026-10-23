import 'dart:math' as math;

import 'package:flutter/material.dart';

class LevelPickerDialog extends StatelessWidget {
  const LevelPickerDialog({
    super.key,
    required this.levelCount,
    required this.isUnlocked,
    this.isCompleted,
    this.currentLevel,
    this.levelKeyPrefix = 'game',
  });

  final int levelCount;
  final bool Function(int level) isUnlocked;
  final bool Function(int level)? isCompleted;
  final int? currentLevel;
  final String levelKeyPrefix;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final screen = MediaQuery.sizeOf(context);
    final textScale = MediaQuery.textScalerOf(context).scale(16) / 16;
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      title: const Text('Choose level'),
      contentPadding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
      content: SizedBox(
        width: 420,
        height: math.min(420, screen.height * 0.45),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final tileWidth = 64 * textScale.clamp(1, 1.6);
            final columns = ((constraints.maxWidth + 8) / (tileWidth + 8))
                .floor()
                .clamp(2, 6);
            return GridView.builder(
              key: const ValueKey('level-picker-grid'),
              padding: EdgeInsets.zero,
              itemCount: levelCount,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                final level = index + 1;
                final unlocked = isUnlocked(level);
                final completed = isCompleted?.call(level) ?? false;
                final selected = level == currentLevel;
                return Tooltip(
                  message: completed
                      ? 'Level $level completed'
                      : unlocked
                      ? 'Play level $level'
                      : 'Complete level ${level - 1} to unlock',
                  child: FilledButton.tonal(
                    key: ValueKey('$levelKeyPrefix-level-$level'),
                    onPressed: unlocked
                        ? () => Navigator.pop(context, level)
                        : null,
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.all(4),
                      minimumSize: Size.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: selected
                            ? BorderSide(color: colors.primary, width: 2)
                            : BorderSide.none,
                      ),
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (completed || !unlocked) ...[
                            Icon(
                              completed
                                  ? Icons.check_rounded
                                  : Icons.lock_outline_rounded,
                              size: 16,
                            ),
                            const SizedBox(width: 4),
                          ],
                          Text('$level'),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Close'),
        ),
      ],
    );
  }
}
