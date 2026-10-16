import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../screens/about_screen.dart';
import '../screens/ask_ai_screen.dart';
import '../screens/certificates_screen.dart';
import '../services/rate_prompt_service.dart';
import '../services/whats_new_service.dart';
import 'new_feature_badge.dart';
import '../screens/achievement_screen.dart';
import '../screens/category_screen.dart';
import '../screens/challenge_screen.dart';
import '../screens/games_screen.dart';
import '../screens/leaderboard_screen.dart';
import '../screens/quiz_screen.dart';
import '../screens/refer_earn_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/learning_screen.dart';
import '../screens/welcome_screen.dart';
import '../services/daily_quiz_service.dart';
import '../services/user_profile_service.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  // =========================================================
  // PROFILE NAME
  // =========================================================

  String _profileName() {
    if (!UserProfileService.isGoogleUser) {
      return 'Guest';
    }

    final String name = UserProfileService.displayName.trim();

    if (name.isEmpty || name == 'Guest') {
      return UserProfileService.firstName;
    }

    return name;
  }

  // =========================================================
  // BUILD
  // =========================================================

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // =================================================
          // PROFILE
          // =================================================
          SizedBox(
            height: 120,
            child: DrawerHeader(
              margin: EdgeInsets.zero,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              child: Row(
                children: [
                  // =========================================
                  // GOOGLE PROFILE PHOTO
                  // =========================================
                  const _UserProfileAvatar(),

                  const SizedBox(width: 16),

                  // =========================================
                  // PROFILE NAME
                  // =========================================
                  Expanded(
                    child: Text(
                      _profileName(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                // =================================================
                // HOME
                // =================================================
                ListTile(
                  leading: const Icon(Icons.home_rounded),
                  title: Text(AppLocalizations.of(context)!.home),
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) => const WelcomeScreen()),
                      (route) => false,
                    );
                  },
                ),

                // =================================================
                // SWITCH CATEGORY
                // =================================================
                ListTile(
                  leading: const Icon(Icons.swap_horiz),
                  title: Text(AppLocalizations.of(context)!.switchCategory),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const CategoryScreen()),
                      (route) => false,
                    );
                  },
                ),

                // =================================================
                // DAILY QUIZ
                // =================================================
                FutureBuilder<bool>(
                  future: DailyQuizService.isCompletedToday(),
                  builder: (context, snapshot) {
                    final bool completed = snapshot.data ?? false;

                    // =============================================
                    // COMPLETED TODAY
                    // =============================================

                    if (completed) {
                      return ListTile(
                        leading: const Icon(Icons.calendar_today),
                        title: Text(AppLocalizations.of(context)!.dailyQuiz),
                        onTap: () async {
                          Navigator.pop(context);

                          await showDialog(
                            context: context,
                            builder: (dialogContext) {
                              return AlertDialog(
                                title: Text(
                                  AppLocalizations.of(
                                    context,
                                  )!.dailyQuizCompleted,
                                ),
                                content: Text(
                                  AppLocalizations.of(
                                    context,
                                  )!.dailyQuizCompletedMessage,
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(dialogContext);
                                    },
                                    child: Text(
                                      AppLocalizations.of(context)!.ok,
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      );
                    }

                    // =============================================
                    // NOT COMPLETED
                    // =============================================

                    final ColorScheme colorScheme = Theme.of(
                      context,
                    ).colorScheme;

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      child: Material(
                        color: colorScheme.primaryContainer.withValues(
                          alpha: 0.65,
                        ),
                        borderRadius: BorderRadius.circular(14),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(14),
                          onTap: () {
                            Navigator.pop(context);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const QuizScreen(
                                  category: 'DailyQuiz',
                                  setNumber: 0,
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                            child: Row(
                              children: [
                                // ===============================
                                // GIFT ICON
                                // ===============================
                                Container(
                                  width: 32,
                                  height: 32,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: colorScheme.primary,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(
                                    Icons
                                        .calendar_month_rounded, // 📅 Calendar icon
                                    color: colorScheme.onPrimary,
                                    size: 24,
                                  ),
                                ),

                                const SizedBox(width: 14),

                                // ===============================
                                // DAILY QUIZ
                                // ===============================
                                Expanded(
                                  child: Text(
                                    AppLocalizations.of(context)!.dailyQuiz,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: colorScheme.onPrimaryContainer,
                                    ),
                                  ),
                                ),

                                // ===============================
                                // NEW
                                // ===============================
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    color: colorScheme.secondaryContainer,
                                    borderRadius: BorderRadius.circular(9),
                                    border: Border.all(
                                      color: colorScheme.secondary.withValues(
                                        alpha: 0.25,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(
                                        Icons.auto_awesome_rounded,
                                        size: 13,
                                        color: colorScheme.onSecondaryContainer,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(
                                        'NEW',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w800,
                                          color:
                                              colorScheme.onSecondaryContainer,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.school_outlined, size: 28),
                  title: Text(AppLocalizations.of(context)!.learning),

                  onTap: () {
                    Navigator.pop(context); // Close drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const LearningScreen()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.auto_awesome_rounded),
                  title: const Text('Ask AI'),
                  subtitle: const Text('Technology questions'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const AskAiScreen()),
                    );
                  },
                ),
                // =================================================
                // LEADERBOARD
                // =================================================
                ListTile(
                  leading: const Icon(Icons.leaderboard),
                  title: Text(AppLocalizations.of(context)!.leaderboard),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LeaderboardScreen(),
                      ),
                    );
                  },
                ),

                // =================================================
                // CHALLENGE MODE
                // =================================================
                ListTile(
                  leading: const Icon(Icons.bolt),
                  title: Text(AppLocalizations.of(context)!.challengeMode),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ChallengeScreen(),
                      ),
                    );
                  },
                ),

                // =================================================
                // GAMES
                // =================================================
                ListTile(
                  leading: const Icon(Icons.sports_esports_outlined),
                  title: Text(AppLocalizations.of(context)!.games),
                  trailing: const NewFeatureBadge(
                    featureId: WhatsNewService.games,
                  ),
                  onTap: () {
                    WhatsNewService.markFeatureSeen(WhatsNewService.games);

                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const GamesScreen()),
                    );
                  },
                ),

                // =================================================
                // ACHIEVEMENTS
                // =================================================
                ListTile(
                  leading: const Icon(Icons.emoji_events),
                  title: Text(AppLocalizations.of(context)!.achievements),
                  trailing: const NewFeatureBadge(
                    featureId: WhatsNewService.achievements,
                  ),
                  onTap: () {
                    WhatsNewService.markFeatureSeen(
                      WhatsNewService.achievements,
                    );

                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const AchievementScreen(),
                      ),
                    );
                  },
                ),

                // =================================================
                // CERTIFICATES
                // =================================================
                ListTile(
                  leading: const Icon(Icons.workspace_premium),
                  title: Text(AppLocalizations.of(context)!.certificates),
                  trailing: const NewFeatureBadge(
                    featureId: WhatsNewService.certificates,
                  ),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const CertificatesScreen(),
                      ),
                    );
                  },
                ),

                // =================================================
                // SETTINGS
                // =================================================
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: Text(AppLocalizations.of(context)!.settings),
                  trailing: const NewFeatureBadge(
                    featureId: WhatsNewService.settings,
                  ),
                  onTap: () {
                    WhatsNewService.markFeatureSeen(WhatsNewService.settings);

                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SettingsScreen()),
                    );
                  },
                ),

                // =================================================
                // REFER AND EARN
                // =================================================
                ListTile(
                  leading: const Icon(Icons.card_giftcard),
                  title: Text(AppLocalizations.of(context)!.referAndEarn),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const ReferEarnScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),

          const Divider(height: 1),

          // Keep Rate App and About above the system nav bar on phones.
          SafeArea(
            top: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.star),
                  title: Text(AppLocalizations.of(context)!.rateApp),
                  onTap: () {
                    rateApp();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: Text(AppLocalizations.of(context)!.about),
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const AboutScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// USER PROFILE AVATAR
// ============================================================

class _UserProfileAvatar extends StatefulWidget {
  const _UserProfileAvatar();

  @override
  State<_UserProfileAvatar> createState() => _UserProfileAvatarState();
}

class _UserProfileAvatarState extends State<_UserProfileAvatar> {
  String? _photoUrl;

  late String _initial;

  bool _imageFailed = false;

  // =========================================================
  // INITIALIZE PROFILE
  // =========================================================

  @override
  void initState() {
    super.initState();

    _photoUrl = UserProfileService.photoUrl;

    final String name = UserProfileService.displayName.trim();

    if (name.isNotEmpty && name != 'Guest') {
      _initial = name[0].toUpperCase();
    } else {
      _initial = 'G';
    }
  }

  // =========================================================
  // BUILD AVATAR
  // =========================================================

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    // =======================================================
    // GUEST
    // =======================================================

    if (!UserProfileService.isGoogleUser) {
      return Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme.primaryContainer,
          border: Border.all(color: colorScheme.outlineVariant, width: 1.5),
        ),
        child: Icon(
          Icons.person_rounded,
          size: 34,
          color: colorScheme.onPrimaryContainer,
        ),
      );
    }

    // =======================================================
    // NO PHOTO / PHOTO FAILED
    // =======================================================

    if (_photoUrl == null || _photoUrl!.trim().isEmpty || _imageFailed) {
      return _buildInitialAvatar(context);
    }

    // =======================================================
    // GOOGLE PROFILE PHOTO
    // =======================================================

    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: colorScheme.outlineVariant, width: 1.5),
      ),
      child: ClipOval(
        child: Image.network(
          _photoUrl!,
          width: 60,
          height: 60,
          fit: BoxFit.cover,

          // ===============================================
          // IMPORTANT FOR FLUTTER WEB
          //
          // Allows Flutter Web to use an HTML image
          // element when appropriate instead of always
          // downloading the Google profile image through
          // Flutter's normal image pipeline.
          // ===============================================
          webHtmlElementStrategy: WebHtmlElementStrategy.fallback,

          // ===============================================
          // LOADING
          // ===============================================
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }

            return Container(
              width: 60,
              height: 60,
              alignment: Alignment.center,
              color: colorScheme.primaryContainer,
              child: SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  color: colorScheme.primary,
                ),
              ),
            );
          },

          // ===============================================
          // ERROR FALLBACK
          // ===============================================
          errorBuilder: (context, error, stackTrace) {
            debugPrint('Google profile photo unavailable: $error');

            // Don't continuously retry the image
            // during this avatar lifecycle.
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (!mounted || _imageFailed) {
                return;
              }

              setState(() {
                _imageFailed = true;
              });
            });

            return _buildInitialAvatar(context);
          },
        ),
      ),
    );
  }

  // =========================================================
  // INITIAL FALLBACK
  // =========================================================

  Widget _buildInitialAvatar(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: 60,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorScheme.primaryContainer,
        border: Border.all(color: colorScheme.outlineVariant, width: 1.5),
      ),
      child: Text(
        _initial,
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }
}

// ============================================================
// RATE APP
// ============================================================

Future<void> rateApp() async {
  await RatePromptService.markRated();
  await RatePromptService.openStore();
}
