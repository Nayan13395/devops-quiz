import 'package:flutter/material.dart';

import 'lucky_slot_screen.dart';
import 'scratch_card_screen.dart';
import 'spin_wheel_screen.dart';
import 'mystery_deal_screen.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme =
        Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🎮 Games',
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (
            context,
            constraints,
          ) {
            // ===============================================
            // RESPONSIVE COLUMN COUNT
            // ===============================================

            int columnCount = 2;

            if (constraints.maxWidth >= 1000) {
              columnCount = 4;
            } else if (
                constraints.maxWidth >= 700) {
              columnCount = 3;
            }

            // ===============================================
            // RESPONSIVE PAGE WIDTH
            // ===============================================

            final double maxContentWidth =
                constraints.maxWidth >= 1200
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
                      padding:
                          const EdgeInsets.fromLTRB(
                        16,
                        20,
                        16,
                        0,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                          children: [
                            const Text(
                              'Play & Earn',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight:
                                    FontWeight.bold,
                              ),
                            ),

                            const SizedBox(
                              height: 6,
                            ),

                            Text(
                              'Play games and earn bonus points!',
                              style: TextStyle(
                                fontSize: 16,
                                color: colorScheme
                                    .onSurfaceVariant,
                              ),
                            ),

                            const SizedBox(
                              height: 22,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // =======================================
                    // GAME GRID
                    // =======================================

                    SliverPadding(
                      padding:
                          const EdgeInsets.fromLTRB(
                        16,
                        0,
                        16,
                        24,
                      ),
                      sliver: SliverGrid(
                        gridDelegate:
                            SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              columnCount,

                          crossAxisSpacing:
                              14,

                          mainAxisSpacing:
                              14,

                          // Slightly taller tiles on mobile.
                          childAspectRatio:
                              columnCount == 2
                                  ? 0.82
                                  : 0.90,
                        ),
                        delegate:
                            SliverChildListDelegate(
                          [
                            // =================================
                            // SPIN WHEEL
                            // =================================

                            _GameTile(
                              icon: '🎡',
                              title:
                                  'Spin Wheel',
                              description:
                                  'Spin & win bonus points.',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        const SpinWheelScreen(),
                                  ),
                                );
                              },
                            ),

                            // =================================
                            // SCRATCH CARD
                            // =================================

                            _GameTile(
                              icon: '🎟️',
                              title:
                                  'Scratch Card',
                              description:
                                  'Scratch to reveal your reward.',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        const ScratchCardScreen(),
                                  ),
                                );
                              },
                            ),

                            // =================================
                            // LUCKY SLOTS
                            // =================================

                            _GameTile(
                              icon: '🎰',
                              title:
                                  'Lucky Slots',
                              description:
                                  'Roll the slots & win points.',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        const LuckySlotScreen(),
                                  ),
                                );
                              },
                            ),
                            // =================================
// MYSTERY DEAL
// =================================

_GameTile(
  icon: '💼',
  title: 'Mystery Deal',
  description:
      'Pick a mystery box and answer correctly to win points.',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            const MysteryDealScreen(),
      ),
    );
  },
),
                            // =================================
                            // MORE GAMES
                            // =================================

                            const _GameTile(
                              icon: '🎁',
                              title:
                                  'More Games',
                              description:
                                  'New reward games coming soon.',
                              locked: true,
                            ),
                          ],
                        ),
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
  final VoidCallback? onTap;
  final bool locked;

  const _GameTile({
    required this.icon,
    required this.title,
    required this.description,
    this.onTap,
    this.locked = false,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme =
        Theme.of(context);

    final ColorScheme colorScheme =
        theme.colorScheme;

    return Card(
      elevation: locked ? 1 : 4,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap:
            locked ? null : onTap,
        borderRadius:
            BorderRadius.circular(20),
        child: Padding(
          padding:
              const EdgeInsets.all(14),
          child: Column(
            children: [
              // =============================================
              // LOCK BADGE
              // =============================================

              Align(
                alignment:
                    Alignment.topRight,
                child: locked
                    ? Container(
                        padding:
                            const EdgeInsets
                                .symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration:
                            BoxDecoration(
                          color: colorScheme
                              .surfaceContainerHighest,
                          borderRadius:
                              BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Row(
                          mainAxisSize:
                              MainAxisSize.min,
                          children: [
                            Icon(
                              Icons
                                  .lock_outline,
                              size: 13,
                              color: colorScheme
                                  .onSurfaceVariant,
                            ),

                            const SizedBox(
                              width: 3,
                            ),

                            Text(
                              'Soon',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight:
                                    FontWeight.bold,
                                color: colorScheme
                                    .onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(
                        height: 22,
                      ),
              ),

              const Spacer(),

              // =============================================
              // GAME ICON
              // =============================================

              Container(
                width: 72,
                height: 72,
                alignment:
                    Alignment.center,
                decoration:
                    BoxDecoration(
                  color: colorScheme
                      .primaryContainer,
                  borderRadius:
                      BorderRadius.circular(
                    20,
                  ),
                ),
                child: Text(
                  icon,
                  style:
                      const TextStyle(
                    fontSize: 38,
                  ),
                ),
              ),

              const SizedBox(
                height: 14,
              ),

              // =============================================
              // GAME NAME
              // =============================================

              Text(
                title,
                textAlign:
                    TextAlign.center,
                maxLines: 1,
                overflow:
                    TextOverflow.ellipsis,
                style:
                    const TextStyle(
                  fontSize: 17,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 7,
              ),

              // =============================================
              // DESCRIPTION
              // =============================================

              Text(
                description,
                textAlign:
                    TextAlign.center,
                maxLines: 2,
                overflow:
                    TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  height: 1.25,
                  color: colorScheme
                      .onSurfaceVariant,
                ),
              ),

              const Spacer(),

              // =============================================
              // PLAY / COMING SOON
              // =============================================

              SizedBox(
                width:
                    double.infinity,
                height: 38,
                child: locked
                    ? OutlinedButton.icon(
                        onPressed: null,
                        icon:
                            const Icon(
                          Icons
                              .lock_outline,
                          size: 17,
                        ),
                        label:
                            const Text(
                          'Coming Soon',
                          maxLines: 1,
                          overflow:
                              TextOverflow
                                  .ellipsis,
                          style:
                              TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      )
                    : ElevatedButton.icon(
                        onPressed:
                            onTap,
                        icon:
                            const Icon(
                          Icons
                              .play_arrow_rounded,
                          size: 20,
                        ),
                        label:
                            const Text(
                          'Play',
                          style:
                              TextStyle(
                            fontWeight:
                                FontWeight
                                    .bold,
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}