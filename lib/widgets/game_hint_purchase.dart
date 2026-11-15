import 'package:flutter/material.dart';

import '../l10n/game_localizations.dart';
import '../services/game_rewards.dart';
import '../services/point_service.dart';

Future<bool> purchaseGameHint(BuildContext context) async {
  try {
    final purchased = await PointService.spendPoints(GameRewards.hintCost);
    if (!purchased && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(gameL10n(context).gameUiHintInsufficientPoints)),
      );
    }
    return purchased;
  } catch (error, stack) {
    debugPrint('Hint purchase failed: $error\n$stack');
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(gameL10n(context).gameUiHintPurchaseFailed)),
      );
    }
    return false;
  }
}
