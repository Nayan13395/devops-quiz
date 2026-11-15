import 'package:flutter/widgets.dart';

import 'app_localizations.dart';
import '../services/game_player_names.dart';

// Game widgets are also hosted independently of the app's localization delegate.
AppLocalizations gameL10n(BuildContext context) =>
    AppLocalizations.of(context) ??
    lookupAppLocalizations(Localizations.localeOf(context));

String gamePlayerName(BuildContext context, String name) {
  if (name == GamePlayerNames.signedInFirstName) return name;
  final l10n = gameL10n(context);
  if (name == 'You') return l10n.gameUiYou;
  if (name == 'Bot') return l10n.gameUiBot;
  final numbered = RegExp(r'^(Player|Bot) (\d+)$').firstMatch(name);
  if (numbered == null) return name;
  return numbered[1] == 'Player'
      ? l10n.gameUiPlayerName(numbered[2]!)
      : l10n.gameUiBotName(numbered[2]!);
}

String rewardGameName(BuildContext context, String name) => switch (name) {
  'Spin Wheel' => gameL10n(context).gameUiSpinWheel,
  'Scratch Card' => gameL10n(context).gameUiScratchCard,
  'Lucky Slots' => gameL10n(context).gameUiLuckySlots,
  'Mystery Deal' => gameL10n(context).gameUiMysteryDeal,
  _ => name,
};

String chessPieceName(BuildContext context, String type) => switch (type) {
  'k' => gameL10n(context).gameUiChessKing,
  'q' => gameL10n(context).gameUiChessQueen,
  'r' => gameL10n(context).gameUiChessRook,
  'b' => gameL10n(context).gameUiChessBishop,
  'n' => gameL10n(context).gameUiChessKnight,
  'p' => gameL10n(context).gameUiChessPawn,
  _ => throw ArgumentError.value(type, 'type', 'Unknown chess piece'),
};
