import 'package:flutter/material.dart';

import '../services/developer_celebration_service.dart';

class DeveloperBirthdayDialog extends StatelessWidget {
  const DeveloperBirthdayDialog({required this.onOpenProfile, super.key});

  final Future<void> Function() onOpenProfile;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('🎂🎉', style: TextStyle(fontSize: 44)),
              const SizedBox(height: 12),
              Text(
                'Happy Birthday, Nayan Chaudhari!',
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Today we celebrate the developer behind DevOps Quiz. '
                'Send your birthday wishes on LinkedIn!',
                textAlign: TextAlign.center,
                style: TextStyle(color: colors.onSurfaceVariant),
              ),
              const SizedBox(height: 18),
              SelectableText(
                'linkedin.com/in/${DeveloperCelebrationService.linkedInProfileId}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: colors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: onOpenProfile,
                  icon: const Icon(Icons.open_in_new),
                  label: const Text('Open LinkedIn profile'),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Close'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
