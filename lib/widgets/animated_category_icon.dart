import 'package:flutter/material.dart';

const Map<String, IconData> categoryIcons = {
  'DevOps': Icons.all_inclusive_rounded,
  'Cloud Computing': Icons.cloud_queue_rounded,
  'Scripting': Icons.code_rounded,
  'AWS': Icons.cloud_rounded,
  'Azure': Icons.cloud_outlined,
  'GCP': Icons.public_rounded,
  'Oracle Cloud': Icons.storage_rounded,
  'IBM Cloud': Icons.dns_rounded,
  'Multi Cloud': Icons.cloud_sync_rounded,
  'Hybrid Cloud': Icons.cloud_done_rounded,
  'Linux': Icons.terminal_rounded,
  'Docker': Icons.inventory_2_rounded,
  'Kubernetes': Icons.hub_rounded,
  'Networking': Icons.lan_rounded,
  'Git': Icons.account_tree_rounded,
  'Jenkins': Icons.settings_suggest_rounded,
  'Terraform': Icons.architecture_rounded,
  'Ansible': Icons.smart_toy_rounded,
  'Bash': Icons.terminal_rounded,
  'Python': Icons.data_object_rounded,
  'Perl': Icons.code_rounded,
  'PowerShell': Icons.desktop_windows_rounded,
  'JavaScript': Icons.data_object_rounded,
  'Ruby': Icons.diamond_outlined,
};

class AnimatedCategoryIcon extends StatefulWidget {
  final String category;

  const AnimatedCategoryIcon({super.key, required this.category});

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
      child: Icon(
        categoryIcons[widget.category] ?? Icons.category_outlined,
        size: 27,
        color: Theme.of(context).colorScheme.primary,
      ),
      builder: (context, child) {
        final motion =
            Curves.easeInOutCubic.transform(controller.value) * 2 - 1;

        return Transform.translate(
          offset: Offset(0, motion * 2.5),
          child: Transform.rotate(
            angle: motion * 0.045,
            child: Transform.scale(scale: 1 + motion * 0.035, child: child),
          ),
        );
      },
    );
  }
}
