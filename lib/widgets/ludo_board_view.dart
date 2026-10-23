import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_ludo/flutter_ludo.dart';

const ludoPlayerColours = [
  Color(0xFFA72638),
  Color(0xFF2056A0),
  Color(0xFF137044),
  Color(0xFF9C7200),
];
const ludoColourNames = ['Ruby', 'Blue', 'Emerald', 'Gold'];

class LudoBoardView extends StatelessWidget {
  const LudoBoardView({super.key, required this.controller});

  final LudoController controller;

  @override
  Widget build(BuildContext context) => ListenableBuilder(
    listenable: controller,
    builder: (context, _) {
      final state = controller.state;
      return LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 560),
              child: Column(
                children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 12,
                    runSpacing: 8,
                    children: [
                      for (int seat = 0; seat < state.players.length; seat++)
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.favorite,
                              color: state.players[seat].color,
                              size: 18,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${state.players[seat].name} · ${state.finishedCountOf(seat)}/4',
                              style: TextStyle(
                                fontWeight: seat == state.currentPlayerIndex
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  AspectRatio(
                    aspectRatio: 1,
                    child: RotatedBox(
                      key: const ValueKey('ludo-bottom-left-orientation'),
                      quarterTurns: 3,
                      child: LayoutBuilder(
                        builder: (context, constraints) =>
                            _board(constraints.maxWidth),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    state.isFinished
                        ? '${state.players[state.winners.first].name} wins!'
                        : '${state.currentPlayer.name}${controller.isCurrentPlayerBot
                              ? ' is thinking'
                              : controller.canSelectPiece
                              ? ': choose a piece'
                              : ': roll the dice'}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Semantics(
                        label: 'Dice ${state.lastRoll ?? 1}',
                        child: SizedBox.square(
                          dimension: 56,
                          child: CustomPaint(
                            key: const ValueKey('ludo-white-dice'),
                            painter: _DicePainter(state.lastRoll ?? 1),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Flexible(
                        child: FilledButton.icon(
                          key: const ValueKey('ludo-roll'),
                          onPressed: controller.canRoll
                              ? controller.rollDice
                              : null,
                          icon: const Icon(Icons.casino_outlined),
                          label: const Text('Roll dice'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );

  Widget _board(double size) {
    final state = controller.state;
    final cell = size / kBoardGridSize;
    final legal = controller.canSelectPiece
        ? state.legalMoves.map((move) => move.pieceId).toSet()
        : <int>{};
    final pieces = [
      for (final piece in state.pieces)
        controller.animatingPiece?.id == piece.id
            ? controller.animatingPiece!
            : piece,
    ];
    pieces.sort(
      (first, second) => (first.playerIndex == state.currentPlayerIndex ? 1 : 0)
          .compareTo(second.playerIndex == state.currentPlayerIndex ? 1 : 0),
    );
    return Stack(
      children: [
        Positioned.fill(
          child: CustomPaint(painter: _LudoBoardPainter(state.players)),
        ),
        for (int seat = 0; seat < state.players.length; seat++)
          Positioned(
            left: (kHomeBaseOrigins[seat][1] + 0.4) * cell,
            top: (kHomeBaseOrigins[seat][0] + 2.4) * cell,
            width: 5.2 * cell,
            height: 1.2 * cell,
            child: RotatedBox(
              quarterTurns: 1,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  state.players[seat].name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        for (final safe in kSafeIndices)
          Positioned(
            left: kPathCells[safe][1] * cell,
            top: kPathCells[safe][0] * cell,
            width: cell,
            height: cell,
            child: IgnorePointer(
              child: RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.favorite,
                  key: ValueKey('ludo-heart-$safe'),
                  size: cell * 0.65,
                  color: state
                      .players[(safe ~/ 13).clamp(0, state.players.length - 1)]
                      .color,
                ),
              ),
            ),
          ),
        Positioned(
          left: cell * 6.7,
          top: cell * 6.7,
          width: cell * 1.6,
          height: cell * 1.6,
          child: IgnorePointer(
            child: RotatedBox(
              quarterTurns: 1,
              child: ColoredBox(
                color: const Color(0xFF091628),
                child: Image.asset(
                  'assets/icon/app_icon.png',
                  key: const ValueKey('ludo-finish-icon'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        for (final piece in pieces) _piece(piece, pieces, legal, cell),
      ],
    );
  }

  Offset _cellOf(LudoPiece piece) {
    if (piece.isHome) {
      final base = kHomeBaseOrigins[piece.playerIndex];
      final slot = kHomeYardSlots[piece.id % 4];
      return Offset(base[1] + slot[1] + 0.5, base[0] + slot[0] + 0.5);
    }
    if (piece.isFinished) {
      final corner = const [
        Offset(-0.95, -0.95),
        Offset(0.95, -0.95),
        Offset(0.95, 0.95),
        Offset(-0.95, 0.95),
      ][piece.playerIndex];
      return const Offset(7.5, 7.5) +
          corner +
          Offset((piece.id % 4 - 1.5) * 0.1, 0);
    }
    final grid = gridCellFor(piece.playerIndex, piece.trackPosition)!;
    return Offset(grid[1] + 0.5, grid[0] + 0.5);
  }

  Widget _piece(
    LudoPiece piece,
    List<LudoPiece> pieces,
    Set<int> legal,
    double cell,
  ) {
    final center = _cellOf(piece);
    final peers = pieces.where((other) => _cellOf(other) == center).toList()
      ..sort((first, second) => first.id.compareTo(second.id));
    final index = peers.indexWhere((other) => other.id == piece.id);
    final angle = index * math.pi * 2 / peers.length;
    final offset = peers.length < 2
        ? Offset.zero
        : Offset(math.cos(angle), math.sin(angle)) * 0.2;
    final active = legal.contains(piece.id);
    final colour = controller.state.players[piece.playerIndex].color;
    return AnimatedPositioned(
      key: ValueKey('ludo-piece-${piece.id}'),
      duration: const Duration(milliseconds: 130),
      left: (center.dx + offset.dx - 0.38) * cell,
      top: (center.dy + offset.dy - 0.38) * cell,
      width: cell * 0.76,
      height: cell * 0.76,
      child: Semantics(
        label:
            '${controller.state.players[piece.playerIndex].name} piece ${piece.id % 4 + 1}',
        button: active,
        child: GestureDetector(
          onTap: active
              ? () async {
                  if (!controller.canSelectPiece) return;
                  await controller.selectPiece(piece.id);
                }
              : null,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                center: const Alignment(-0.3, -0.5),
                colors: [Color.lerp(colour, Colors.white, 0.3)!, colour],
              ),
              border: Border.all(
                color: active ? Colors.white : Colors.black54,
                width: active ? 2.5 : 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: active
                      ? colour.withValues(alpha: 0.7)
                      : Colors.black38,
                  blurRadius: active ? 6 : 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: RotatedBox(
              quarterTurns: 1,
              child: Center(
                child: FittedBox(
                  child: Text(
                    '${piece.id % 4 + 1}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LudoBoardPainter extends CustomPainter {
  const _LudoBoardPainter(this.players);
  final List<LudoPlayer> players;

  @override
  void paint(Canvas canvas, Size size) {
    final cell = size.width / 15;
    canvas.drawRect(
      Offset.zero & size,
      Paint()..color = const Color(0xFF202A29),
    );
    for (int seat = 0; seat < 4; seat++) {
      final base = kHomeBaseOrigins[seat];
      final colour = seat < players.length
          ? players[seat].color
          : const Color(0xFF424C4B);
      canvas.drawRect(
        Rect.fromLTWH(base[1] * cell, base[0] * cell, cell * 6, cell * 6),
        Paint()..color = colour,
      );
      for (final slot in kHomeYardSlots) {
        canvas.drawCircle(
          Offset(
            (base[1] + slot[1] + 0.5) * cell,
            (base[0] + slot[0] + 0.5) * cell,
          ),
          cell * 0.58,
          Paint()..color = const Color(0xFFF4F6F3),
        );
      }
      for (final square in kHomeStretchCells[seat]) {
        _cell(canvas, square, cell, colour);
      }
    }
    for (int index = 0; index < kPathCells.length; index++) {
      _cell(
        canvas,
        kPathCells[index],
        cell,
        kSafeIndices.contains(index)
            ? const Color(0xFFD8E2DC)
            : const Color(0xFFF4F6F3),
      );
    }
    final center = Rect.fromLTWH(cell * 6, cell * 6, cell * 3, cell * 3);
    canvas.drawRect(center, Paint()..color = const Color(0xFF202A29));
    canvas.drawRect(
      center,
      Paint()
        ..color = Colors.white54
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1,
    );
  }

  void _cell(Canvas canvas, List<int> square, double size, Color colour) {
    final rect = Rect.fromLTWH(square[1] * size, square[0] * size, size, size);
    canvas.drawRect(rect, Paint()..color = colour);
    canvas.drawRect(
      rect,
      Paint()
        ..color = const Color(0xFF66736D)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 0.5,
    );
  }

  @override
  bool shouldRepaint(covariant _LudoBoardPainter oldDelegate) =>
      oldDelegate.players != players;
}

class _DicePainter extends CustomPainter {
  const _DicePainter(this.value);
  final int value;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = (Offset.zero & size).deflate(2);
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(8)),
      Paint()..color = Colors.white,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, const Radius.circular(8)),
      Paint()
        ..color = Colors.black54
        ..style = PaintingStyle.stroke,
    );
    final pips = <Offset>[
      if (value.isOdd) const Offset(0.5, 0.5),
      if (value >= 2) ...[const Offset(0.25, 0.25), const Offset(0.75, 0.75)],
      if (value >= 4) ...[const Offset(0.75, 0.25), const Offset(0.25, 0.75)],
      if (value == 6) ...[const Offset(0.25, 0.5), const Offset(0.75, 0.5)],
    ];
    for (final pip in pips) {
      canvas.drawCircle(
        Offset(size.width * pip.dx, size.height * pip.dy),
        size.width * 0.065,
        Paint()..color = Colors.black,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _DicePainter oldDelegate) =>
      oldDelegate.value != value;
}
