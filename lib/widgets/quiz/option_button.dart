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
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: isLocked ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            disabledBackgroundColor: backgroundColor,
            foregroundColor: Colors.black,
            elevation: 4,
            minimumSize: const Size(double.infinity, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: isCorrectAnswer
                        ? FontWeight.bold
                        : FontWeight.w500,
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