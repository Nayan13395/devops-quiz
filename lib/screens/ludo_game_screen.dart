import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ludo/flutter_ludo.dart';

import '../services/ludo_match_history_service.dart';
import '../services/ludo_save_service.dart';
import '../services/game_player_names.dart';
import '../services/game_sound_service.dart';
import '../services/point_service.dart';
import '../widgets/ludo_board_view.dart';

const _legacyLudoPlayerColours = [
  Color(0xFF8B0000),
  Color(0xFFFF7F24),
  Color(0xFFFFD84D),
  Color(0xFF8FCF7A),
];

class LudoGameScreen extends StatefulWidget {
  const LudoGameScreen({super.key});

  @override
  State<LudoGameScreen> createState() => _LudoGameScreenState();
}

class _LudoGameScreenState extends State<LudoGameScreen>
    with WidgetsBindingObserver {
  LudoController? _controller;
  bool _rewarded = false;
  bool _matchRecorded = false;
  String _matchId = LudoMatchHistoryService.createMatchId();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _loadGame();
  }

  Future<void> _loadGame() async {
    final rawSaved = await LudoSaveService.load();
    final migrateTwoPlayers = rawSaved?.state.players.length == 2;
    final saved = rawSaved == null
        ? null
        : _convertLegacyTwoPlayerSave(rawSaved);
    if (!mounted) return;
    _rewarded = saved?.rewarded ?? false;
    _matchId = saved?.matchId ?? LudoMatchHistoryService.createMatchId();
    final bots = saved?.botPlayers ?? {1, 2, 3};
    final players = _withSignedInPlayerName(
      saved?.state.players ?? _players(4, true),
    );
    final controller = _createController(players, bots);
    if (saved != null) {
      controller.restore(saved.state.copyWith(players: players));
    }
    controller.addListener(_onChanged);
    setState(() => _controller = controller);
    if (migrateTwoPlayers) await _save();
    if (controller.state.isFinished) {
      unawaited(_recordMatch(controller.state.winners));
    }
  }

  List<LudoPlayer> _players(int count, bool bots) {
    final first = LudoPlayer(
      name: GamePlayerNames.playerOne(fallback: 'You'),
      color: ludoPlayerColours[0],
    );
    if (count == 2) {
      return [
        first,
        const LudoPlayer(name: ludoInactiveSeatName, color: Color(0xFF424C4B)),
        LudoPlayer(
          name: bots ? 'Bot 1' : 'Player 2',
          color: ludoPlayerColours[1],
        ),
      ];
    }
    return [
      first,
      for (int seat = 1; seat < count; seat++)
        LudoPlayer(
          name: bots ? 'Bot $seat' : 'Player ${seat + 1}',
          color: ludoPlayerColours[seat],
        ),
    ];
  }

  Set<int> _botSeats(int count, bool bots) {
    if (!bots) return {};
    if (count == 2) return {2};
    return {for (int seat = 1; seat < count; seat++) seat};
  }

  bool _isTwoPlayerOppositeGame(List<LudoPlayer> players) =>
      players.length == 3 && players[1].name == ludoInactiveSeatName;

  LudoSavedGame _convertLegacyTwoPlayerSave(LudoSavedGame saved) {
    final old = saved.state;
    if (old.players.length != 2) return saved;

    LudoPiece convertPiece(LudoPiece piece) => piece.playerIndex == 0
        ? piece
        : LudoPiece(
            id: piece.id + 4,
            playerIndex: 2,
            trackPosition: piece.trackPosition,
          );

    final players = [
      old.players[0],
      const LudoPlayer(name: ludoInactiveSeatName, color: Color(0xFF424C4B)),
      LudoPlayer(name: old.players[1].name, color: old.players[1].color),
    ];
    final pieces = [
      for (final piece in old.pieces) convertPiece(piece),
      for (int localPiece = 0; localPiece < 4; localPiece++)
        LudoPiece(
          id: 4 + localPiece,
          playerIndex: 1,
          trackPosition: LudoPiece.finished,
        ),
    ];
    final winners = <int>{1};
    winners.addAll(old.winners.map((player) => player == 1 ? 2 : player));
    final lastMoved = old.lastMovedPiece == null
        ? null
        : convertPiece(old.lastMovedPiece!);
    final state = old.copyWith(
      players: players,
      pieces: pieces,
      winners: winners.toList(),
      currentPlayerIndex: old.currentPlayerIndex == 1
          ? 2
          : old.currentPlayerIndex,
      lastRollPlayerIndex: old.lastRollPlayerIndex == 1
          ? 2
          : old.lastRollPlayerIndex,
      legalMoves: [
        for (final move in old.legalMoves)
          LudoLegalMove(
            pieceId: move.playerIndex == 1 ? move.pieceId + 4 : move.pieceId,
            playerIndex: move.playerIndex == 1 ? 2 : move.playerIndex,
            fromPosition: move.fromPosition,
            toPosition: move.toPosition,
          ),
      ],
      lastMovedPiece: lastMoved,
    );
    return LudoSavedGame(
      state: state,
      botPlayers: {for (final seat in saved.botPlayers) seat == 1 ? 2 : seat},
      rewarded: saved.rewarded,
      matchId: saved.matchId,
    );
  }

  bool _isInactiveSeat(LudoGameState state, int seat) =>
      state.players[seat].name == ludoInactiveSeatName;

  List<LudoPlayer> _withSignedInPlayerName(List<LudoPlayer> players) {
    final name = GamePlayerNames.signedInFirstName;
    if (players.isEmpty) return players;
    return [
      for (int seat = 0; seat < players.length; seat++)
        LudoPlayer(
          name: seat == 0 && name != null ? name : players[seat].name,
          color: _currentLudoColour(players[seat].color),
        ),
    ];
  }

  Color _currentLudoColour(Color colour) {
    final legacyIndex = _legacyLudoPlayerColours.indexOf(colour);
    return legacyIndex < 0 ? colour : ludoPlayerColours[legacyIndex];
  }

  LudoController _createController(List<LudoPlayer> players, Set<int> bots) {
    final controller = LudoController(
      players: players,
      botPlayers: bots,
      botDifficulty: LudoBotDifficulty.medium,
      diceRules: const LudoDiceRules.modern(),
      stepAnimationDuration: const Duration(milliseconds: 90),
      onDiceRolled: (_) =>
          unawaited(GameSoundService.play(GameSoundEffect.diceRoll)),
      autoMoveSingleChoice: false,
      onGameFinished: _onGameFinished,
    );
    final inactive = players.indexWhere(
      (player) => player.name == ludoInactiveSeatName,
    );
    if (inactive < 0) return controller;
    final initial = controller.state;
    controller.restore(
      initial.copyWith(
        winners: [inactive],
        pieces: [
          for (final piece in initial.pieces)
            piece.playerIndex == inactive
                ? piece.copyWith(trackPosition: LudoPiece.finished)
                : piece,
        ],
      ),
    );
    return controller;
  }

  void _onChanged() {
    if (!mounted) return;
    setState(() {});
    if (!_controller!.isAnimating) unawaited(_save());
  }

  Future<void> _save() async {
    final controller = _controller;
    if (controller == null) return;
    try {
      await LudoSaveService.save(
        controller,
        rewarded: _rewarded,
        matchId: _matchId,
      );
    } catch (error) {
      debugPrint('Ludo save failed: $error');
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final controller = _controller;
    if (controller == null) return;
    if (state == AppLifecycleState.resumed) {
      controller.resume();
    } else {
      controller.pause();
      unawaited(_save());
    }
  }

  void _onGameFinished(List<int> winnersInOrder) {
    final controller = _controller;
    final activeWinners = controller == null
        ? winnersInOrder
        : winnersInOrder
              .where((seat) => !_isInactiveSeat(controller.state, seat))
              .toList();
    if (activeWinners.isEmpty) {
      return;
    }
    unawaited(_recordMatch(activeWinners));
    if (_rewarded || activeWinners.first != 0) return;
    _rewarded = true;
    unawaited(_save());
    unawaited(_awardWin());
  }

  Future<void> _recordMatch(List<int> winnersInOrder) async {
    if (_matchRecorded) return;
    final controller = _controller;
    if (controller == null) return;
    final activeWinners = winnersInOrder
        .where((seat) => !_isInactiveSeat(controller.state, seat))
        .toList();
    if (activeWinners.isEmpty) return;

    _matchRecorded = true;
    try {
      await LudoMatchHistoryService.recordMatch(
        matchId: _matchId,
        players: [
          for (int seat = 0; seat < controller.state.players.length; seat++)
            if (!_isInactiveSeat(controller.state, seat))
              controller.state.players[seat].name,
        ],
        winner: controller.state.players[activeWinners.first].name,
      );
      await _save();
    } catch (error) {
      _matchRecorded = false;
      debugPrint('Ludo match history save failed: $error');
    }
  }

  Future<void> _showMatchStats() async {
    final stats = await LudoMatchHistoryService.loadStats();
    if (!mounted) return;
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Ludo match stats'),
        content: stats.isEmpty
            ? const Text('No completed matches yet.')
            : SizedBox(
                width: 360,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for (final stat in stats)
                      ListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        title: Text(stat.name),
                        subtitle: Text(
                          'Played ${stat.played}  ·  Won ${stat.won}  ·  Lost ${stat.lost}',
                        ),
                      ),
                  ],
                ),
              ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  Future<void> _awardWin() async {
    try {
      await PointService.addPoints(50, source: PointSource.game);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Ludo champion! You earned 50 points.')),
        );
      }
    } catch (error) {
      debugPrint('Ludo reward failed: $error');
    }
  }

  Future<void> _newGame() async {
    final old = _controller;
    if (old == null) return;
    old.pause();
    int count = _isTwoPlayerOppositeGame(old.state.players)
        ? 2
        : old.state.players.length;
    bool bots = old.botPlayers.isNotEmpty;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, update) => AlertDialog(
          title: const Text('New Ludo game'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SegmentedButton<int>(
                segments: const [
                  ButtonSegment(value: 2, label: Text('2')),
                  ButtonSegment(value: 3, label: Text('3')),
                  ButtonSegment(value: 4, label: Text('4')),
                ],
                selected: {count},
                onSelectionChanged: (selection) =>
                    update(() => count = selection.single),
              ),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Bot opponents'),
                value: bots,
                onChanged: (value) => update(() => bots = value),
              ),
              if (old.state.rollCount > 0)
                const Text('Starting a new match replaces your saved game.'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Start game'),
            ),
          ],
        ),
      ),
    );
    if (!mounted) return;
    if (confirmed != true) {
      old.resume();
      return;
    }
    final previousColours = old.state.players
        .map((player) => player.color)
        .toList();
    final colours = [
      ...previousColours,
      ...ludoPlayerColours.where((colour) => !previousColours.contains(colour)),
    ];
    final playerTemplates = _players(count, bots);
    final Color? twoPlayerOpponentColor = count == 2
        ? old
              .state
              .players[_isTwoPlayerOppositeGame(old.state.players) ? 2 : 1]
              .color
        : null;
    final players = [
      for (int seat = 0; seat < playerTemplates.length; seat++)
        LudoPlayer(
          name: playerTemplates[seat].name,
          color: count == 2 && seat == 2
              ? twoPlayerOpponentColor!
              : colours[seat],
        ),
    ];
    final controller = _createController(players, _botSeats(count, bots));
    old.removeListener(_onChanged);
    old.dispose();
    _rewarded = false;
    _matchRecorded = false;
    _matchId = LudoMatchHistoryService.createMatchId();
    controller.addListener(_onChanged);
    setState(() => _controller = controller);
    await _save();
  }

  Future<void> _chooseColours() async {
    final controller = _controller;
    if (controller == null || controller.isAnimating) return;
    controller.pause();
    final players = controller.state.players;
    final colours = players.map((player) => player.color).toList();
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, update) => AlertDialog(
          title: const Text('Player colours'),
          content: SizedBox(
            width: 320,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (int seat = 0; seat < players.length; seat++)
                    if (players[seat].name != ludoInactiveSeatName)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(players[seat].name),
                            const SizedBox(height: 4),
                            Wrap(
                              spacing: 4,
                              children: [
                                for (
                                  int colour = 0;
                                  colour < ludoPlayerColours.length;
                                  colour++
                                )
                                  Tooltip(
                                    message: ludoColourNames[colour],
                                    child: IconButton(
                                      key: ValueKey(
                                        'ludo-colour-$seat-$colour',
                                      ),
                                      style: IconButton.styleFrom(
                                        backgroundColor:
                                            ludoPlayerColours[colour],
                                        foregroundColor:
                                            ThemeData.estimateBrightnessForColor(
                                                  ludoPlayerColours[colour],
                                                ) ==
                                                Brightness.dark
                                            ? Colors.white
                                            : Colors.black87,
                                      ),
                                      onPressed: () => update(() {
                                        final other = colours.indexOf(
                                          ludoPlayerColours[colour],
                                        );
                                        if (other >= 0)
                                          colours[other] = colours[seat];
                                        colours[seat] =
                                            ludoPlayerColours[colour];
                                      }),
                                      icon: Icon(
                                        colours[seat] ==
                                                ludoPlayerColours[colour]
                                            ? Icons.check_rounded
                                            : Icons.circle_outlined,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Apply'),
            ),
          ],
        ),
      ),
    );
    if (!mounted) return;
    if (confirmed == true) {
      controller.restore(
        controller.state.copyWith(
          players: [
            for (int seat = 0; seat < players.length; seat++)
              LudoPlayer(name: players[seat].name, color: colours[seat]),
          ],
        ),
      );
      await _save();
    }
    if (mounted) controller.resume();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    final controller = _controller;
    if (controller != null) {
      controller.removeListener(_onChanged);
      unawaited(_save());
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ludo'),
        actions: [
          IconButton(
            tooltip: 'Match stats',
            onPressed: _showMatchStats,
            icon: const Icon(Icons.leaderboard_outlined),
          ),
          IconButton(
            tooltip: 'Player colours',
            onPressed: _controller == null || _controller!.isAnimating
                ? null
                : _chooseColours,
            icon: const Icon(Icons.palette_outlined),
          ),
          IconButton(
            tooltip: 'New game',
            onPressed: _controller == null || _controller!.isAnimating
                ? null
                : _newGame,
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: _controller == null
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(child: LudoBoardView(controller: _controller!)),
    );
  }
}
