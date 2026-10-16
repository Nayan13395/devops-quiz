import 'package:flutter/material.dart';

import '../widgets/category_button.dart';
import 'set_screen.dart';

class CloudScreen extends StatelessWidget {
  const CloudScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cloud Computing")),

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
            CloudCard(category: 'AWS'),
            CloudCard(category: 'Azure'),
            CloudCard(category: 'GCP'),
            CloudCard(category: 'Oracle Cloud'),
            CloudCard(category: 'IBM Cloud'),
            CloudCard(category: 'Multi Cloud'),
            CloudCard(category: 'Hybrid Cloud'),
          ],
        ),
      ),
    );
  }
}

class CloudCard extends StatelessWidget {
  final String category;

  const CloudCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return CategoryButton(
      title: category,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => SetScreen(category: category)),
        );
      },
    );
  }
}
