import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../language_provider.dart';
import '../theme_provider.dart';
import '../font_provider.dart';
import '../l10n/app_localizations.dart';
import '../l10n/achievement_localizations.dart';
import '../widgets/sound_settings.dart';
import '../services/font_service.dart';
import '../services/google_auth_service.dart';
import '../services/notification_service.dart';
import '../services/user_profile_service.dart';
import '../services/user_session_service.dart';
import 'font_screen.dart';
import 'theme_screen.dart';
import 'saved_data_screen.dart';
import 'welcome_screen.dart';
import 'category_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isLoading = true;
  String? _loginType;
  String _userName = 'User';
  String _userEmail = '';
  String? _userPhoto;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    try {
      final type = await UserSessionService.getLoginType();
      _loginType = type;

      setState(() {
        _userName =
            type == 'google' &&
                UserProfileService.isGoogleUser &&
                UserProfileService.firstName.isNotEmpty
            ? UserProfileService.firstName
            : '';
        _userEmail = type == 'google' && UserProfileService.email.isNotEmpty
            ? UserProfileService.email
            : '';

        // Safely load photo URL, ensuring it's not an empty string
        _userPhoto =
            type == 'google' && UserProfileService.photoUrl?.isNotEmpty == true
            ? UserProfileService.photoUrl
            : null;

        _isLoading = false;
      });
    } catch (e) {
      debugPrint('Error loading user data: $e');
      setState(() => _isLoading = false);
    }
  }

  // =========================================================
  // CONNECT GOOGLE ACCOUNT (For Guests)
  // =========================================================

  Future<void> _connectGoogleAccount() async {
    setState(() => _isLoading = true);

    try {
      final User? user = await GoogleAuthService.signInWithGoogle();

      if (!mounted) return;

      if (user != null) {
        final localizations = AppLocalizations.of(context)!;
        setState(() {
          _loginType = 'google';

          // Prefer UserProfileService, fallback to Firebase user object
          _userName =
              UserProfileService.isGoogleUser &&
                  UserProfileService.firstName.isNotEmpty
              ? UserProfileService.firstName
              : (user.displayName?.split(' ').first ?? '');

          _userEmail = UserProfileService.email.isNotEmpty
              ? UserProfileService.email
              : (user.email ?? '');

          // Robust photo URL check (handles null and empty strings)
          _userPhoto = UserProfileService.photoUrl?.isNotEmpty == true
              ? UserProfileService.photoUrl
              : (user.photoURL?.isNotEmpty == true ? user.photoURL : null);

          _isLoading = false;
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(localizations.accountWelcomeGoogleConnected),
            backgroundColor: Colors.green,
          ),
        );
      } else {
        setState(() => _isLoading = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context)!.accountWelcomeSignInCancelled,
            ),
          ),
        );
      }
    } catch (e) {
      setState(() => _isLoading = false);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(context)!.accountWelcomeConnectFailed('$e'),
          ),
        ),
      );
    }
  }

  // =========================================================
  // SIGN OUT (For Google Users)
  // =========================================================

  Future<void> _signOut() async {
    final localizations = AppLocalizations.of(context)!;
    final bool confirm = await _showConfirmDialog(
      title: localizations.accountWelcomeSignOutTitle,
      message: localizations.accountWelcomeSignOutMessage,
      confirmText: localizations.accountWelcomeSignOut,
      isDestructive: false,
    );

    if (!confirm || !mounted) return;

    setState(() => _isLoading = true);

    try {
      await GoogleAuthService.signOut();
      await UserSessionService.clearSession();

      if (!mounted) return;

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => const WelcomeScreen()),
        (route) => false,
      );
    } catch (e) {
      setState(() => _isLoading = false);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(context)!.accountWelcomeSignOutFailed('$e'),
          ),
        ),
      );
    }
  }

  // =========================================================
  // RESET APP DATA
  // =========================================================

  Future<void> _resetApp() async {
    final localizations = AppLocalizations.of(context)!;
    final bool confirm = await _showConfirmDialog(
      title: localizations.accountWelcomeResetAppTitle,
      message: localizations.accountWelcomeResetAppMessage,
      confirmText: localizations.accountWelcomeResetEverything,
      isDestructive: true,
    );

    if (!confirm || !mounted) return;

    setState(() => _isLoading = true);

    try {
      // 1. Clear ALL local SharedPreferences data
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();

      // 2. Sign out from Firebase/Google
      await GoogleAuthService.signOut();

      // 3. Clear local session
      await UserSessionService.clearSession();

      if (!mounted) return;

      // 4. Return to Welcome Screen
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => const WelcomeScreen()),
        (route) => false,
      );
    } catch (e) {
      setState(() => _isLoading = false);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(context)!.accountWelcomeResetFailed('$e'),
          ),
        ),
      );
    }
  }

  // =========================================================
  // CONFIRMATION DIALOG HELPER
  // =========================================================

  Future<bool> _showConfirmDialog({
    required String title,
    required String message,
    required String confirmText,
    required bool isDestructive,
  }) async {
    final cancelText = AppLocalizations.of(context)!.accountWelcomeCancel;
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        icon: Icon(
          isDestructive ? Icons.warning_amber_rounded : Icons.logout_rounded,
          color: isDestructive
              ? Colors.red
              : Theme.of(context).colorScheme.primary,
          size: 40,
        ),
        title: Text(title, textAlign: TextAlign.center),
        content: Text(message, textAlign: TextAlign.center),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(cancelText),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            style: FilledButton.styleFrom(
              backgroundColor: isDestructive ? Colors.red : null,
            ),
            child: Text(confirmText),
          ),
        ],
      ),
    );

    return result ?? false;
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final bool isGuest = _loginType == 'guest';
    final bool isGoogle = _loginType == 'google';

    return Scaffold(
      appBar: AppBar(title: Text(localizations.settings)),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10),
        children: [
          // ============================================
          // ACCOUNT CARD
          // ============================================
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: colorScheme.primaryContainer,
                    // Strict check: must be Google user AND have a non-null, non-empty photo URL
                    backgroundImage:
                        (isGoogle &&
                            _userPhoto != null &&
                            _userPhoto!.isNotEmpty)
                        ? NetworkImage(_userPhoto!)
                        : null,
                    // Show default icon if Guest, or if photo is null/empty
                    child:
                        (isGuest || _userPhoto == null || _userPhoto!.isEmpty)
                        ? Icon(
                            Icons.person_rounded,
                            size: 40,
                            color: colorScheme.primary,
                          )
                        : null,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    isGuest
                        ? localizations.accountWelcomeGuest
                        : (_userName.isNotEmpty && _userName != 'User'
                              ? _userName
                              : localizations.accountWelcomeUser),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    isGuest
                        ? localizations.accountWelcomePlayingAsGuest
                        : _userEmail,
                    style: TextStyle(
                      color: colorScheme.onSurfaceVariant,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Dynamic Button based on login type
                  if (isGuest)
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: _connectGoogleAccount,
                        icon: const Text(
                          'G',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        label: Text(
                          localizations.accountWelcomeConnectGoogleAccount,
                        ),
                      ),
                    )
                  else if (isGoogle)
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: _signOut,
                        icon: const Icon(Icons.logout_rounded),
                        label: Text(localizations.accountWelcomeSignOut),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.red,
                          side: const BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // ============================================
          // PREFERENCES CARD (Language & Theme)
          // ============================================
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
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
                      subtitle: Text(
                        _getLanguageName(context, languageProvider),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                      onTap: () => _showLanguageDialog(context),
                    );
                  },
                ),
                const Divider(height: 1),
                Consumer<ThemeProvider>(
                  builder: (context, themeProvider, child) {
                    return ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 6,
                      ),
                      leading: const Icon(Icons.palette_outlined, size: 28),
                      title: Text(
                        localizations.themes,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        themeDisplayName(context, themeProvider.currentTheme),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ThemeScreen(),
                          ),
                        );
                      },
                    );
                  },
                ),
                const Divider(height: 1),
                Builder(
                  builder: (context) {
                    final fontProvider = Provider.of<FontProvider?>(context);
                    if (fontProvider == null) return const SizedBox.shrink();
                    final font = fontProvider.selectedFont;
                    return ListTile(
                      key: const ValueKey('settings-change-font'),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 6,
                      ),
                      leading: const Icon(
                        Icons.font_download_outlined,
                        size: 28,
                      ),
                      title: Text(
                        localizations.fontSettingsTitle,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        font.label(localizations),
                        style: FontService.previewStyle(context, font),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const FontScreen()),
                      ),
                    );
                  },
                ),
                const Divider(height: 1),
                const SoundSettings(),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // ============================================
          // DATA MANAGEMENT CARD
          // ============================================
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                ListTile(
                  key: const ValueKey('settings-app-tour'),
                  leading: const Icon(Icons.help_outline_rounded, size: 28),
                  title: Text(localizations.appTour),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CategoryScreen(replayTour: true),
                    ),
                  ),
                ),
                const Divider(height: 1),
                ListTile(
                  key: const ValueKey('settings-save-data'),
                  leading: const Icon(Icons.bookmarks_outlined, size: 28),
                  title: Text(localizations.saveData),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SavedDataScreen()),
                  ),
                ),
                const Divider(height: 1),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 6,
                  ),
                  leading: const Icon(
                    Icons.delete_forever_rounded,
                    color: Colors.red,
                    size: 28,
                  ),
                  title: Text(
                    localizations.accountWelcomeResetAppData,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.red,
                    ),
                  ),
                  subtitle: Text(
                    localizations.accountWelcomeResetAppDataSubtitle,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.red,
                  ),
                  onTap: _resetApp,
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // ============================================
          // FOOTER
          // ============================================
          Text(
            localizations.accountWelcomeFooter,
            textAlign: TextAlign.center,
            style: TextStyle(color: colorScheme.onSurfaceVariant, fontSize: 12),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  // ================================================
  // CURRENT LANGUAGE
  // ================================================

  String _getLanguageName(BuildContext context, LanguageProvider provider) {
    return LanguageProvider.languageFor(
      provider.locale.languageCode,
    ).nativeName;
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
          content: SizedBox(
            width: double.maxFinite,
            child: ListView(
              shrinkWrap: true,
              children: [
                for (final language in LanguageProvider.languages)
                  RadioListTile<String>(
                    value: language.code,
                    groupValue: currentLanguage,
                    title: Text(language.nativeName),
                    subtitle: LanguageProvider.isUiAvailable(language.code)
                        ? null
                        : Text(
                            localizations.accountWelcomeTranslationNotAvailable,
                          ),
                    secondary: Text(
                      language.flag,
                      style: const TextStyle(fontSize: 24),
                    ),
                    onChanged: LanguageProvider.isUiAvailable(language.code)
                        ? (value) async {
                            if (value != null) {
                              await context
                                  .read<LanguageProvider>()
                                  .changeLanguage(value);
                              await NotificationService.instance
                                  .scheduleDailyNotifications(
                                    languageCode: value,
                                  );
                              if (!dialogContext.mounted) return;
                              Navigator.pop(dialogContext);
                            }
                          }
                        : null,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
