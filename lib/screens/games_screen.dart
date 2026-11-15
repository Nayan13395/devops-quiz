import '../l10n/game_localizations.dart';
import 'package:flutter/material.dart';

import 'lucky_slot_screen.dart';
import 'scratch_card_screen.dart';
import 'spin_wheel_screen.dart';
import 'mystery_deal_screen.dart';
import 'memory_match_screen.dart';
import 'find_words_screen.dart';
import 'word_guess_levels_screen.dart';
import 'higher_lower_screen.dart';
import 'true_false_blitz_screen.dart';
import 'command_match_screen.dart';
import 'port_master_screen.dart';
import 'tic_tac_toe_screen.dart';
import 'connect_four_screen.dart';
import 'ludo_game_screen.dart';
import 'chess_screen.dart';
import 'snake_ladders_screen.dart';
import 'jigsaw_puzzle_screen.dart';
import 'spot_the_difference_screen.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _query = '';

  List<(String, String)> get _searchableGames => [
    (
      gameL10n(context).gameUiSpinWheel,
      gameL10n(context).gameUiSpinWinBonusPoints,
    ),
    (
      gameL10n(context).gameUiScratchCard,
      gameL10n(context).gameUiScratchToRevealYourReward,
    ),
    (
      gameL10n(context).gameUiLuckySlots,
      gameL10n(context).gameUiRollTheSlotsWinPoints,
    ),
    (
      gameL10n(context).gameUiMysteryDeal,
      gameL10n(context).gameUiPickAMysteryBoxAndAnswerCorrectlyToWin,
    ),
    (
      gameL10n(context).gameUiMemoryMatch,
      gameL10n(context).gameUiMatchDevOpsPairsToEarnPoints,
    ),
    (
      gameL10n(context).gameUiWordGuess,
      gameL10n(context).gameUiGuessTheDevOpsTermIn6Tries,
    ),
    (
      gameL10n(context).gameUiFindWords,
      gameL10n(context).gameUiSwipeToFindDevOpsWordsIn500Levels,
    ),
    (
      gameL10n(context).gameUiSpotTheDifference,
      gameL10n(context).gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c,
    ),
    (
      gameL10n(context).gameUiJigsawPuzzle,
      gameL10n(context).gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61,
    ),
    (
      gameL10n(context).gameUiHighOrLow,
      gameL10n(context).gameUiBuildAStreakAndBankYourPoints,
    ),
    (
      gameL10n(context).gameUiTrueOrFalseBlitzd3a29d7,
      gameL10n(context).gameUiBeatTheClockWithQuickAnswers,
    ),
    (
      gameL10n(context).gameUiCommandMatch670a76e,
      gameL10n(context).gameUiMatchCommandsToWhatTheyDo,
    ),
    (
      gameL10n(context).gameUiPortMaster8f5fd42,
      gameL10n(context).gameUiGuessDefaultPortsWith3Lives,
    ),
    (
      gameL10n(context).gameUiTicTacToe,
      gameL10n(context).gameUiPlayOXAgainstTheComputer,
    ),
    (
      gameL10n(context).gameUiConnectFour,
      gameL10n(context).gameUiDropFourDiscsInARowToWin,
    ),
    (
      gameL10n(context).gameUiLudo,
      gameL10n(context).gameUiRaceYourPiecesAgainstThreeBots,
    ),
    (
      gameL10n(context).gameUiChess,
      gameL10n(context).gameUiPlayALegalTwoPlayerChessMatch,
    ),
    (
      gameL10n(context).gameUiSnakeAndLadders,
      gameL10n(context).gameUiRaceTo100ClimbLaddersAndDodgeSnakes,
    ),
  ];

  bool _matchesSearch(String title, String description) {
    final query = _query.trim().toLowerCase();
    return query.isEmpty ||
        title.toLowerCase().contains(query) ||
        description.toLowerCase().contains(query);
  }

  bool get _hasSearchResults {
    final query = _query.trim().toLowerCase();
    return query.isEmpty ||
        _searchableGames.any(
          (game) =>
              game.$1.toLowerCase().contains(query) ||
              game.$2.toLowerCase().contains(query),
        );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text(gameL10n(context).gameUiGames)),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // ===============================================
            // RESPONSIVE COLUMN COUNT
            // ===============================================

            int columnCount = 1;

            if (constraints.maxWidth >= 1000) {
              columnCount = 4;
            } else if (constraints.maxWidth >= 700) {
              columnCount = 3;
            } else if (constraints.maxWidth >= 520) {
              columnCount = 2;
            }

            // ===============================================
            // RESPONSIVE PAGE WIDTH
            // ===============================================

            final double maxContentWidth = constraints.maxWidth >= 1200
                ? 1100
                : constraints.maxWidth;

            return Center(
              child: SizedBox(
                width: maxContentWidth,
                child: CustomScrollView(
                  slivers: [
                    // =======================================
                    // HEADER
                    // =======================================
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              gameL10n(context).gameUiPlayEarn,
                              style: const TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 6),

                            Text(
                              gameL10n(
                                context,
                              ).gameUiPlayGamesAndEarnBonusPoints,
                              style: TextStyle(
                                fontSize: 16,
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),

                            const SizedBox(height: 14),
                            TextField(
                              key: const ValueKey('games-search'),
                              controller: _searchController,
                              onChanged: (value) =>
                                  setState(() => _query = value),
                              textInputAction: TextInputAction.search,
                              decoration: InputDecoration(
                                hintText: gameL10n(context).gameUiSearchGames,
                                prefixIcon: const Icon(Icons.search_rounded),
                                suffixIcon: _query.isEmpty
                                    ? null
                                    : IconButton(
                                        tooltip: gameL10n(
                                          context,
                                        ).gameUiClearSearch,
                                        onPressed: () {
                                          _searchController.clear();
                                          setState(() => _query = '');
                                        },
                                        icon: const Icon(Icons.close_rounded),
                                      ),
                                isDense: true,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(14),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),

                    // =======================================
                    // GAME GRID
                    // =======================================
                    if (!_hasSearchResults)
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Center(
                          child: Text(
                            gameL10n(
                              context,
                            ).gameUiNoGamesMatch((_query.trim()).toString()),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ),
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                      sliver: SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: columnCount,

                          crossAxisSpacing: 14,

                          mainAxisSpacing: 14,

                          mainAxisExtent:
                              88 *
                              (MediaQuery.textScalerOf(context).scale(16) / 16)
                                  .clamp(1.0, double.infinity),
                        ),
                        delegate: SliverChildListDelegate([
                          // =================================
                          // SPIN WHEEL
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiSpinWheel,
                            gameL10n(context).gameUiSpinWinBonusPoints,
                          ))
                            _GameTile(
                              icon: '🎡',
                              title: gameL10n(context).gameUiSpinWheel,
                              description: gameL10n(
                                context,
                              ).gameUiSpinWinBonusPoints,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const SpinWheelScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // SCRATCH CARD
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiScratchCard,
                            gameL10n(context).gameUiScratchToRevealYourReward,
                          ))
                            _GameTile(
                              icon: '🎟️',
                              title: gameL10n(context).gameUiScratchCard,
                              description: gameL10n(
                                context,
                              ).gameUiScratchToRevealYourReward,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const ScratchCardScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // LUCKY SLOTS
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiLuckySlots,
                            gameL10n(context).gameUiRollTheSlotsWinPoints,
                          ))
                            _GameTile(
                              icon: '🎰',
                              title: gameL10n(context).gameUiLuckySlots,
                              description: gameL10n(
                                context,
                              ).gameUiRollTheSlotsWinPoints,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const LuckySlotScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // MYSTERY DEAL
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiMysteryDeal,
                            gameL10n(
                              context,
                            ).gameUiPickAMysteryBoxAndAnswerCorrectlyToWin,
                          ))
                            _GameTile(
                              icon: '💼',
                              title: gameL10n(context).gameUiMysteryDeal,
                              description: gameL10n(
                                context,
                              ).gameUiPickAMysteryBoxAndAnswerCorrectlyToWin,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const MysteryDealScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // MEMORY MATCH (NEW)
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiMemoryMatch,
                            gameL10n(
                              context,
                            ).gameUiMatchDevOpsPairsToEarnPoints,
                          ))
                            _GameTile(
                              icon: '🧠',
                              title: gameL10n(context).gameUiMemoryMatch,
                              description: gameL10n(
                                context,
                              ).gameUiMatchDevOpsPairsToEarnPoints,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const MemoryMatchScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // WORD GUESS (NEW)
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiWordGuess,
                            gameL10n(context).gameUiGuessTheDevOpsTermIn6Tries,
                          ))
                            _GameTile(
                              icon: '🔤',
                              title: gameL10n(context).gameUiWordGuess,
                              description: gameL10n(
                                context,
                              ).gameUiGuessTheDevOpsTermIn6Tries,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        const WordGuessLevelsScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // FIND WORDS
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiFindWords,
                            gameL10n(
                              context,
                            ).gameUiSwipeToFindDevOpsWordsIn500Levels,
                          ))
                            _GameTile(
                              icon: '🔎',
                              title: gameL10n(context).gameUiFindWords,
                              description: gameL10n(
                                context,
                              ).gameUiSwipeToFindDevOpsWordsIn500Levels,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const FindWordsScreen(),
                                  ),
                                );
                              },
                            ),

                          if (_matchesSearch(
                            gameL10n(context).gameUiSpotTheDifference,
                            gameL10n(
                              context,
                            ).gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c,
                          ))
                            _GameTile(
                              icon: '👀',
                              title: gameL10n(context).gameUiSpotTheDifference,
                              description: gameL10n(
                                context,
                              ).gameUiFindFiveChangesBetweenTwoIllustratedScenesbfdf80c,
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      const SpotTheDifferenceScreen(),
                                ),
                              ),
                            ),

                          // =================================
                          // JIGSAW PUZZLE
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiJigsawPuzzle,
                            gameL10n(
                              context,
                            ).gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61,
                          ))
                            _GameTile(
                              icon: '🧩',
                              title: gameL10n(context).gameUiJigsawPuzzle,
                              description: gameL10n(
                                context,
                              ).gameUiRebuildSharedHDAnimalAndNaturePictures53ccf61,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const JigsawPuzzleScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // HIGHER OR LOWER (NEW)
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiHighOrLow,
                            gameL10n(
                              context,
                            ).gameUiBuildAStreakAndBankYourPoints,
                          ))
                            _GameTile(
                              icon: '📈',
                              title: gameL10n(context).gameUiHighOrLow,
                              description: gameL10n(
                                context,
                              ).gameUiBuildAStreakAndBankYourPoints,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const HigherLowerScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // TRUE OR FALSE BLITZ (NEW)
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiTrueOrFalseBlitzd3a29d7,
                            gameL10n(
                              context,
                            ).gameUiBeatTheClockWithQuickAnswers,
                          ))
                            _GameTile(
                              icon: '⚡',
                              title: gameL10n(
                                context,
                              ).gameUiTrueOrFalseBlitzd3a29d7,
                              description: gameL10n(
                                context,
                              ).gameUiBeatTheClockWithQuickAnswers,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        const TrueFalseBlitzScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // COMMAND MATCH (NEW)
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiCommandMatch670a76e,
                            gameL10n(context).gameUiMatchCommandsToWhatTheyDo,
                          ))
                            _GameTile(
                              icon: '🔗',
                              title: gameL10n(
                                context,
                              ).gameUiCommandMatch670a76e,
                              description: gameL10n(
                                context,
                              ).gameUiMatchCommandsToWhatTheyDo,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const CommandMatchScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // PORT MASTER (NEW)
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiPortMaster8f5fd42,
                            gameL10n(context).gameUiGuessDefaultPortsWith3Lives,
                          ))
                            _GameTile(
                              icon: '🔌',
                              title: gameL10n(context).gameUiPortMaster8f5fd42,
                              description: gameL10n(
                                context,
                              ).gameUiGuessDefaultPortsWith3Lives,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const PortMasterScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // TIC-TAC-TOE
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiTicTacToe,
                            gameL10n(context).gameUiPlayOXAgainstTheComputer,
                          ))
                            _GameTile(
                              icon: '⭕',
                              title: gameL10n(context).gameUiTicTacToe,
                              description: gameL10n(
                                context,
                              ).gameUiPlayOXAgainstTheComputer,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const TicTacToeScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // CONNECT FOUR
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiConnectFour,
                            gameL10n(context).gameUiDropFourDiscsInARowToWin,
                          ))
                            _GameTile(
                              icon: '🔴',
                              title: gameL10n(context).gameUiConnectFour,
                              description: gameL10n(
                                context,
                              ).gameUiDropFourDiscsInARowToWin,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const ConnectFourScreen(),
                                  ),
                                );
                              },
                            ),

                          // =================================
                          // LUDO
                          // =================================
                          if (_matchesSearch(
                            gameL10n(context).gameUiLudo,
                            gameL10n(
                              context,
                            ).gameUiRaceYourPiecesAgainstThreeBots,
                          ))
                            _GameTile(
                              icon: '🎲',
                              title: gameL10n(context).gameUiLudo,
                              description: gameL10n(
                                context,
                              ).gameUiRaceYourPiecesAgainstThreeBots,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const LudoGameScreen(),
                                  ),
                                );
                              },
                            ),
                          if (_matchesSearch(
                            gameL10n(context).gameUiChess,
                            gameL10n(
                              context,
                            ).gameUiPlayALegalTwoPlayerChessMatch,
                          ))
                            _GameTile(
                              icon: '♟️',
                              title: gameL10n(context).gameUiChess,
                              description: gameL10n(
                                context,
                              ).gameUiPlayALegalTwoPlayerChessMatch,
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const ChessScreen(),
                                ),
                              ),
                            ),
                          if (_matchesSearch(
                            gameL10n(context).gameUiSnakeAndLadders,
                            gameL10n(
                              context,
                            ).gameUiRaceTo100ClimbLaddersAndDodgeSnakes,
                          ))
                            _GameTile(
                              icon: '🪜',
                              title: gameL10n(context).gameUiSnakeAndLadders,
                              description: gameL10n(
                                context,
                              ).gameUiRaceTo100ClimbLaddersAndDodgeSnakes,
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const SnakeLaddersScreen(),
                                ),
                              ),
                            ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// ============================================================
// GAME TILE
// ============================================================

class _GameTile extends StatelessWidget {
  final String icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  const _GameTile({
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return Card(
      elevation: 4,
      clipBehavior: Clip.antiAlias, // ✅ CRITICAL: Clips content to card bounds
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(icon, style: const TextStyle(fontSize: 28)),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        height: 1.2,
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.play_circle_fill_rounded,
                color: colorScheme.primary,
                size: 34,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
