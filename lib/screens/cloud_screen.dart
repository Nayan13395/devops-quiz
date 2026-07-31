import 'package:flutter/material.dart';
import '../widgets/animated_category_icon.dart';
import 'set_screen.dart';

class CloudScreen extends StatelessWidget {
  const CloudScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cloud Computing"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          CloudCard(category: "AWS", emoji: "𝐚"),
          CloudCard(category: "Azure", emoji: "🅰️"),
          CloudCard(category: "GCP", emoji: "𝐆"),
          CloudCard(category: "Oracle Cloud", emoji: "⭕"),
          CloudCard(category: "IBM Cloud", emoji: "ℐℬℳ"),
          CloudCard(category: "Multi Cloud", emoji: "Ⓜ️©️"),
          CloudCard(category: "Hybrid Cloud", emoji: "𝓗 ©️"),
        ],
      ),
    );
  }
}

class CloudCard extends StatelessWidget {
  final String category;
  final String emoji;

  const CloudCard({
    super.key,
    required this.category,
    required this.emoji,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => SetScreen(
              category: category,
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                category,
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
}