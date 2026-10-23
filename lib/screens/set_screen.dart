import 'package:flutter/material.dart';
import 'instruction_screen.dart';
import 'certificates_screen.dart';
import '../widgets/app_drawer.dart';
import '../l10n/app_localizations.dart';
import '../services/certificate_service.dart';
import '../services/question_service.dart';

class SetScreen extends StatefulWidget {
  final String category;

  const SetScreen({super.key, required this.category});

  @override
  State<SetScreen> createState() => _SetScreenState();
}

class _SetScreenState extends State<SetScreen> {
  Map<int, int> _completed = {};
  final Map<int, int> _questionCounts = {};
  CertificateInfo? _certificate;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => _load());
  }

  Future<void> _load() async {
    final locale = Localizations.localeOf(context);

    final completed = await CertificateService.progressFor(widget.category);
    final certificate = await CertificateService.getCertificate(
      widget.category,
    );

    final Map<int, int> counts = {};

    try {
      final all = await QuestionService().loadQuestions(
        locale,
        widget.category,
      );

      for (final question in all) {
        counts[question.set] = (counts[question.set] ?? 0) + 1;
      }
    } catch (_) {
      // Counts are optional; the buttons simply omit them.
    }

    if (!mounted) return;

    setState(() {
      _completed = completed;
      _certificate = certificate;
      _questionCounts
        ..clear()
        ..addAll(counts);
    });
  }

  Future<void> _openSet(int setNumber) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            InstructionScreen(category: widget.category, setNumber: setNumber),
      ),
    );

    // Refresh ticks and certificate progress after coming back.
    if (mounted) await _load();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final int total = QuestionService.setsPerCategory;

    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: Text(widget.category)),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                const SizedBox(height: 12),

                Text(
                  AppLocalizations.of(context)!.selectSet,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 16),

                // ===============================================
                // CERTIFICATE PROGRESS
                // ===============================================
                Card(
                  color: colors.primaryContainer,
                  child: ListTile(
                    leading: const Text('🎓', style: TextStyle(fontSize: 30)),
                    title: Text(
                      _certificate != null
                          ? 'Certificate earned'
                          : '${_completed.length} / $total sets completed',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      _certificate != null
                          ? 'Tap to view your ${widget.category} certificate'
                          : 'Finish all $total sets to earn a certificate',
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const CertificatesScreen(),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 16),

                for (int set = 1; set <= total; set++) setButton(context, set),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget setButton(BuildContext context, int setNumber) {
    final bool done = _completed.containsKey(setNumber);
    final int? count = _questionCounts[setNumber];
    final strings = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: double.infinity,
        height: 76,
        child: ElevatedButton(
          key: ValueKey('set-button-$setNumber'),
          onPressed: () => _openSet(setNumber),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
          child: Row(
            children: [
              if (done) ...[
                const Icon(Icons.check_circle_rounded),
                const SizedBox(width: 12),
              ],
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${strings.set} $setNumber',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (count != null)
                      Text(
                        '$count ${strings.questions}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 13),
                      ),
                  ],
                ),
              ),
              if (done) ...[
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.16),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${_completed[setNumber]}%',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ] else ...[
                const SizedBox(width: 8),
                const Icon(Icons.chevron_right_rounded),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
