import 'package:devops_quiz/services/game_player_names.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('first name extraction trims whitespace and handles missing names', () {
    expect(GamePlayerNames.firstNameFrom('  Nayan Chaudhari  '), 'Nayan');
    expect(GamePlayerNames.firstNameFrom('Single'), 'Single');
    expect(GamePlayerNames.firstNameFrom(null), 'Player 1');
    expect(GamePlayerNames.firstNameFrom('   '), 'Player 1');
  });
}
