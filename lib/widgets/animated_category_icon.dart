import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedCategoryIcon extends StatefulWidget {
  final String category;
  final String emoji;

  const AnimatedCategoryIcon({
    super.key,
    required this.category,
    required this.emoji,
  });

  @override
  State<AnimatedCategoryIcon> createState() => _AnimatedCategoryIconState();
}

class _AnimatedCategoryIconState extends State<AnimatedCategoryIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        Widget icon = Text(widget.emoji, style: const TextStyle(fontSize: 30));

        switch (widget.category) {
          case "Linux":
            icon = Transform.translate(
              offset: Offset(sin(controller.value * 2 * pi) * 6, 0),
              child: icon,
            );
            break;

          case "Docker":
            icon = Transform.translate(
              offset: Offset(0, sin(controller.value * 2 * pi) * 5),
              child: icon,
            );
            break;

          case "Kubernetes":
          case "Networking":
          case "Jenkins":
            icon = Transform.rotate(
              angle: controller.value * 2 * pi,
              child: icon,
            );
            break;

          case "Terraform":
          case "Azure":
            icon = Transform.scale(
              scale: 0.9 + (controller.value * 0.2),
              child: icon,
            );
            break;

          case "AWS":
          case "Azure":
          case "GCP":
          case "Oracle Cloud":
          case "IBM Cloud":
          case "Hybrid Cloud":
          case "Multi Cloud":
          case "Cloud Computing":
            icon = Transform.translate(
              offset: Offset(
                sin(controller.value * 2 * pi) * 4,
                sin(controller.value * 2 * pi) * 2,
              ),
              child: icon,
            );
            break;

          default:
            icon = Transform.translate(
              offset: Offset(0, sin(controller.value * 2 * pi) * 3),
              child: icon,
            );
        }

        return icon;
      },
    );
  }
}
