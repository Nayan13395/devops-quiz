import 'dart:async';
import 'dart:math';

import 'package:chess/chess.dart' as chess;
import 'package:flutter/material.dart';

import '../services/chess_save_service.dart';
import '../services/point_service.dart';
import '../widgets/chess_piece_view.dart';

class ChessScreen extends StatefulWidget {
  const ChessScreen({super.key});

  @override
  State<ChessScreen> createState() => _ChessScreenState();
}

class _ChessScreenState extends State<ChessScreen> with WidgetsBindingObserver {
  final Random _random = Random();
  chess.Chess _game = chess.Chess();
  bool _userIsWhite = true;
  bool _botStartsNext = true;
  int _gameGeneration = 0;
  Timer? _botMoveTimer;
  int? _selectedSquare;
  bool _againstComputer = true;
  bool _loading = true;
  bool _rewarded = false;
  bool _busy = false;
  bool _appActive = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _loadGame();
  }

  Future<void> _loadGame() async {
    final saved = await ChessSaveService.load();
    if (!mounted) return;
    setState(() {
      if (saved != null) {
        _game = saved.game;
        _againstComputer = saved.againstComputer;
        _userIsWhite = saved.userIsWhite;
        _botStartsNext = saved.botStartsNext;
        _rewarded = saved.rewarded;
      }
      _loading = false;
    });
    _playComputerMove();
  }

  Future<void> _save() async {
    try {
      await ChessSaveService.save(
        ChessSavedGame(
          game: _game,
          againstComputer: _againstComputer,
          userIsWhite: _userIsWhite,
          botStartsNext: _botStartsNext,
          rewarded: _rewarded,
        ),
      );
    } catch (error) {
      debugPrint('Chess save failed: $error');
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _appActive = state == AppLifecycleState.resumed;
    if (state == AppLifecycleState.resumed) {
      if (!_loading) _playComputerMove();
    } else {
      _botMoveTimer?.cancel();
      _gameGeneration++;
      if (!_loading) unawaited(_save());
    }
  }

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
      if (!_againstComputer) {
        return '${_game.turn == chess.Color.WHITE ? 'Black' : 'White'} wins by checkmate';
      }
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
    if (_loading ||
        _busy ||
        _game.game_over ||
        (_againstComputer && _game.turn != _userColor))
      return;

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
          _selectedSquare = null;
          moved = true;
        }
      });
      if (moved) unawaited(_afterMove());
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

  void _playComputerMove() {
    if (!_appActive ||
        !_againstComputer ||
        _loading ||
        _game.game_over ||
        _game.turn == _userColor)
      return;

    final generation = _gameGeneration;
    _botMoveTimer?.cancel();
    _botMoveTimer = Timer(const Duration(milliseconds: 1200), () {
      _botMoveTimer = null;
      if (!mounted ||
          generation != _gameGeneration ||
          !_againstComputer ||
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
          _selectedSquare = null;
        }
        _selectedSquare = null;
      });
      unawaited(_afterMove());
    });
  }

  Future<void> _afterMove() async {
    setState(() => _busy = true);
    final humanWin = !_againstComputer || _game.turn != _userColor;
    final award = _game.in_checkmate && humanWin && !_rewarded;
    if (award) _rewarded = true;
    await _save();
    if (award) {
      try {
        await PointService.addPoints(50, source: PointSource.game);
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Checkmate! You earned 50 points.')),
          );
        }
      } catch (error) {
        debugPrint('Chess reward failed: $error');
      }
    }
    if (!mounted) return;
    setState(() => _busy = false);
    _playComputerMove();
  }

  Future<void> _chooseMode(Set<bool> selection) async {
    final againstComputer = selection.single;
    if (againstComputer == _againstComputer || _busy) return;
    _botMoveTimer?.cancel();
    _gameGeneration++;
    if (_game.history.isNotEmpty && !_game.game_over) {
      final restart = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Start a new game?'),
          content: const Text(
            'Changing the player mode replaces the saved match.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('New game'),
            ),
          ],
        ),
      );
      if (!mounted) return;
      if (restart != true) {
        _playComputerMove();
        return;
      }
    }
    setState(() {
      _againstComputer = againstComputer;
      _game = chess.Chess();
      _userIsWhite = true;
      _selectedSquare = null;
      _rewarded = false;
    });
    await _save();
  }

  void _reset() {
    final botStarts = _againstComputer && _botStartsNext;
    if (_againstComputer) _botStartsNext = !_botStartsNext;
    _gameGeneration++;
    _botMoveTimer?.cancel();
    _botMoveTimer = null;

    setState(() {
      _game = chess.Chess();
      _userIsWhite = !botStarts;
      _selectedSquare = null;
      _rewarded = false;
    });

    unawaited(_save());
    if (botStarts) _playComputerMove();
  }

  @override
  void dispose() {
    _botMoveTimer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    if (!_loading) unawaited(_save());
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
            onPressed: _loading || _busy ? null : _reset,
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(16),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 560),
                    child: Column(
                      children: [
                        SegmentedButton<bool>(
                          segments: const [
                            ButtonSegment(
                              value: true,
                              icon: Icon(Icons.computer_rounded),
                              label: Text('Computer'),
                            ),
                            ButtonSegment(
                              value: false,
                              icon: Icon(Icons.people_alt_outlined),
                              label: Text('2 players'),
                            ),
                          ],
                          selected: {_againstComputer},
                          onSelectionChanged: _busy ? null : _chooseMode,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          _status,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          !_againstComputer
                              ? 'Player 1 · White / Player 2 · Black'
                              : _userIsWhite
                              ? 'You are White · Computer is Black'
                              : 'You are Black · Computer is White',
                          key: const ValueKey('chess-player-colors'),
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(color: colors.onSurfaceVariant),
                        ),
                        const SizedBox(height: 16),
                        AspectRatio(
                          aspectRatio: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: GridView.builder(
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 64,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 8,
                                  ),
                              itemBuilder: (context, index) {
                                final coordinate = _coordinate(index);
                                final square =
                                    chess.Chess.SQUARES[coordinate] as int;
                                final piece = _game.board[square];
                                final selected = _selectedSquare == index;
                                final lightSquare =
                                    ((index ~/ 8) + (index % 8)).isEven;
                                final squareColor = selected
                                    ? colors.tertiaryContainer
                                    : lightSquare
                                    ? const Color(0xFFF0F1ED)
                                    : const Color(0xFF53756A);

                                return Semantics(
                                  button: true,
                                  label:
                                      '$coordinate ${piece == null ? 'empty' : '${piece.color == chess.Color.WHITE ? 'White' : 'Black'} ${chessPieceNames[piece.type.name]}'}',
                                  child: InkWell(
                                    key: ValueKey('chess-square-$coordinate'),
                                    onTap: () => _tapSquare(index),
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: squareColor,
                                      ),
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
                                                      ? colors.primary
                                                            .withValues(
                                                              alpha: 0.45,
                                                            )
                                                      : Colors.transparent,
                                                  shape: BoxShape.circle,
                                                  border: piece == null
                                                      ? null
                                                      : Border.all(
                                                          color: colors.primary
                                                              .withValues(
                                                                alpha: 0.6,
                                                              ),
                                                          width: 3,
                                                        ),
                                                ),
                                              ),
                                            ),
                                          if (piece != null)
                                            ChessPieceView(
                                              key: ValueKey(
                                                'chess-piece-$coordinate',
                                              ),
                                              type: piece.type.name,
                                              white:
                                                  piece.color ==
                                                  chess.Color.WHITE,
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
