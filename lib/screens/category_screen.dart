import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/category_button.dart';
import 'set_screen.dart';
import 'quiz_screen.dart';
import '../l10n/app_localizations.dart';
import '../services/update_service.dart';
import 'cloud_screen.dart';
import '../services/streak_service.dart';
import '../services/notification_service.dart';
import '../services/question_service.dart';
import '../widgets/daily_reward_dialog.dart';
import '../widgets/streak_card.dart';
import '../widgets/play_store_badge.dart'; // <-- NEW IMPORT
import '../widgets/whats_new_dialog.dart';
import 'scripting_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _categoryQuery = '';

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final result = await StreakService.checkDailyReward();
      await NotificationService.instance.scheduleStreakSaveReminder();

      if (!mounted) return;

      if (result.showReward) {
        await showDailyRewardDialog(context, result);
      }

      if (!mounted) return;

      await showWhatsNewIfNeeded(context);

      if (!mounted) return;

      await UpdateService.checkForUpdate(context);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _openCategory(String title) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => SetScreen(category: title)),
    );
  }

  Widget categoryButton(String title) {
    return CategoryButton(title: title, onTap: () => _openCategory(title));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),

      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.selectCategory),

        // ===================================================
        // GOOGLE PLAY BADGE (TOP RIGHT - WEB ONLY)
        // ===================================================
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: Center(child: PlayStoreBadge(height: 36)),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 4),
              child: TextField(
                controller: _searchController,
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: 'Search categories',
                  prefixIcon: const Icon(Icons.search_rounded),
                  suffixIcon: _categoryQuery.isEmpty
                      ? null
                      : IconButton(
                          tooltip: 'Clear search',
                          onPressed: () {
                            _searchController.clear();
                          },
                          icon: const Icon(Icons.close_rounded),
                        ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  filled: true,
                ),
                onChanged: (value) => setState(() => _categoryQuery = value),
              ),
            ),
            Expanded(
              child: ListView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                children: _categoryQuery.trim().isEmpty
                    ? [
                        const StreakCard(),

                        CategoryButton(
                          title: 'DevOps',
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  QuizScreen(category: 'DevOps', setNumber: 0),
                            ),
                          ),
                        ),

                        CategoryButton(
                          title: 'Cloud Computing',
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const CloudScreen(),
                            ),
                          ),
                        ),

                        CategoryButton(
                          title: 'Scripting',
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const ScriptingScreen(),
                            ),
                          ),
                        ),
                        for (final category in [
                          'Linux',
                          'Docker',
                          'Kubernetes',
                          'Networking',
                          'Git',
                          'Jenkins',
                          'Terraform',
                          'Ansible',
                        ])
                          categoryButton(category),
                      ]
                    : _buildSearchResults(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildSearchResults() {
    final query = _categoryQuery.trim().toLowerCase();
    final matches = QuestionService.categories
        .where((category) => category.toLowerCase().contains(query))
        .toList();

    if (matches.isEmpty) {
      return [
        const SizedBox(height: 64),
        const Icon(Icons.search_off_rounded, size: 48),
        const SizedBox(height: 12),
        const Center(child: Text('No matching categories')),
      ];
    }

    return [
      Padding(
        padding: const EdgeInsets.fromLTRB(4, 12, 4, 4),
        child: Text(
          '${matches.length} ${matches.length == 1 ? 'category' : 'categories'}',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ),
      for (final category in matches) categoryButton(category),
    ];
  }
}
