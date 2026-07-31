import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import 'set_screen.dart';
import 'quiz_screen.dart';
import '../l10n/app_localizations.dart';
import '../services/update_service.dart';
import 'cloud_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(reverse: true);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      UpdateService.checkForUpdate(context);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget categoryCard(String title, String emoji) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => SetScreen(
              category: title,
            ),
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
          child: Center(
            child: Text(
              "$title $emoji",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.selectCategory,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Transform.scale(
                  scale: 1 + (controller.value * 0.1),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => QuizScreen(
                            category: "DevOps",
                            setNumber: 0,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 8,
                      child: SizedBox(
                        height: 80,
                        child: Center(
                          child: Text(
                            "DevOps 🚀",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            InkWell(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const CloudScreen(),
      ),
    );
  },
  child: Card(
    elevation: 8,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: const SizedBox(
      height: 80,
      child: Center(
        child: Text(
          "Cloud Computing ☁️",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  ),
),
            categoryCard("Linux", "🐧"),
            categoryCard("Docker", "🐳"),
            categoryCard("Kubernetes", "⎈"),
            categoryCard("Networking", "🌐"),
            categoryCard("Git", "🌿"),
            categoryCard("Jenkins", "⚙️"),
            categoryCard("Terraform", "🏗️"),
            categoryCard("Ansible", "🤖"),
          ],
        ),
      ),
    );
  }
}