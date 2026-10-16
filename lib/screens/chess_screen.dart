import 'package:chess/chess.dart' as chess;
import 'package:flutter/material.dart';

class ChessScreen extends StatefulWidget {
  const ChessScreen({super.key});

  @override
  State<ChessScreen> createState() => _ChessScreenState();
}

class _ChessScreenState extends State<ChessScreen> {
  chess.Chess _game = chess.Chess();
  int? _selectedSquare;
  int? _lastFrom;
  int? _lastTo;
  final List<String> _moves = [];

  String _coordinate(int index) =>
      '${String.fromCharCode(97 + index % 8)}${8 - index ~/ 8}';

  int _squareIndex(String coordinate) =>
      (8 - int.parse(coordinate[1])) * 8 + coordinate.codeUnitAt(0) - 97;

  Set<int> get _legalDestinations {
    final selected = _selectedSquare;
    if (selected == null) return const {};

    final moves = _game.moves({
      'square': _coordinate(selected),
      'verbose': true,
    });
    return moves
        .map((move) => _squareIndex(move['to'] as String))
        .toSet();
  }

  String get _status {
    if (_game.in_checkmate) {
      return _game.turn == chess.Color.BLACK
          ? 'White wins by checkmate'
          : 'Black wins by checkmate';
    }
    if (_game.in_stalemate) return 'Draw by stalemate';
    if (_game.in_draw) return 'Draw';

    final side = _game.turn == chess.Color.WHITE ? 'White' : 'Black';
    return _game.in_check ? '$side to move · Check' : '$side to move';
  }

  void _tapSquare(int index) {
    if (_game.game_over) return;

    final target = _coordinate(index);
    final selected = _selectedSquare;
    final legalMoves = selected == null
        ? <dynamic>[]
        : _game
              .moves({'square': _coordinate(selected), 'verbose': true})
              .where((move) => move['to'] == target)
              .toList();

    if (legalMoves.isNotEmpty) {
      final san = legalMoves.first['san'] as String;
      setState(() {
        if (_game.move(san)) {
          _lastFrom = selected;
          _lastTo = index;
          _moves.add(san);
          _selectedSquare = null;
        }
      });
      return;
    }

    final square = chess.Chess.SQUARES[target] as int;
    final piece = _game.board[square];
    setState(() {
      _selectedSquare = piece != null && piece.color == _game.turn
          ? index
          : null;
    });
  }

  String _pieceGlyph(chess.Piece piece) {
    final glyphs = piece.color == chess.Color.WHITE
        ? const {'k': '♔', 'q': '♕', 'r': '♖', 'b': '♗', 'n': '♘', 'p': '♙'}
        : const {'k': '♚', 'q': '♛', 'r': '♜', 'b': '♝', 'n': '♞', 'p': '♟'};
    return glyphs[piece.type.name] ?? '';
  }

  void _reset() {
    setState(() {
      _game = chess.Chess();
      _selectedSquare = null;
      _lastFrom = null;
      _lastTo = null;
      _moves.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final destinations = _legalDestinations;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chess'),
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
            padding: const EdgeInsets.all(16),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 560),
              child: Column(
                children: [
                  Text(
                    _status,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Two players · White moves first',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 16),
                  AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 64,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 8,
                            ),
                        itemBuilder: (context, index) {
                          final coordinate = _coordinate(index);
                          final square = chess.Chess.SQUARES[coordinate] as int;
                          final piece = _game.board[square];
                          final selected = _selectedSquare == index;
                          final isLastMove =
                              _lastFrom == index || _lastTo == index;
                          final lightSquare =
                              ((index ~/ 8) + (index % 8)).isEven;
                          final squareColor = selected
                              ? colors.tertiaryContainer
                              : isLastMove
                              ? colors.secondaryContainer
                              : lightSquare
                              ? const Color(0xFFE9E2D0)
                              : const Color(0xFF53756A);

                          return Semantics(
                            button: true,
                            label:
                                '$coordinate ${piece == null ? 'empty' : _pieceGlyph(piece)}',
                            child: InkWell(
                              key: ValueKey('chess-square-$coordinate'),
                              onTap: () => _tapSquare(index),
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: squareColor),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    if (destinations.contains(index))
                                      Center(
                                        child: Container(
                                          width: piece == null ? 12 : 30,
                                          height: piece == null ? 12 : 30,
                                          decoration: BoxDecoration(
                                            color: piece == null
                                                ? colors.primary.withValues(
                                                    alpha: 0.45,
                                                  )
                                                : Colors.transparent,
                                            shape: BoxShape.circle,
                                            border: piece == null
                                                ? null
                                                : Border.all(
                                                    color: colors.primary
                                                        .withValues(alpha: 0.6),
                                                    width: 3,
                                                  ),
                                          ),
                                        ),
                                      ),
                                    if (piece != null)
                                      Center(
                                        child: FittedBox(
                                          child: Text(
                                            _pieceGlyph(piece),
                                            style: TextStyle(
                                              fontSize: 42,
                                              color: piece.color == chess.Color.WHITE
                                                  ? const Color(0xFFFCFCF7)
                                                  : const Color(0xFF20252B),
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black.withValues(
                                                    alpha: 0.55,
                                                  ),
                                                  blurRadius: 2,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    _moves.isEmpty
                        ? 'Tap a piece, then a highlighted square.'
                        : _moves.join('  '),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall,
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
