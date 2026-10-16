import 'package:flutter/material.dart';
import 'set_screen.dart';
import '../widgets/category_button.dart';

class ScriptingScreen extends StatelessWidget {
  const ScriptingScreen({super.key});

  Widget scriptingCard(
    BuildContext context, {
    required String title,
    required String category,
  }) {
    return CategoryButton(
      title: title,
      category: category,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => SetScreen(category: category)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scripting")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            scriptingCard(
              context,
              title: "Bash Scripting",
              category: "Bash",
            ),
            scriptingCard(
              context,
              title: "Python",
              category: "Python",
            ),
            scriptingCard(
              context,
              title: "Perl",
              category: "Perl",
            ),
            scriptingCard(
              context,
              title: "PowerShell",
              category: "PowerShell",
            ),
            scriptingCard(
              context,
              title: "JavaScript",
              category: "JavaScript",
            ),
            scriptingCard(
              context,
              title: "Ruby",
              category: "Ruby",
            ),
          ],
        ),
      ),
    );
  }
}
