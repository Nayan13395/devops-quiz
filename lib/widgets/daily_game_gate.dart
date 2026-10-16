import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Lets a game be completed once per day, like the other reward games.
class DailyGameGate extends StatefulWidget {
  final String gameKey;
  final Widget child;

  const DailyGameGate({super.key, required this.gameKey, required this.child});

  static String _prefsKey(String gameKey) => '${gameKey}_last_played';

  static String _today() => DateTime.now().toIso8601String().substring(0, 10);

  static Future<bool> hasPlayedToday(String gameKey) async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(_prefsKey(gameKey)) == _today();
  }

  static Future<void> markPlayed(String gameKey) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(_prefsKey(gameKey), _today());
  }

  @override
  State<DailyGameGate> createState() => _DailyGameGateState();
}

class _DailyGameGateState extends State<DailyGameGate> {
  late final Future<bool> _played = DailyGameGate.hasPlayedToday(
    widget.gameKey,
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _played,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.data == false) {
          return widget.child;
        }

        final ColorScheme colors = Theme.of(context).colorScheme;

        return SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500),
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(28),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.calendar_month_rounded,
                          size: 72,
                          color: colors.primary,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Already Played Today!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Come back tomorrow for another round.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: colors.onSurfaceVariant,
                          ),
                        ),
                        const SizedBox(height: 24),
                        FilledButton.icon(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back_rounded),
                          label: const Text('Back to Games'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Shared end-of-game dialog.
Future<void> showGameResultDialog(
  BuildContext context, {
  required String icon,
  required String title,
  required String message,
}) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (dialogContext) => AlertDialog(
      scrollable: true,
      icon: Text(icon, style: const TextStyle(fontSize: 46)),
      title: Text(title, textAlign: TextAlign.center),
      content: Text(message, textAlign: TextAlign.center),
      actions: [
        FilledButton(
          onPressed: () {
            Navigator.pop(dialogContext);
            Navigator.pop(context);
          },
          child: const Text('Done'),
        ),
      ],
    ),
  );
}
