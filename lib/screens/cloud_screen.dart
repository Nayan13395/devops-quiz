import 'package:flutter/material.dart';

import '../widgets/animated_category_icon.dart';
import 'set_screen.dart';

class CloudScreen extends StatelessWidget {
  const CloudScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cloud Computing",
        ),
      ),

      body: SafeArea(
        top: false,
        bottom: true,
        child: ListView(
          padding: const EdgeInsets.fromLTRB(
            12,
            12,
            12,

            // Extra bottom space so the
            // Hybrid Cloud card can scroll
            // above the navigation bar.
            40,
          ),
          children: const [
            CloudCard(
              category: "AWS",
              emoji: "𝐚",
            ),

            CloudCard(
              category: "Azure",
              emoji: "🅰️",
            ),

            CloudCard(
              category: "GCP",
              emoji: "𝐆",
            ),

            CloudCard(
              category: "Oracle Cloud",
              emoji: "⭕",
            ),

            CloudCard(
              category: "IBM Cloud",
              emoji: "ℐℬℳ",
            ),

            CloudCard(
              category: "Multi Cloud",
              emoji: "Ⓜ️©️",
            ),

            CloudCard(
              category: "Hybrid Cloud",
              emoji: "𝓗 ©️",
            ),
          ],
        ),
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
    return Card(
      elevation: 8,
      margin: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
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
        borderRadius: BorderRadius.circular(
          20,
        ),
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(
            minHeight: 80,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  category,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight:
                        FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(width: 12),

              Flexible(
                child: AnimatedCategoryIcon(
                  category: category,
                  emoji: emoji,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}