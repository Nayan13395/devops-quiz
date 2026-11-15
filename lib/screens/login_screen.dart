import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../l10n/app_localizations.dart';
import 'welcome_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  // =========================================================
  // CONTINUE AS GUEST
  // =========================================================

  Future<void> _continueAsGuest(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();

    // Remember that the user has completed
    // the initial login/guest screen.
    await prefs.setBool('initial_login_completed', true);

    await prefs.setString('login_type', 'guest');

    if (!context.mounted) {
      return;
    }

    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => const WelcomeScreen()));
  }

  // =========================================================
  // GOOGLE
  // =========================================================

  void _continueWithGoogle(BuildContext context) {
    // Google Authentication will be connected
    // in the next step.

    final l10n = AppLocalizations.of(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          l10n?.accountWelcomeGoogleSignInSoon ??
              'Google Sign-In will be available soon.',
        ),
      ),
    );
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);

    final colorScheme = theme.colorScheme;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 430),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // =========================================
                  // LOGO
                  // =========================================
                  Container(
                    width: 130,
                    height: 130,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer.withValues(
                        alpha: 0.45,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/devops_logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),

                  const SizedBox(height: 28),

                  // =========================================
                  // TITLE
                  // =========================================
                  Text(
                    l10n?.welcomeToDevOpsQuiz ?? 'Welcome to DevOps Quiz',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    l10n?.accountWelcomeLoginTagline ??
                        'Learn • Practice • Compete • Earn',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),

                  const SizedBox(height: 42),

                  // =========================================
                  // GOOGLE LOGIN
                  // =========================================
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: OutlinedButton(
                      onPressed: () {
                        _continueWithGoogle(context);
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: colorScheme.outlineVariant),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'G',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          const SizedBox(width: 14),

                          Flexible(
                            child: Text(
                              l10n?.accountWelcomeContinueWithGoogle ??
                                  'Continue with Google',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: colorScheme.onSurface,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // =========================================
                  // OR
                  // =========================================
                  Row(
                    children: [
                      const Expanded(child: Divider()),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          l10n?.accountWelcomeOr ?? 'OR',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),

                      const Expanded(child: Divider()),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // =========================================
                  // GUEST
                  // =========================================
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: FilledButton.icon(
                      onPressed: () {
                        _continueAsGuest(context);
                      },
                      icon: const Icon(Icons.person_outline_rounded),
                      label: Text(
                        l10n?.accountWelcomeContinueAsGuest ??
                            'Continue as Guest',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // =========================================
                  // INFO
                  // =========================================
                  Text(
                    l10n?.accountWelcomeStartAsGuestAndSignInLater ??
                        'You can start as a guest and sign in later.',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
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
