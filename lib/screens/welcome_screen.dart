import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../services/daily_login_bonus_service.dart';
import '../services/notification_service.dart';
import '../widgets/app_drawer.dart';
import '../widgets/daily_login_bonus_dialog.dart';
import 'category_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() =>
      _WelcomeScreenState();
}

class _WelcomeScreenState
    extends State<WelcomeScreen> {
  bool _bonusCheckStarted = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        // Schedule notifications.
        if (!kIsWeb) {
          await NotificationService.instance
              .scheduleDailyNotifications();
        }

        if (!mounted) return;

        // Check today's login bonus.
        await _checkDailyLoginBonus();
      },
    );
  }

  Future<void> _checkDailyLoginBonus() async {
    // Prevent accidental duplicate calls
    // during the same WelcomeScreen lifecycle.
    if (_bonusCheckStarted) {
      return;
    }

    _bonusCheckStarted = true;

    try {
      final int? bonus =
          await DailyLoginBonusService
              .claimDailyBonus();

      if (!mounted) return;

      // null means today's bonus
      // was already awarded.
      if (bonus == null) {
        return;
      }

      await showDailyLoginBonusDialog(
        context,
        bonus,
      );
    } catch (e) {
      debugPrint(
        'Daily login bonus error: $e',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final logoWidth = math.min(
      MediaQuery.sizeOf(context).width *
          0.75,
      420.0,
    );

    return Scaffold(
      drawer: const AppDrawer(),

      appBar: AppBar(
        title: const Text(
          "DevOps Quiz",
        ),
      ),

      body: Center(
        child: SingleChildScrollView(
          padding:
              const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              // ==========================
              // ANIMATED LOGO
              // ==========================

              _AnimatedDevOpsLogo(
                width: logoWidth,
              ),

              const SizedBox(
                height: 25,
              ),

              // ==========================
              // APP NAME
              // ==========================

              const Text(
                "DevOps Quiz",
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              // ==========================
              // WELCOME MESSAGE
              // ==========================

              Text(
                AppLocalizations.of(
                  context,
                )!
                    .welcomeToDevOpsQuiz,
                textAlign:
                    TextAlign.center,
                style:
                    const TextStyle(
                  fontSize: 22,
                ),
              ),

              const SizedBox(
                height: 35,
              ),

              // ==========================
              // START QUIZ
              // ==========================

              SizedBox(
                width: 220,
                height: 55,
                child:
                    ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const CategoryScreen(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons
                        .play_arrow_rounded,
                  ),
                  label: Text(
                    AppLocalizations.of(
                      context,
                    )!
                        .startQuiz,
                    style:
                        const TextStyle(
                      fontSize: 18,
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                ),
              ),
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

class _AnimatedDevOpsLogo
    extends StatefulWidget {
  const _AnimatedDevOpsLogo({
    required this.width,
  });

  final double width;

  @override
  State<_AnimatedDevOpsLogo>
      createState() =>
          _AnimatedDevOpsLogoState();
}

class _AnimatedDevOpsLogoState
    extends State<_AnimatedDevOpsLogo>
    with TickerProviderStateMixin {
  late final AnimationController
      _scaleController;

  late final AnimationController
      _flowController;

  late final Animation<double>
      _scale;

  @override
  void initState() {
    super.initState();

    _scaleController =
        AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1800,
      ),
    )..repeat(
            reverse: true,
          );

    _flowController =
        AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 7,
      ),
    )..repeat();

    _scale = Tween<double>(
      begin: 1.0,
      end: 1.04,
    ).animate(
      CurvedAnimation(
        parent:
            _scaleController,
        curve:
            Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _flowController.dispose();

    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return AnimatedBuilder(
      animation:
          Listenable.merge([
        _scaleController,
        _flowController,
      ]),
      builder: (
        context,
        child,
      ) {
        return Transform.scale(
          scale: _scale.value,
          child: SizedBox(
            width: widget.width,
            child: AspectRatio(
              aspectRatio:
                  1383 / 697,
              child: Stack(
                alignment:
                    Alignment.center,
                children: [
                  // Glow effect
                  Container(
                    decoration:
                        BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors
                              .cyan
                              .withValues(
                            alpha: 0.22,
                          ),
                          blurRadius:
                              35,
                          spreadRadius:
                              3,
                        ),
                      ],
                    ),
                  ),

                  Image.asset(
                    "assets/images/devops_logo.png",
                    fit:
                        BoxFit.contain,
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