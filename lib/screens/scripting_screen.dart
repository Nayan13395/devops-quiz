import 'package:flutter/material.dart';
import 'set_screen.dart';
import '../widgets/animated_category_icon.dart';

class ScriptingScreen extends StatelessWidget {
  const ScriptingScreen({super.key});

  Widget scriptingCard(
    BuildContext context, {
    required String title,
    required String category,
    required String emoji,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => SetScreen(category: category),
          ),
        );
      },
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          height: 80,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 12),
              AnimatedCategoryIcon(
                category: category,
                emoji: emoji,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scripting"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            scriptingCard(
              context,
              title: "Bash Scripting",
              category: "Bash",
              emoji: "🐚",
            ),
            scriptingCard(
              context,
              title: "Python",
              category: "Python",
              emoji: "🐍",
            ),
            scriptingCard(
              context,
              title: "Perl",
              category: "Perl",
              emoji: "🐪",
            ),
            scriptingCard(
              context,
              title: "PowerShell",
              category: "PowerShell",
              emoji: "🖥️",
            ),
            scriptingCard(
              context,
              title: "JavaScript",
              category: "JavaScript",
              emoji: "🟨",
            ),
            scriptingCard(
              context,
              title: "Ruby",
              category: "Ruby",
              emoji: "💎",
            ),
          ],
        ),
      ),
    );
  }
}