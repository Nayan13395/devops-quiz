import 'package:flutter/material.dart';

import 'lucky_slot_screen.dart';
import 'scratch_card_screen.dart';
import 'spin_wheel_screen.dart';
import 'mystery_deal_screen.dart';
import 'memory_match_screen.dart';
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

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _query = '';

  static const List<(String, String)> _searchableGames = [
    ('Spin Wheel', 'Spin and win bonus points'),
    ('Scratch Card', 'Scratch to reveal a reward'),
    ('Lucky Slots', 'Roll the slots and win points'),
    ('Mystery Deal', 'Pick a mystery box and answer'),
    ('Memory Match', 'Match DevOps pairs'),
    ('Word Guess', 'Guess DevOps words through levels'),
    ('High or Low', 'Build a streak'),
    ('True or False Blitz', 'Quick answer quiz'),
    ('Command Match', 'Match commands to meanings'),
    ('Port Master', 'Guess default ports'),
    ('Tic-Tac-Toe', 'O X noughts and crosses computer'),
    ('Connect Four', 'Drop four discs'),
    ('Ludo', 'Race against bots'),
    ('Chess', 'Chess board legal moves two players'),
    ('Snake and Ladders', 'Dice board snakes ladders two players'),
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
      appBar: AppBar(title: const Text('Games 🎮')),
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
                            const Text(
                              'Play & Earn',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 6),

                            Text(
                              'Play games and earn bonus points!',
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
                                hintText: 'Search games',
                                prefixIcon: const Icon(Icons.search_rounded),
                                suffixIcon: _query.isEmpty
                                    ? null
                                    : IconButton(
                                        tooltip: 'Clear search',
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
                            'No games match "${_query.trim()}"',
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

                          childAspectRatio: columnCount == 1
                              ? 2.85
                              : columnCount == 2
                              ? 0.82
                              : 0.90,
                        ),
                        delegate: SliverChildListDelegate([
                          // =================================
                          // SPIN WHEEL
                          // =================================
                          if (_matchesSearch(
                            'Spin Wheel',
                            'Spin & win bonus points.',
                          ))
                            _GameTile(
                              icon: '🎡',
                              title: 'Spin Wheel',
                              description: 'Spin & win bonus points.',
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
                            'Scratch Card',
                            'Scratch to reveal your reward.',
                          ))
                            _GameTile(
                              icon: '🎟️',
                              title: 'Scratch Card',
                              description: 'Scratch to reveal your reward.',
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
                            'Lucky Slots',
                            'Roll the slots & win points.',
                          ))
                            _GameTile(
                              icon: '🎰',
                              title: 'Lucky Slots',
                              description: 'Roll the slots & win points.',
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
                            'Mystery Deal',
                            'Pick a mystery box and answer correctly to win points.',
                          ))
                            _GameTile(
                              icon: '💼',
                              title: 'Mystery Deal',
                              description:
                                  'Pick a mystery box and answer correctly to win points.',
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
                            'Memory Match',
                            'Match DevOps pairs to earn points.',
                          ))
                            _GameTile(
                              icon: '🧠',
                              title: 'Memory Match',
                              description: 'Match DevOps pairs to earn points.',
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
                            'Word Guess',
                            'Guess the DevOps term in 6 tries.',
                          ))
                            _GameTile(
                              icon: '🔤',
                              title: 'Word Guess',
                              description: 'Guess the DevOps term in 6 tries.',
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
                          // HIGHER OR LOWER (NEW)
                          // =================================
                          if (_matchesSearch(
                            'High or Low',
                            'Build a streak and bank your points.',
                          ))
                            _GameTile(
                              icon: '📈',
                              title: 'High or Low',
                              description:
                                  'Build a streak and bank your points.',
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
                            'True or False Blitz',
                            'Beat the clock with quick answers.',
                          ))
                            _GameTile(
                              icon: '⚡',
                              title: 'True or False Blitz 🆕',
                              description: 'Beat the clock with quick answers.',
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
                            'Command Match',
                            'Match commands to what they do.',
                          ))
                            _GameTile(
                              icon: '🔗',
                              title: 'Command Match 🆕',
                              description: 'Match commands to what they do.',
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
                            'Port Master',
                            'Guess default ports with 3 lives.',
                          ))
                            _GameTile(
                              icon: '🔌',
                              title: 'Port Master 🆕',
                              description: 'Guess default ports with 3 lives.',
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
                            'Tic-Tac-Toe',
                            'Play O/X against the computer.',
                          ))
                            _GameTile(
                              icon: '⭕',
                              title: 'Tic-Tac-Toe',
                              description: 'Play O/X against the computer.',
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
                            'Connect Four',
                            'Drop four discs in a row to win.',
                          ))
                            _GameTile(
                              icon: '🔴',
                              title: 'Connect Four',
                              description: 'Drop four discs in a row to win.',
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
                            'Ludo',
                            'Race your pieces against three bots.',
                          ))
                            _GameTile(
                              icon: '🎲',
                              title: 'Ludo',
                              description:
                                  'Race your pieces against three bots.',
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
                            'Chess',
                            'Local two-player chess with legal moves.',
                          ))
                            _GameTile(
                              icon: '♟️',
                              title: 'Chess',
                              description:
                                  'Play a legal two-player chess match.',
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const ChessScreen(),
                                ),
                              ),
                            ),
                          if (_matchesSearch(
                            'Snake and Ladders',
                            'Two-player dice board game.',
                          ))
                            _GameTile(
                              icon: '🪜',
                              title: 'Snake and Ladders',
                              description:
                                  'Race to 100. Climb ladders and dodge snakes.',
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
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 360 || constraints.maxHeight < 260) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
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
              );
            }

            return Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                children: [
                  // =============================================
                  // Keep game icons and titles aligned in the card grid.
                  // =============================================
                  Align(
                    alignment: Alignment.topRight,
                    child: const SizedBox(height: 22),
                  ),

                  const Spacer(),

                  // =============================================
                  // GAME ICON
                  // =============================================
                  Container(
                    width: 72,
                    height: 72,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(icon, style: const TextStyle(fontSize: 38)),
                  ),

                  const SizedBox(height: 14),

                  // =============================================
                  // GAME NAME
                  // =============================================
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 7),

                  // =============================================
                  // DESCRIPTION
                  // =============================================
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    maxLines: 2, // ✅ Limit to 2 lines
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      height: 1.25,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),

                  const Spacer(),

                  // =============================================
                  // PLAY
                  // =============================================
                  SizedBox(
                    width: double.infinity,
                    height: 38,
                    child: ElevatedButton.icon(
                      onPressed: onTap,
                      icon: const Icon(Icons.play_arrow_rounded, size: 20),
                      label: const Text(
                        'Play',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
