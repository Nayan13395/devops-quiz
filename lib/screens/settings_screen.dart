import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';
import '../language_provider.dart';
import 'package:devops_quiz/l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
  AppLocalizations.of(context)!.settings,
),
      ),

      body: ListView(
        children: [

          Consumer<ThemeProvider>(
            builder: (context, themeProvider, child) {

              return SwitchListTile(
                secondary: Icon(
                  themeProvider.isDark
                      ? Icons.light_mode
                      : Icons.dark_mode,
                ),

                title: Text(
  themeProvider.isDark
      ? AppLocalizations.of(context)!.lightMode
      : AppLocalizations.of(context)!.darkMode,
),

                value: themeProvider.isDark,

                onChanged: (value) {
                  themeProvider.toggleTheme();
                },
              );
            },
          ),
const Divider(),

ListTile(
  leading: const Icon(Icons.language),
  title: Text(
    AppLocalizations.of(context)!.language,
  ),
  subtitle: Consumer<LanguageProvider>(
    builder: (context, languageProvider, child) {
      switch (languageProvider.locale.languageCode) {
        case 'hi':
          return Text(AppLocalizations.of(context)!.hindi);
        case 'mr':
          return Text(AppLocalizations.of(context)!.marathi);
        default:
          return Text(AppLocalizations.of(context)!.english);
      }
    },
  ),
  trailing: const Icon(Icons.arrow_forward_ios, size: 18),
  onTap: () {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(
          AppLocalizations.of(context)!.selectLanguage,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(
                AppLocalizations.of(context)!.english,
              ),
              onTap: () {
                context.read<LanguageProvider>().changeLanguage('en');
                Navigator.pop(dialogContext);
              },
            ),
            ListTile(
              title: Text(
                AppLocalizations.of(context)!.hindi,
              ),
              onTap: () {
                context.read<LanguageProvider>().changeLanguage('hi');
                Navigator.pop(dialogContext);
              },
            ),
            ListTile(
              title: Text(
                AppLocalizations.of(context)!.marathi,
              ),
              onTap: () {
                context.read<LanguageProvider>().changeLanguage('mr');
                Navigator.pop(dialogContext);
              },
            ),
          ],
        ),
      ),
    );
  },
),
        ],
      ),
    );
  }
}