import 'dart:math' as math;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../services/daily_login_bonus_service.dart';
import '../services/google_auth_service.dart';
import '../services/notification_service.dart';
import '../services/user_profile_service.dart';
import '../services/user_session_service.dart';
import '../widgets/app_drawer.dart';
import '../widgets/daily_login_bonus_dialog.dart';
import '../widgets/notification_button.dart';
import 'category_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool _bonusCheckStarted = false;

  bool _sessionLoading = true;

  bool _hasSelectedLoginMethod = false;

  bool _googleSignInLoading = false;

  String? _loginType;

  // =========================================================
  // INIT
  // =========================================================

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _loadUserSession();

      if (!mounted) return;

      if (!kIsWeb) {
        try {
          await NotificationService.instance.scheduleDailyNotifications();
        } catch (e) {
          debugPrint('Notification scheduling error: $e');
        }
      }

      if (!mounted) return;

      if (_hasSelectedLoginMethod) {
        await _checkDailyLoginBonus();
      }
    });
  }

  // =========================================================
  // LOAD USER SESSION
  // =========================================================

  Future<void> _loadUserSession() async {
    try {
      final String? loginType = await UserSessionService.getLoginType();

      if (!mounted) {
        return;
      }

      setState(() {
        _loginType = loginType;

        _hasSelectedLoginMethod = loginType != null;

        _sessionLoading = false;
      });
    } catch (e, stackTrace) {
      debugPrint('User session loading error: $e');

      debugPrintStack(stackTrace: stackTrace);

      if (!mounted) {
        return;
      }

      setState(() {
        _loginType = null;
        _hasSelectedLoginMethod = false;
        _sessionLoading = false;
      });
    }
  }

  // =========================================================
  // DAILY LOGIN BONUS
  // =========================================================

  Future<void> _checkDailyLoginBonus() async {
    if (_bonusCheckStarted) {
      return;
    }

    _bonusCheckStarted = true;

    try {
      final int? bonus = await DailyLoginBonusService.claimDailyBonus();

      if (!mounted) {
        return;
      }

      if (bonus == null) {
        return;
      }

      await showDailyLoginBonusDialog(context, bonus);
    } catch (e, stackTrace) {
      debugPrint('Daily login bonus error: $e');

      debugPrintStack(stackTrace: stackTrace);
    }
  }

  // =========================================================
  // GOOGLE SIGN IN
  // =========================================================

  Future<void> _continueWithGoogle() async {
    if (_googleSignInLoading) {
      return;
    }

    setState(() {
      _googleSignInLoading = true;
    });

    try {
      debugPrint('');
      debugPrint('==============================================');
      debugPrint('WELCOME SCREEN: START GOOGLE SIGN-IN');
      debugPrint('==============================================');

      final User? user = await GoogleAuthService.signInWithGoogle();

      if (!mounted) {
        return;
      }

      if (user == null) {
        debugPrint('WELCOME SCREEN: GoogleAuthService returned NULL user.');

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Google Sign-In completed, but no user account was returned.',
            ),
            duration: Duration(seconds: 8),
          ),
        );

        return;
      }

      // =====================================================
      // GOOGLE/FIREBASE LOGIN SUCCESSFUL
      // =====================================================

      debugPrint('');
      debugPrint('==============================================');
      debugPrint('WELCOME SCREEN: GOOGLE LOGIN SUCCESSFUL');
      debugPrint('UID: ${user.uid}');
      debugPrint('Email: ${user.email}');
      debugPrint('Display name: ${user.displayName}');
      debugPrint(
        'Providers: '
        '${user.providerData.map((provider) => provider.providerId).join(", ")}',
      );
      debugPrint('==============================================');

      setState(() {
        _loginType = 'google';
        _hasSelectedLoginMethod = true;
      });

      // =====================================================
      // DAILY BONUS
      //
      // IMPORTANT:
      // Failure here must NOT make Google Sign-In look failed.
      // =====================================================

      try {
        await _checkDailyLoginBonus();
      } catch (e, stackTrace) {
        debugPrint('Daily bonus failed after successful Google login: $e');

        debugPrintStack(stackTrace: stackTrace);
      }

      if (!mounted) {
        return;
      }

      // =====================================================
      // USER NAME
      // =====================================================

      String firstName = UserProfileService.firstName.trim();

      if (firstName.isEmpty) {
        final String displayName = user.displayName?.trim() ?? '';

        if (displayName.isNotEmpty) {
          firstName = displayName.split(' ').first;
        } else {
          firstName = 'User';
        }
      }

      // =====================================================
      // WELCOME MESSAGE
      // =====================================================

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Welcome, $firstName! 👋')));

      // =====================================================
      // OPEN CATEGORY SCREEN
      // =====================================================

      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const CategoryScreen()),
      );
    }
    // =======================================================
    // FIREBASE AUTHENTICATION ERROR
    // =======================================================
    on FirebaseAuthException catch (e, stackTrace) {
      debugPrint('');
      debugPrint('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
      debugPrint('WELCOME SCREEN: FIREBASE AUTH ERROR');
      debugPrint('ERROR TYPE: ${e.runtimeType}');
      debugPrint('ERROR CODE: ${e.code}');
      debugPrint('ERROR MESSAGE: ${e.message}');
      debugPrint('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');

      debugPrintStack(stackTrace: stackTrace);

      if (!mounted) {
        return;
      }

      String message;

      switch (e.code) {
        case 'account-exists-with-different-credential':
          message =
              'This email already has an account using another sign-in method.';
          break;

        case 'credential-already-in-use':
          message = 'This Google account is already linked to another account.';
          break;

        case 'invalid-credential':
          message =
              'The Google authentication credential is invalid or expired.';
          break;

        case 'user-disabled':
          message = 'This account has been disabled.';
          break;

        case 'operation-not-allowed':
          message = 'Google Sign-In is currently not enabled.';
          break;

        case 'network-request-failed':
          message =
              'Network error. Please check your internet connection and try again.';
          break;

        case 'too-many-requests':
          message = 'Too many sign-in attempts. Please wait and try again.';
          break;

        default:
          message =
              'Google Sign-In failed.\n\n'
              'Code: ${e.code}\n'
              '${e.message ?? "No additional error information."}';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message), duration: const Duration(seconds: 12)),
      );
    }
    // =======================================================
    // OTHER GOOGLE SIGN-IN ERROR
    // =======================================================
    catch (e, stackTrace) {
      debugPrint('');
      debugPrint('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
      debugPrint('WELCOME SCREEN: GOOGLE SIGN-IN FAILED');
      debugPrint('ERROR TYPE: ${e.runtimeType}');
      debugPrint('ERROR: $e');
      debugPrint('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');

      debugPrintStack(stackTrace: stackTrace);

      if (!mounted) {
        return;
      }

      // Show the REAL error temporarily.
      //
      // Once we identify and fix the problem,
      // this can be changed back to a friendly message.

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Google Sign-In error:\n$e'),
          duration: const Duration(seconds: 12),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _googleSignInLoading = false;
        });
      }
    }
  }

  // =========================================================
  // CONTINUE AS GUEST
  // =========================================================

  Future<void> _continueAsGuest() async {
    try {
      await UserSessionService.continueAsGuest();

      if (!mounted) {
        return;
      }

      setState(() {
        _loginType = 'guest';
        _hasSelectedLoginMethod = true;
      });

      await _checkDailyLoginBonus();

      if (!mounted) {
        return;
      }

      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const CategoryScreen()),
      );
    } catch (e, stackTrace) {
      debugPrint('Continue as guest error: $e');

      debugPrintStack(stackTrace: stackTrace);

      if (!mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Unable to continue as guest. Please try again.'),
        ),
      );
    }
  }

  // =========================================================
  // START QUIZ
  // =========================================================

  void _startQuiz() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const CategoryScreen()),
    );
  }

  // =========================================================
  // PERSONALIZED GREETING
  // =========================================================

  Widget _buildGreeting(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    // =======================================================
    // GOOGLE USER
    // =======================================================

    if (_loginType == 'google' && UserProfileService.isGoogleUser) {
      final String firstName = UserProfileService.firstName;

      return Column(
        children: [
          Text(
            'Hi $firstName 👋',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            AppLocalizations.of(context)!.welcomeToDevOpsQuiz,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: colorScheme.onSurfaceVariant),
          ),
        ],
      );
    }

    // =======================================================
    // GUEST / FIRST LAUNCH
    // =======================================================

    return Column(
      children: [
        if (_loginType == 'guest')
          Text(
            'Welcome 👋',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),

        if (_loginType == 'guest') const SizedBox(height: 8),

        Text(
          AppLocalizations.of(context)!.welcomeToDevOpsQuiz,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: colorScheme.onSurfaceVariant),
        ),
      ],
    );
  }

  // =========================================================
  // LOGIN OPTIONS
  // =========================================================

  Widget _buildLoginOptions(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 380),
      child: Column(
        children: [
          // =================================================
          // GOOGLE
          // =================================================
          SizedBox(
            width: double.infinity,
            height: 56,
            child: OutlinedButton(
              onPressed: _googleSignInLoading ? null : _continueWithGoogle,
              style: OutlinedButton.styleFrom(
                backgroundColor: colorScheme.surface,
                foregroundColor: colorScheme.onSurface,
                side: BorderSide(color: colorScheme.outlineVariant),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: _googleSignInLoading
                  ? const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 22,
                          height: 22,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                        SizedBox(width: 14),
                        Text(
                          'Signing in...',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: const [
                              BoxShadow(color: Colors.black12, blurRadius: 3),
                            ],
                          ),
                          child: const Text(
                            'G',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(width: 14),

                        const Text(
                          'Continue with Google',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
            ),
          ),

          const SizedBox(height: 20),

          // =================================================
          // OR
          // =================================================
          Row(
            children: [
              Expanded(child: Divider(color: colorScheme.outlineVariant)),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'OR',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),

              Expanded(child: Divider(color: colorScheme.outlineVariant)),
            ],
          ),

          const SizedBox(height: 20),

          // =================================================
          // GUEST
          // =================================================
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton.icon(
              onPressed: _googleSignInLoading ? null : _continueAsGuest,
              icon: const Icon(Icons.person_outline_rounded),
              label: const Text(
                'Continue as Guest',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ),

          const SizedBox(height: 14),

          Text(
            'You can sign in later from your profile.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: colorScheme.onSurfaceVariant),
          ),
        ],
      ),
    );
  }

  // =========================================================
  // RETURNING USER
  // =========================================================

  Widget _buildStartQuizButton(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    final bool googleUser =
        _loginType == 'google' && UserProfileService.isGoogleUser;

    return Column(
      children: [
        // ===================================================
        // GOOGLE PROFILE PHOTO
        // ===================================================
        if (googleUser && UserProfileService.photoUrl != null) ...[
          CircleAvatar(
            radius: 32,
            backgroundColor: colorScheme.surfaceContainerHighest,
            backgroundImage: NetworkImage(UserProfileService.photoUrl!),
          ),

          const SizedBox(height: 16),
        ],

        // ===================================================
        // START QUIZ
        // ===================================================
        SizedBox(
          width: 220,
          height: 55,
          child: ElevatedButton.icon(
            onPressed: _startQuiz,
            icon: const Icon(Icons.play_arrow_rounded),
            label: Text(
              AppLocalizations.of(context)!.startQuiz,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        // ===================================================
        // GUEST STATUS
        // ===================================================
        if (_loginType == 'guest') ...[
          const SizedBox(height: 14),

          Text(
            'Playing as Guest',
            style: TextStyle(fontSize: 12, color: colorScheme.onSurfaceVariant),
          ),
        ],

        // ===================================================
        // GOOGLE EMAIL
        // ===================================================
        if (googleUser && UserProfileService.email.isNotEmpty) ...[
          const SizedBox(height: 12),

          Text(
            UserProfileService.email,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: colorScheme.onSurfaceVariant),
          ),
        ],
      ],
    );
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(BuildContext context) {
    final logoWidth = math.min(MediaQuery.sizeOf(context).width * 0.75, 420.0);

    return Scaffold(
      drawer: const AppDrawer(),

      appBar: AppBar(
        title: const Text('DevOps Quiz'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: Center(child: NotificationButton()),
          ),
        ],
      ),

      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // =============================================
              // LOGO
              // =============================================
              _AnimatedDevOpsLogo(width: logoWidth),

              const SizedBox(height: 25),

              // =============================================
              // APP NAME
              // =============================================
              const Text(
                'DevOps Quiz',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              // =============================================
              // GREETING
              // =============================================
              _buildGreeting(context),

              const SizedBox(height: 35),

              // =============================================
              // SESSION
              // =============================================
              if (_sessionLoading)
                const SizedBox(
                  height: 56,
                  child: Center(child: CircularProgressIndicator()),
                )
              else if (!_hasSelectedLoginMethod)
                _buildLoginOptions(context)
              else
                _buildStartQuizButton(context),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// ANIMATED DEVOPS LOGO
// ============================================================

class _AnimatedDevOpsLogo extends StatefulWidget {
  const _AnimatedDevOpsLogo({required this.width});

  final double width;

  @override
  State<_AnimatedDevOpsLogo> createState() => _AnimatedDevOpsLogoState();
}

class _AnimatedDevOpsLogoState extends State<_AnimatedDevOpsLogo>
    with TickerProviderStateMixin {
  late final AnimationController _scaleController;

  late final AnimationController _flowController;

  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();

    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    )..repeat(reverse: true);

    _flowController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 7),
    )..repeat();

    _scale = Tween<double>(begin: 1.0, end: 1.04).animate(
      CurvedAnimation(parent: _scaleController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _flowController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([_scaleController, _flowController]),
      builder: (context, child) {
        return Transform.scale(
          scale: _scale.value,
          child: SizedBox(
            width: widget.width,
            child: AspectRatio(
              aspectRatio: 1383 / 697,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.cyan.withValues(alpha: 0.22),
                          blurRadius: 35,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                  ),

                  Image.asset(
                    'assets/images/devops_logo.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
