import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../language_provider.dart';
import '../theme_provider.dart';
import '../l10n/app_localizations.dart';
import 'theme_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(localizations.settings)),

      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          // ============================================
          // LANGUAGE
          // ============================================
          Consumer<LanguageProvider>(
            builder: (context, languageProvider, child) {
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 6,
                ),

                leading: const Icon(Icons.language, size: 28),

                title: Text(
                  localizations.language,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                subtitle: Text(_getLanguageName(context, languageProvider)),

                trailing: const Icon(Icons.arrow_forward_ios, size: 18),

                onTap: () {
                  _showLanguageDialog(context);
                },
              );
            },
          ),

          const Divider(),

          // ============================================
          // THEMES
          // ============================================
          Consumer<ThemeProvider>(
            builder: (context, themeProvider, child) {
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 6,
                ),

                leading: const Icon(Icons.palette_outlined, size: 28),

                title: Text(
                  AppLocalizations.of(context)!.themes,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),

                // Shows currently selected theme.
                subtitle: Text(themeProvider.currentTheme.name),

                trailing: const Icon(Icons.arrow_forward_ios, size: 18),

                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ThemeScreen()),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  // ================================================
  // CURRENT LANGUAGE
  // ================================================

  String _getLanguageName(BuildContext context, LanguageProvider provider) {
    final localizations = AppLocalizations.of(context)!;

    switch (provider.locale.languageCode) {
      case 'hi':
        return localizations.hindi;

      case 'mr':
        return localizations.marathi;

      default:
        return localizations.english;
    }
  }

  // ================================================
  // LANGUAGE SELECTION DIALOG
  // ================================================

  void _showLanguageDialog(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    final currentLanguage = context
        .read<LanguageProvider>()
        .locale
        .languageCode;

    showDialog<void>(
      context: context,

      builder: (dialogContext) {
        return AlertDialog(
          title: Text(localizations.selectLanguage),

          contentPadding: const EdgeInsets.only(top: 12, bottom: 12),

          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ======================================
              // ENGLISH
              // ======================================
              RadioListTile<String>(
                value: 'en',
                groupValue: currentLanguage,

                title: Text(localizations.english),

                secondary: const Text('🇬🇧', style: TextStyle(fontSize: 24)),

                onChanged: (value) {
                  if (value == null) {
                    return;
                  }

                  context.read<LanguageProvider>().changeLanguage(value);

                  Navigator.pop(dialogContext);
                },
              ),

              // ======================================
              // HINDI
              // ======================================
              RadioListTile<String>(
                value: 'hi',
                groupValue: currentLanguage,

                title: Text(localizations.hindi),

                secondary: const Text('🇮🇳', style: TextStyle(fontSize: 24)),

                onChanged: (value) {
                  if (value == null) {
                    return;
                  }

                  context.read<LanguageProvider>().changeLanguage(value);

                  Navigator.pop(dialogContext);
                },
              ),

              // ======================================
              // MARATHI
              // ======================================
              RadioListTile<String>(
                value: 'mr',
                groupValue: currentLanguage,

                title: Text(localizations.marathi),

                secondary: const Text('🇮🇳', style: TextStyle(fontSize: 24)),

                onChanged: (value) {
                  if (value == null) {
                    return;
                  }

                  context.read<LanguageProvider>().changeLanguage(value);

                  Navigator.pop(dialogContext);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
