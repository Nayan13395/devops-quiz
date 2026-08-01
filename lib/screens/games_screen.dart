import 'package:flutter/material.dart';
import 'spin_wheel_screen.dart';
import 'scratch_card_screen.dart';
import 'lucky_slot_screen.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '🎮 Games',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
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
              color: Theme.of(context)
                  .colorScheme
                  .onSurfaceVariant,
            ),
          ),

          const SizedBox(height: 24),

          // =========================================
          // SPIN WHEEL
          // =========================================

          _GameCard(
            icon: '🎡',
            title: 'Spin Wheel',
            description:
                'Spin the wheel and win bonus points.',
            buttonText: 'Play',
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

          const SizedBox(height: 16),

          // =========================================
          // SCRATCH CARD
          // =========================================

  _GameCard(
  icon: '🎟️',
  title: 'Scratch Card',
  description:
      'Scratch the card to reveal your reward.',
  buttonText: 'Play',
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

const SizedBox(height: 16),

_GameCard(
  icon: '🎰',
  title: 'Lucky Slots',
  description:
      'Roll the slots and win bonus points.',
  buttonText: 'Play',
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
          const SizedBox(height: 16),

          // =========================================
          // FUTURE GAMES
          // =========================================

          const _GameCard(
            icon: '🎁',
            title: 'More Games',
            description:
                'More reward games are coming soon.',
            buttonText: 'Coming Soon',
            locked: true,
          ),
        ],
      ),
    );
  }
}

class _GameCard extends StatelessWidget {
  final String icon;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback? onTap;
  final bool locked;

  const _GameCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.buttonText,
    this.onTap,
    this.locked = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Row(
          children: [
            Container(
              width: 65,
              height: 65,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer,
                borderRadius:
                    BorderRadius.circular(18),
              ),
              child: Text(
                icon,
                style: const TextStyle(
                  fontSize: 34,
                ),
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context)
                          .colorScheme
                          .onSurfaceVariant,
                    ),
                  ),

                  const SizedBox(height: 12),

                  ElevatedButton.icon(
                    onPressed:
                        locked ? null : onTap,
                    icon: Icon(
                      locked
                          ? Icons.lock_outline
                          : Icons
                              .play_arrow_rounded,
                    ),
                    label: Text(
                      buttonText,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}