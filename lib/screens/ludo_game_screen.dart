import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ludo/flutter_ludo.dart';

import '../services/ludo_save_service.dart';
import '../services/point_service.dart';
import '../widgets/ludo_board_view.dart';

class LudoGameScreen extends StatefulWidget {
  const LudoGameScreen({super.key});

  @override
  State<LudoGameScreen> createState() => _LudoGameScreenState();
}

class _LudoGameScreenState extends State<LudoGameScreen>
    with WidgetsBindingObserver {
  LudoController? _controller;
  bool _rewarded = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _loadGame();
  }

  Future<void> _loadGame() async {
    final saved = await LudoSaveService.load();
    if (!mounted) return;
    _rewarded = saved?.rewarded ?? false;
    final controller = _createController(
      saved?.state.players ?? _players(4, true),
      saved?.botPlayers ?? {1, 2, 3},
    );
    if (saved != null) controller.restore(saved.state);
    controller.addListener(_onChanged);
    setState(() => _controller = controller);
  }

  List<LudoPlayer> _players(int count, bool bots) => [
    for (int seat = 0; seat < count; seat++)
      LudoPlayer(
        name: seat == 0
            ? 'You'
            : bots
            ? 'Bot $seat'
            : 'Player ${seat + 1}',
        color: ludoPlayerColours[seat],
      ),
  ];

  LudoController _createController(List<LudoPlayer> players, Set<int> bots) =>
      LudoController(
        players: players,
        botPlayers: bots,
        botDifficulty: LudoBotDifficulty.medium,
        diceRules: const LudoDiceRules.modern(),
        autoMoveSingleChoice: false,
        onGameFinished: _onGameFinished,
      );

  void _onChanged() {
    if (!mounted) return;
    setState(() {});
    if (!_controller!.isAnimating) unawaited(_save());
  }

  Future<void> _save() async {
    final controller = _controller;
    if (controller == null) return;
    try {
      await LudoSaveService.save(controller, rewarded: _rewarded);
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
    if (_rewarded || winnersInOrder.isEmpty || winnersInOrder.first != 0) {
      return;
    }
    _rewarded = true;
    unawaited(_save());
    unawaited(_awardWin());
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
    int count = old.state.players.length;
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
    final players = _players(count, bots);
    final controller = _createController([
      for (int seat = 0; seat < count; seat++)
        LudoPlayer(name: players[seat].name, color: colours[seat]),
    ], bots ? {for (int seat = 1; seat < count; seat++) seat} : {});
    old.removeListener(_onChanged);
    old.dispose();
    _rewarded = false;
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
                                    key: ValueKey('ludo-colour-$seat-$colour'),
                                    style: IconButton.styleFrom(
                                      backgroundColor:
                                          ludoPlayerColours[colour],
                                      foregroundColor: Colors.white,
                                    ),
                                    onPressed: () => update(() {
                                      final other = colours.indexOf(
                                        ludoPlayerColours[colour],
                                      );
                                      if (other >= 0)
                                        colours[other] = colours[seat];
                                      colours[seat] = ludoPlayerColours[colour];
                                    }),
                                    icon: Icon(
                                      colours[seat] == ludoPlayerColours[colour]
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
