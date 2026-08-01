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
    final screenWidth =
        MediaQuery.of(context).size.width;

    final bool isSmallScreen =
        screenWidth < 400;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
      ),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed:
              isLocked ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor:
                backgroundColor,
            disabledBackgroundColor:
                backgroundColor,
            foregroundColor:
                Colors.black,
            elevation: 4,

            // Minimum height instead of
            // fixed height.
            minimumSize: const Size(
              double.infinity,
              54,
            ),

            padding:
                EdgeInsets.symmetric(
              horizontal:
                  isSmallScreen ? 12 : 16,
              vertical:
                  isSmallScreen ? 12 : 14,
            ),

            shape:
                RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(15),
            ),
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,

            // Allows long answers to wrap.
            softWrap: true,

            style: TextStyle(
              fontSize:
                  isSmallScreen ? 15 : 17,
              height: 1.2,
              fontWeight:
                  isCorrectAnswer
                      ? FontWeight.bold
                      : FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}