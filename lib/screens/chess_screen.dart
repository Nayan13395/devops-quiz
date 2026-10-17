import 'dart:async';
import 'dart:math';

import 'package:chess/chess.dart' as chess;
import 'package:flutter/material.dart';

class ChessScreen extends StatefulWidget {
  const ChessScreen({super.key});

  @override
  State<ChessScreen> createState() => _ChessScreenState();
}

class _ChessScreenState extends State<ChessScreen> {
  final Random _random = Random();
  chess.Chess _game = chess.Chess();
  bool _userIsWhite = true;
  bool _botStartsNext = true;
  int _gameGeneration = 0;
  Timer? _botMoveTimer;
  int? _selectedSquare;
  int? _lastFrom;
  int? _lastTo;
  final List<String> _moves = [];

  chess.Color get _userColor =>
      _userIsWhite ? chess.Color.WHITE : chess.Color.BLACK;

  String _coordinate(int screenIndex) {
    final boardIndex = _userIsWhite ? screenIndex : 63 - screenIndex;
    return '${String.fromCharCode(97 + boardIndex % 8)}${8 - boardIndex ~/ 8}';
  }

  int _squareIndex(String coordinate) {
    final boardIndex =
        (8 - int.parse(coordinate[1])) * 8 + coordinate.codeUnitAt(0) - 97;
    return _userIsWhite ? boardIndex : 63 - boardIndex;
  }

  Set<int> get _legalDestinations {
    final selected = _selectedSquare;
    if (selected == null) return const {};

    final moves = _game.moves({
      'square': _coordinate(selected),
      'verbose': true,
    });
    return moves.map((move) => _squareIndex(move['to'] as String)).toSet();
  }

  String get _status {
    if (_game.in_checkmate) {
      return _game.turn == _userColor
          ? 'Computer wins by checkmate'
          : 'You win by checkmate';
    }
    if (_game.in_stalemate) return 'Draw by stalemate';
    if (_game.in_draw) return 'Draw';

    final side = _game.turn == chess.Color.WHITE ? 'White' : 'Black';
    final turn = '$side to move';
    return _game.in_check ? '$turn · Check' : turn;
  }

  void _tapSquare(int index) {
    if (_game.game_over || _game.turn != _userColor) return;

    final target = _coordinate(index);
    final selected = _selectedSquare;
    final legalMoves = selected == null
        ? <dynamic>[]
        : _game
              .moves({'square': _coordinate(selected), 'verbose': true})
              .where((move) => move['to'] == target)
              .toList();

    if (legalMoves.isNotEmpty) {
      final move = legalMoves.first;
      final san = move['san'] as String;
      var moved = false;
      setState(() {
        if (_game.move(san)) {
          _lastFrom = _squareIndex(move['from'] as String);
          _lastTo = _squareIndex(move['to'] as String);
          _moves.add(san);
          _selectedSquare = null;
          moved = true;
        }
      });
      if (moved) _playComputerMove();
      return;
    }

    final square = chess.Chess.SQUARES[target] as int;
    final piece = _game.board[square];
    setState(() {
      _selectedSquare = piece != null && piece.color == _userColor
          ? index
          : null;
    });
  }

  void _playComputerMove() {
    if (_game.game_over || _game.turn == _userColor) return;

    final generation = _gameGeneration;
    _botMoveTimer?.cancel();
    _botMoveTimer = Timer(const Duration(milliseconds: 1200), () {
      _botMoveTimer = null;
      if (!mounted ||
          generation != _gameGeneration ||
          _game.game_over ||
          _game.turn == _userColor) {
        return;
      }

      final legalMoves = _game.moves({'verbose': true});
      if (legalMoves.isEmpty) return;

      final move = legalMoves[_random.nextInt(legalMoves.length)];
      final san = move['san'] as String;
      setState(() {
        if (_game.move(san)) {
          _lastFrom = _squareIndex(move['from'] as String);
          _lastTo = _squareIndex(move['to'] as String);
          _moves.add(san);
        }
        _selectedSquare = null;
      });
    });
  }

  String _pieceGlyph(chess.Piece piece) {
    final glyphs = piece.color == chess.Color.WHITE
        ? const {'k': '♔', 'q': '♕', 'r': '♖', 'b': '♗', 'n': '♘', 'p': '♙'}
        : const {'k': '♚', 'q': '♛', 'r': '♜', 'b': '♝', 'n': '♞', 'p': '♟'};
    return glyphs[piece.type.name] ?? '';
  }

  void _reset() {
    final botStarts = _botStartsNext;
    _botStartsNext = !_botStartsNext;
    _gameGeneration++;
    _botMoveTimer?.cancel();
    _botMoveTimer = null;

    setState(() {
      _game = chess.Chess();
      _userIsWhite = !botStarts;
      _selectedSquare = null;
      _lastFrom = null;
      _lastTo = null;
      _moves.clear();
    });

    if (botStarts) _playComputerMove();
  }

  @override
  void dispose() {
    _botMoveTimer?.cancel();
    super.dispose();
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
                    _userIsWhite
                        ? 'You are White · Computer is Black'
                        : 'You are Black · Computer is White',
                    key: const ValueKey('chess-player-colors'),
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
                                              color:
                                                  piece.color ==
                                                      chess.Color.WHITE
                                                  ? const Color(0xFFFCFCF7)
                                                  : const Color(0xFF20252B),
                                              shadows: [
                                                Shadow(
                                                  color: Colors.black
                                                      .withValues(alpha: 0.55),
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
                    key: const ValueKey('chess-move-list'),
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
