import 'package:flutter/material.dart';
import 'package:flutter_ludo/flutter_ludo.dart';

import '../services/point_service.dart';

class LudoGameScreen extends StatefulWidget {
  const LudoGameScreen({super.key});

  @override
  State<LudoGameScreen> createState() => _LudoGameScreenState();
}

class _LudoGameScreenState extends State<LudoGameScreen> {
  late LudoController _controller;
  bool _rewarded = false;

  @override
  void initState() {
    super.initState();
    _createGame();
  }

  void _createGame() {
    _rewarded = false;
    _controller = LudoController(
      players: const [
        LudoPlayer(name: 'You', color: Color(0xFFE53935)),
        LudoPlayer(name: 'Blue Bot', color: Color(0xFF1E88E5)),
        LudoPlayer(name: 'Green Bot', color: Color(0xFF43A047)),
        LudoPlayer(name: 'Yellow Bot', color: Color(0xFFFFB300)),
      ],
      botPlayers: {1, 2, 3},
      botDifficulty: LudoBotDifficulty.medium,
      diceRules: const LudoDiceRules.modern(),
      onGameFinished: _onGameFinished,
    );
  }

  void _onGameFinished(List<int> winnersInOrder) {
    if (_rewarded || winnersInOrder.isEmpty || winnersInOrder.first != 0) {
      return;
    }
    _rewarded = true;
    _awardWin();
  }

  Future<void> _awardWin() async {
    try {
      await PointService.addLocalPoints(50);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Ludo champion! You earned 50 points.')),
        );
      }
    } catch (error) {
      debugPrint('Ludo reward failed: $error');
    }
  }

  void _newGame() {
    _controller.dispose();
    setState(_createGame);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ludo'),
        actions: [
          IconButton(
            tooltip: 'New game',
            onPressed: _newGame,
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: SafeArea(child: LudoGame(controller: _controller)),
    );
  }
}
