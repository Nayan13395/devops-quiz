import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../font_provider.dart';
import '../l10n/app_localizations.dart';
import '../services/font_service.dart';

class FontScreen extends StatelessWidget {
  const FontScreen({super.key});

  static const String _latinSample = 'Aa Bb Cc Qq 0123';

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final provider = context.watch<FontProvider>();
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.fontChangeFont)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            margin: const EdgeInsets.only(bottom: 12),
            elevation: 0,
            color: colorScheme.secondaryContainer,
            child: ListTile(
              leading: Icon(
                Icons.translate_rounded,
                color: colorScheme.onSecondaryContainer,
              ),
              title: Text(
                l10n.fontLatinOnlyNote,
                style: TextStyle(color: colorScheme.onSecondaryContainer),
              ),
            ),
          ),
          for (final font in AppFont.values)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: _FontOptionCard(
                font: font,
                selected: provider.selectedFont == font,
                latinSample: _latinSample,
                onTap: () => provider.setFont(font),
              ),
            ),
        ],
      ),
    );
  }
}

class _FontOptionCard extends StatelessWidget {
  const _FontOptionCard({
    required this.font,
    required this.selected,
    required this.latinSample,
    required this.onTap,
  });

  final AppFont font;
  final bool selected;
  final String latinSample;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    TextStyle style(TextStyle base) =>
        FontService.previewStyle(context, font, base: base);

    return AnimatedContainer(
      key: ValueKey('font-option-${font.name}'),
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: selected ? colorScheme.primary : colorScheme.outlineVariant,
          width: selected ? 2.5 : 1,
        ),
        boxShadow: [
          if (selected)
            BoxShadow(
              color: colorScheme.primary.withValues(alpha: 0.20),
              blurRadius: 12,
              spreadRadius: 1,
            ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Semantics(
            selected: selected,
            button: true,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    width: 58,
                    height: 58,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'Aa',
                      style: style(
                        TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          font.label(l10n),
                          style: style(
                            const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          font.description(l10n),
                          style: style(
                            TextStyle(
                              fontSize: 13,
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          latinSample,
                          textDirection: TextDirection.ltr,
                          style: style(
                            TextStyle(
                              fontSize: 15,
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  if (selected)
                    Icon(
                      Icons.check_circle,
                      color: colorScheme.primary,
                      size: 30,
                      semanticLabel: l10n.fontSelected,
                    )
                  else
                    Icon(
                      Icons.radio_button_unchecked,
                      color: colorScheme.outline,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
