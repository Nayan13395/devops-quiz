import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final bool isLocked;
  final bool isCorrectAnswer;
  final VoidCallback onPressed;

  const OptionButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.isLocked,
    required this.isCorrectAnswer,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    final ColorScheme colorScheme = theme.colorScheme;

    final double screenWidth = MediaQuery.sizeOf(context).width;

    final bool isSmallScreen = screenWidth < 400;

    // =======================================================
    // DETERMINE TEXT COLOR
    // =======================================================

    final Color foregroundColor = _getForegroundColor(colorScheme);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: isLocked ? null : onPressed,

          style: ElevatedButton.styleFrom(
            // ===============================================
            // BACKGROUND
            // ===============================================
            backgroundColor: backgroundColor,

            disabledBackgroundColor: backgroundColor,

            // ===============================================
            // TEXT / ICON COLOR
            // ===============================================
            foregroundColor: foregroundColor,

            disabledForegroundColor: foregroundColor,

            elevation: 3,

            shadowColor: colorScheme.shadow.withValues(alpha: 0.20),

            minimumSize: const Size(double.infinity, 56),

            padding: EdgeInsets.symmetric(
              horizontal: isSmallScreen ? 12 : 18,
              vertical: isSmallScreen ? 12 : 15,
            ),

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                color: colorScheme.outlineVariant.withValues(alpha: 0.35),
              ),
            ),
          ),

          child: Text(
            text,
            textAlign: TextAlign.center,
            softWrap: true,

            style: TextStyle(
              fontSize: isSmallScreen ? 15 : 17,
              height: 1.25,

              fontWeight: isCorrectAnswer ? FontWeight.bold : FontWeight.w500,

              // Explicitly apply our
              // theme-aware foreground.
              color: foregroundColor,
            ),
          ),
        ),
      ),
    );
  }

  // =========================================================
  // FOREGROUND COLOR
  // =========================================================

  Color _getForegroundColor(ColorScheme colorScheme) {
    // Correct answer.
    //
    // quiz_screen.dart currently uses green.shade600
    // for correct answers.
    if (isCorrectAnswer) {
      return Colors.white;
    }

    // -------------------------------------------------------
    // Check if this is one of our answer-result colors.
    // -------------------------------------------------------

    final HSLColor hsl = HSLColor.fromColor(backgroundColor);

    // Strong red/green answer-result backgrounds generally
    // need white text for good contrast.
    if (isLocked && hsl.saturation > 0.35 && hsl.lightness < 0.65) {
      return Colors.white;
    }

    // -------------------------------------------------------
    // NORMAL OPTION
    // -------------------------------------------------------
    //
    // Use the active theme's semantic foreground color.
    //
    // Light theme  -> dark text
    // Dark theme   -> light text
    // Custom theme -> theme-defined text
    // -------------------------------------------------------

    return colorScheme.onSurface;
  }
}
