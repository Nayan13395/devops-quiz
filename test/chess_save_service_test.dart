import 'package:chess/chess.dart' as chess;
import 'package:devops_quiz/services/chess_save_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  Future<void> save(chess.Chess game, {bool rewarded = false}) =>
      ChessSaveService.save(
        ChessSavedGame(
          game: game,
          againstComputer: false,
          userIsWhite: true,
          botStartsNext: false,
          rewarded: rewarded,
        ),
      );

  test(
    'full history, castling rights and repetition survive restoration',
    () async {
      SharedPreferences.setMockInitialValues({});
      final game = chess.Chess();
      for (final move in [
        'Nf3',
        'Nf6',
        'Ng1',
        'Ng8',
        'Nf3',
        'Nf6',
        'Ng1',
        'Ng8',
      ]) {
        expect(game.move(move), isTrue);
      }
      expect(game.in_threefold_repetition, isTrue);
      await save(game);
      final restored = (await ChessSaveService.load())!;
      expect(restored.game.fen, game.fen);
      expect(restored.game.pgn(), game.pgn());
      expect(restored.game.in_threefold_repetition, isTrue);
      expect(restored.againstComputer, isFalse);
    },
  );

  test(
    'fresh game and completed checkmate reward status can be restored',
    () async {
      SharedPreferences.setMockInitialValues({});
      final game = chess.Chess();
      await save(game);
      expect((await ChessSaveService.load())!.game.fen, game.fen);
      for (final move in ['f3', 'e5', 'g4', 'Qh4#']) {
        expect(game.move(move), isTrue);
      }
      await save(game, rewarded: true);
      final restored = (await ChessSaveService.load())!;
      expect(restored.game.in_checkmate, isTrue);
      expect(restored.rewarded, isTrue);
    },
  );
}
