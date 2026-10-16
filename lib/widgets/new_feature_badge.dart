import 'package:flutter/material.dart';

import '../services/whats_new_service.dart';

/// Small "NEW" chip shown until the user opens the highlighted feature.
class NewFeatureBadge extends StatefulWidget {
  final String featureId;

  const NewFeatureBadge({super.key, required this.featureId});

  @override
  State<NewFeatureBadge> createState() => _NewFeatureBadgeState();
}

class _NewFeatureBadgeState extends State<NewFeatureBadge> {
  late final Future<bool> _isNew = WhatsNewService.isFeatureNew(
    widget.featureId,
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _isNew,
      builder: (context, snapshot) {
        if (snapshot.data != true) {
          return const SizedBox.shrink();
        }

        final ColorScheme colors = Theme.of(context).colorScheme;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'NEW',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: colors.onPrimary,
            ),
          ),
        );
      },
    );
  }
}
