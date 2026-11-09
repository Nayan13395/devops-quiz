import 'package:devops_quiz/services/ludo_match_history_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('tracks played, won, and lost totals once per match', () async {
    SharedPreferences.setMockInitialValues({});

    await LudoMatchHistoryService.recordMatch(
      matchId: 'match-1',
      players: ['You', 'Bot 1'],
      winner: 'You',
    );
    await LudoMatchHistoryService.recordMatch(
      matchId: 'match-1',
      players: ['You', 'Bot 1'],
      winner: 'You',
    );
    await LudoMatchHistoryService.recordMatch(
      matchId: 'match-2',
      players: ['You', 'Player 2', 'Player 3'],
      winner: 'Player 2',
    );

    final stats = await LudoMatchHistoryService.loadStats();
    expect(
      stats
          .map((stat) => [stat.name, stat.played, stat.won, stat.lost])
          .toList(),
      [
        ['You', 2, 1, 1],
        ['Bot 1', 1, 0, 1],
        ['Player 2', 1, 1, 0],
        ['Player 3', 1, 0, 1],
      ],
    );
  });
}
