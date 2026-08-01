import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../l10n/app_localizations.dart';
import '../models/question.dart';
import '../services/quiz_pdf_service.dart';
import '../widgets/app_drawer.dart';
import 'category_screen.dart';
import 'quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;
  final int points;
  final String category;
  final int setNumber;

  final List<Question> questions;
  final Map<int, String> userAnswers;
  final Map<int, List<String>> displayedOptions;
  final Set<int> timedOutQuestions;

  const ResultScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
    required this.points,
    required this.category,
    required this.setNumber,
    required this.questions,
    required this.userAnswers,
    required this.displayedOptions,
    required this.timedOutQuestions,
  });

  String getExpertTitle() {
    switch (category) {
      case 'Linux':
        return '🐧 Linux expert';
      case 'Docker':
        return '🐳 Docker expert';
      case 'Kubernetes':
        return '☸️ Kubernetes expert';
      case 'Networking':
        return '🌐 Networking expert';
      case 'Git':
        return '🌿 Git expert';
      case 'Jenkins':
        return '⚙️ Jenkins expert';
      case 'AWS':
        return '☁️ AWS expert';
      case 'Terraform':
        return '🏗️ Terraform expert';
      case 'Ansible':
        return '🤖 Ansible expert';
      default:
        return '🚀 DevOps expert';
    }
  }

  String _resultEmoji() {
    final percentage =
        totalQuestions == 0
            ? 0
            : (score / totalQuestions) * 100;

    if (percentage >= 80) {
      return '🏆';
    }

    if (percentage >= 60) {
      return '🎉';
    }

    if (percentage >= 40) {
      return '👏';
    }

    if (percentage >= 20) {
      return '💪';
    }

    return '📚';
  }

  String _resultTitle(
    BuildContext context,
  ) {
    final percentage =
        totalQuestions == 0
            ? 0
            : (score / totalQuestions) * 100;

    if (percentage >= 80) {
      return AppLocalizations.of(context)!
          .outstanding;
    }

    if (percentage >= 60) {
      return AppLocalizations.of(context)!
          .greatJob;
    }

    if (percentage >= 40) {
      return AppLocalizations.of(context)!
          .goodEffort;
    }

    if (percentage >= 20) {
      return AppLocalizations.of(context)!
          .keepPracticing;
    }

    return AppLocalizations.of(context)!
        .dontGiveUp;
  }

  String _resultMessage(
    BuildContext context,
  ) {
    final percentage =
        totalQuestions == 0
            ? 0
            : (score / totalQuestions) * 100;

    if (percentage >= 80) {
      return AppLocalizations.of(context)!
          .excellentPerformance(
        getExpertTitle(),
      );
    }

    if (percentage >= 60) {
      return AppLocalizations.of(context)!
          .greatProgress;
    }

    if (percentage >= 40) {
      return AppLocalizations.of(context)!
          .practiceMore;
    }

    if (percentage >= 20) {
      return AppLocalizations.of(context)!
          .keepLearning;
    }

    return AppLocalizations.of(context)!
        .everyExpertStarted;
  }

  Future<void> _downloadPdf(
    BuildContext context,
  ) async {
    try {
      await QuizPdfService.generateQuizReport(
        questions: questions,
        userAnswers: userAnswers,
        displayedOptions: displayedOptions,
        timedOutQuestions:
            timedOutQuestions,
        score: score,
        points: points,
        category: category,
        setNumber: setNumber,
      );
    } catch (e) {
      if (!context.mounted) return;

      ScaffoldMessenger.of(context)
          .showSnackBar(
        SnackBar(
          content: Text(
            'Unable to generate PDF: $e',
          ),
        ),
      );
    }
  }

  void _restartQuiz(
    BuildContext context,
  ) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => QuizScreen(
          category: category,
          setNumber: setNumber,
        ),
      ),
    );
  }

  void _backToCategories(
    BuildContext context,
  ) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (_) =>
            const CategoryScreen(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double percentage =
        totalQuestions == 0
            ? 0
            : (score / totalQuestions) * 100;

    final int earnedPoints =
        score * 10;

    int bonus = 0;

    if (category == 'DailyQuiz') {
      bonus = score == totalQuestions
          ? 500
          : earnedPoints;
    }

    final colorScheme =
        Theme.of(context).colorScheme;

    return Scaffold(
      drawer: const AppDrawer(),

      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!
              .quizResult,
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding:
              const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 20,
          ),
          child: Center(
            child: ConstrainedBox(
              constraints:
                  const BoxConstraints(
                maxWidth: 620,
              ),
              child: Column(
                children: [
                  // ==========================
                  // ANIMATED RESULT HEADER
                  // ==========================

                  TweenAnimationBuilder<double>(
                    duration: const Duration(
                      milliseconds: 700,
                    ),
                    tween: Tween(
                      begin: 0,
                      end: 1,
                    ),
                    curve: Curves.easeOutBack,
                    builder: (
                      context,
                      value,
                      child,
                    ) {
                      return Transform.scale(
                        scale: value,
                        child: Opacity(
                          opacity:
                              value.clamp(
                            0.0,
                            1.0,
                          ),
                          child: child,
                        ),
                      );
                    },
                    child: Text(
                      _resultEmoji(),
                      style:
                          const TextStyle(
                        fontSize: 64,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 8,
                  ),

                  TweenAnimationBuilder<double>(
                    duration: const Duration(
                      milliseconds: 650,
                    ),
                    tween: Tween(
                      begin: 0,
                      end: 1,
                    ),
                    builder: (
                      context,
                      value,
                      child,
                    ) {
                      return Opacity(
                        opacity: value,
                        child: Transform.translate(
                          offset: Offset(
                            0,
                            20 *
                                (1 - value),
                          ),
                          child: child,
                        ),
                      );
                    },
                    child: Text(
                      _resultTitle(
                        context,
                      ),
                      textAlign:
                          TextAlign.center,
                      style:
                          const TextStyle(
                        fontSize: 30,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 8,
                  ),

                  Text(
                    _resultMessage(
                      context,
                    ),
                    textAlign:
                        TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(
                        context,
                      )
                          .colorScheme
                          .onSurfaceVariant,
                    ),
                  ),

                  const SizedBox(
                    height: 26,
                  ),

                  // ==========================
                  // RESULT CARD
                  // ==========================

                  TweenAnimationBuilder<double>(
                    duration: const Duration(
                      milliseconds: 800,
                    ),
                    tween: Tween(
                      begin: 0,
                      end: 1,
                    ),
                    curve:
                        Curves.easeOutCubic,
                    builder: (
                      context,
                      value,
                      child,
                    ) {
                      return Opacity(
                        opacity: value,
                        child:
                            Transform.translate(
                          offset: Offset(
                            0,
                            30 *
                                (1 - value),
                          ),
                          child: child,
                        ),
                      );
                    },
                    child: Container(
                      width:
                          double.infinity,
                      padding:
                          const EdgeInsets
                              .all(24),
                      decoration:
                          BoxDecoration(
                        color:
                            Theme.of(context)
                                .cardColor,
                        borderRadius:
                            BorderRadius
                                .circular(
                          24,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color:
                                Colors.black12,
                            blurRadius: 16,
                            offset:
                                Offset(
                              0,
                              6,
                            ),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          // Percentage

                          TweenAnimationBuilder<
                              double>(
                            duration:
                                const Duration(
                              milliseconds:
                                  1200,
                            ),
                            tween: Tween(
                              begin: 0,
                              end:
                                  percentage,
                            ),
                            curve:
                                Curves.easeOut,
                            builder: (
                              context,
                              value,
                              child,
                            ) {
                              return Text(
                                '${value.toStringAsFixed(0)}%',
                                style:
                                    TextStyle(
                                  fontSize:
                                      44,
                                  fontWeight:
                                      FontWeight
                                          .bold,
                                  color:
                                      colorScheme
                                          .primary,
                                ),
                              );
                            },
                          ),

                          const SizedBox(
                            height: 6,
                          ),

                          Text(
                            AppLocalizations.of(
                              context,
                            )!
                                .percentage,
                            style:
                                TextStyle(
                              fontSize: 14,
                              color: Theme.of(
                                context,
                              )
                                  .colorScheme
                                  .onSurfaceVariant,
                            ),
                          ),

                          const SizedBox(
                            height: 22,
                          ),

                          const Divider(),

                          const SizedBox(
                            height: 18,
                          ),

                          Row(
                            children: [
                              Expanded(
                                child:
                                    _StatItem(
                                  icon:
                                      Icons
                                          .quiz_outlined,
                                  title:
                                      AppLocalizations.of(
                                    context,
                                  )!
                                          .score,
                                  value:
                                      '$score / $totalQuestions',
                                ),
                              ),

                              Container(
                                width: 1,
                                height: 55,
                                color: Theme.of(
                                  context,
                                )
                                    .dividerColor,
                              ),

                              Expanded(
                                child:
                                    _StatItem(
                                  icon:
                                      Icons
                                          .workspace_premium_outlined,
                                  title:
                                      AppLocalizations.of(
                                    context,
                                  )!
                                          .points,
                                  value:
                                      '$earnedPoints',
                                ),
                              ),
                            ],
                          ),

                          if (category ==
                              'DailyQuiz') ...[
                            const SizedBox(
                              height: 20,
                            ),

                            Container(
                              padding:
                                  const EdgeInsets
                                      .symmetric(
                                horizontal:
                                    18,
                                vertical: 10,
                              ),
                              decoration:
                                  BoxDecoration(
                                color:
                                    colorScheme
                                        .primaryContainer,
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                  30,
                                ),
                              ),
                              child: Text(
                                score ==
                                        totalQuestions
                                    ? '🎖 ${AppLocalizations.of(context)!.perfectScoreBonus} +500'
                                    : '🎖 ${AppLocalizations.of(context)!.bonus} +$bonus',
                                textAlign:
                                    TextAlign
                                        .center,
                                style:
                                    const TextStyle(
                                  fontWeight:
                                      FontWeight
                                          .bold,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),

                  // ==========================
                  // DAILY QUIZ MESSAGE
                  // ==========================

                  if (category ==
                      'DailyQuiz') ...[
                    const SizedBox(
                      height: 18,
                    ),

                    Container(
                      width:
                          double.infinity,
                      padding:
                          const EdgeInsets
                              .symmetric(
                        horizontal: 20,
                        vertical: 16,
                      ),
                      decoration:
                          BoxDecoration(
                        color: colorScheme
                            .secondaryContainer,
                        borderRadius:
                            BorderRadius
                                .circular(
                          18,
                        ),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .center,
                            children: [
                              Icon(
                                Icons
                                    .check_circle_outline,
                                size: 22,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Flexible(
                                child: Text(
                                  'Daily Quiz Completed!',
                                  textAlign:
                                      TextAlign
                                          .center,
                                  style:
                                      TextStyle(
                                    fontSize:
                                        17,
                                    fontWeight:
                                        FontWeight
                                            .bold,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 6,
                          ),

                          Text(
                            'Come back tomorrow for a new challenge!',
                            textAlign:
                                TextAlign
                                    .center,
                          ),
                        ],
                      ),
                    ),
                  ],

                  const SizedBox(
                    height: 24,
                  ),

                  // ==========================
                  // SHARE + PDF
                  // ==========================

                  LayoutBuilder(
                    builder: (
                      context,
                      constraints,
                    ) {
                      final bool narrow =
                          constraints
                                  .maxWidth <
                              430;

                      final shareButton =
                          _ActionButton(
                        icon:
                            Icons.share,
                        text:
                            AppLocalizations.of(
                          context,
                        )!
                                .shareScore,
                        onPressed: () {
                          final int
                              sharePoints =
                              category ==
                                      'DailyQuiz'
                                  ? score *
                                      10
                                  : points;

                          Share.share(
                            '${AppLocalizations.of(context)!.shareMessage(
                              score,
                              totalQuestions,
                              sharePoints,
                              bonus,
                              percentage
                                  .toStringAsFixed(
                                0,
                              ),
                            )}\n'
                            'https://play.google.com/store/apps/details?id=com.nayan.devops',
                          );
                        },
                      );

                      final pdfButton =
                          _ActionButton(
                        icon: Icons
                            .picture_as_pdf_outlined,
                        text:
                            'PDF Report',
                        onPressed:
                            () async {
                          await _downloadPdf(
                            context,
                          );
                        },
                      );

                      if (narrow) {
                        return Column(
                          children: [
                            shareButton,
                            const SizedBox(
                              height: 12,
                            ),
                            pdfButton,
                          ],
                        );
                      }

                      return Row(
                        children: [
                          Expanded(
                            child:
                                shareButton,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child:
                                pdfButton,
                          ),
                        ],
                      );
                    },
                  ),

                  const SizedBox(
                    height: 14,
                  ),

                  // ==========================
                  // RESTART QUIZ
                  // ==========================

                  SizedBox(
                    width:
                        double.infinity,
                    height: 52,
                    child:
                        OutlinedButton.icon(
                      onPressed: () {
                        _restartQuiz(
                          context,
                        );
                      },
                      icon: const Icon(
                        Icons.refresh,
                      ),
                      label: Text(
                        AppLocalizations.of(
                          context,
                        )!
                            .restartQuiz,
                        style:
                            const TextStyle(
                          fontSize: 16,
                          fontWeight:
                              FontWeight
                                  .bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 12,
                  ),

                  // ==========================
                  // BACK TO CATEGORIES
                  // ==========================

                  SizedBox(
                    width:
                        double.infinity,
                    height: 54,
                    child:
                        ElevatedButton.icon(
                      onPressed: () {
                        _backToCategories(
                          context,
                        );
                      },
                      icon: const Icon(
                        Icons.home_outlined,
                      ),
                      label: Text(
                        AppLocalizations.of(
                          context,
                        )!
                            .backToCategories,
                        style:
                            const TextStyle(
                          fontSize: 16,
                          fontWeight:
                              FontWeight
                                  .bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
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

class _StatItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _StatItem({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 27,
          color: Theme.of(context)
              .colorScheme
              .primary,
        ),

        const SizedBox(
          height: 7,
        ),

        Text(
          value,
          style:
              const TextStyle(
            fontSize: 22,
            fontWeight:
                FontWeight.bold,
          ),
        ),

        const SizedBox(
          height: 3,
        ),

        Text(
          title,
          textAlign:
              TextAlign.center,
          style: TextStyle(
            fontSize: 13,
            color: Theme.of(context)
                .colorScheme
                .onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _ActionButton
    extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  const _ActionButton({
    required this.icon,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 20,
        ),
        label: Text(
          text,
          textAlign:
              TextAlign.center,
          style:
              const TextStyle(
            fontWeight:
                FontWeight.w600,
          ),
        ),
      ),
    );
  }
}