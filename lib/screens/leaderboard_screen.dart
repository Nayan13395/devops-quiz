import 'package:flutter/material.dart';
import '../services/leaderboard_service.dart';
import '../l10n/app_localizations.dart';

int totalPoints = 0;

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() =>
      _LeaderboardScreenState();
}

class _LeaderboardScreenState
    extends State<LeaderboardScreen> {

  List<Map<String, dynamic>>
      leaderboard = [];

  @override
  void initState() {
    super.initState();

    loadLeaderboard();
  }

Future<void> loadLeaderboard() async {
  leaderboard = await LeaderboardService().getLeaderboard();

  leaderboard.sort(
    (a, b) => (b["points"] as int).compareTo(a["points"] as int),
  );

  totalPoints = leaderboard.fold<int>(
    0,
    (sum, item) => sum + (item["points"] as int),
  );

  setState(() {});
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
appBar: AppBar(
  title: Text(
  "🏆 ${AppLocalizations.of(context)!.leaderboard}",
),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Center(
        child: Text(
          "⭐ $totalPoints",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ],
),

      body: leaderboard.isEmpty
          ? Center(
  child: Text(
    AppLocalizations.of(context)!.noScoresYet,
  ),
)
          : ListView.builder(
              itemCount:
                  leaderboard.length,

              itemBuilder:
                  (context, index) {
Color? cardColor;

switch (index) {
  case 0:
    cardColor = Colors.amber.shade300; // Gold
    break;
  case 1:
    cardColor = Colors.grey.shade300; // Silver
    break;
  case 2:
    cardColor = const Color(0xFFCD7F32); // Bronze
    break;
  default:
    cardColor = null;
}
Color textColor = index < 3
    ? Colors.black
    : Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;

                return Card(
                  color: cardColor,
  margin: const EdgeInsets.all(10),

                  child: ListTile(

                    leading: Text(
  index == 0
      ? "🥇"
      : index == 1
          ? "🥈"
          : index == 2
              ? "🥉"
              : "${index + 1}",
  style: const TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold,
  ),
),

                    
title: Text(
  leaderboard[index]["date"],
  style: TextStyle(
    color: textColor,
    fontWeight: FontWeight.bold,
  ),
),

trailing: Text(
  "${leaderboard[index]["points"]} ${AppLocalizations.of(context)!.pointsShort}",
  style: TextStyle(
    color: textColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  ),
),
                  ),
                );
              },
            ),
    );
  }
}