import 'package:flutter/material.dart';

class NavigationButtons extends StatelessWidget {
  final bool canGoBack;
  final bool isLastQuestion;
  final VoidCallback onBack;
  final VoidCallback onNext;

  const NavigationButtons({
    super.key,
    required this.canGoBack,
    required this.isLastQuestion,
    required this.onBack,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            onPressed: canGoBack ? onBack : null,
            icon: const Icon(Icons.arrow_back),
            label: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "Back",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),

        const SizedBox(width: 15),

        Expanded(
          child: ElevatedButton.icon(
            onPressed: onNext,
            icon: Icon(
              isLastQuestion
                  ? Icons.check_circle
                  : Icons.arrow_forward,
            ),
            label: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                isLastQuestion
                    ? "Submit"
                    : "Next",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}