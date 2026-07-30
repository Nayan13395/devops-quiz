import 'package:flutter/material.dart';

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
        children: [

          cloudCard(context, "AWS", "☁️"),
          cloudCard(context, "Azure", "🔷"),
          cloudCard(context, "GCP", "🌈"),
          cloudCard(context, "Oracle Cloud", "🔴"),
          cloudCard(context, "IBM Cloud", "🔵"),
          cloudCard(context, "Multi Cloud", "🌐"),
          cloudCard(context, "Hybrid Cloud", "🔀"),

        ],
      ),
    );
  }

  Widget cloudCard(
    BuildContext context,
    String category,
    String emoji,
  ) {
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
          child: Center(
            child: Text(
              "$emoji  $category",
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
}