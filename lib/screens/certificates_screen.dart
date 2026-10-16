import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../services/certificate_service.dart';
import '../services/question_service.dart';
import '../services/user_profile_service.dart';
import '../services/whats_new_service.dart';
import '../widgets/certificate_view.dart';

Future<String?> resolveCertificateHolderName(BuildContext context) async {
  final String? saved = await CertificateService.savedName();

  if (saved != null) return saved;

  try {
    if (UserProfileService.isGoogleUser) {
      final String name = UserProfileService.displayName;

      if (name.isNotEmpty && name != 'Guest') return name;
    }
  } catch (_) {
    // Firebase is unavailable (for example in tests): ask the user instead.
  }

  if (!context.mounted) return null;

  return askHolderName(context);
}

Future<String?> askHolderName(
  BuildContext context, {
  String initial = '',
}) async {
  final controller = TextEditingController(text: initial);

  final String? name = await showDialog<String>(
    context: context,
    builder: (dialogContext) => AlertDialog(
      title: const Text('Name on certificate'),
      content: TextField(
        controller: controller,
        autofocus: true,
        maxLength: 40,
        textCapitalization: TextCapitalization.words,
        decoration: const InputDecoration(hintText: 'Enter your full name'),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(dialogContext),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(dialogContext, controller.text.trim()),
          child: const Text('Save'),
        ),
      ],
    ),
  );

  controller.dispose();

  if (name == null || name.isEmpty) return null;

  await CertificateService.saveName(name);

  return name;
}

// ============================================================
// LIST OF CATEGORIES AND PROGRESS
// ============================================================

class CertificatesScreen extends StatefulWidget {
  const CertificatesScreen({super.key});

  @override
  State<CertificatesScreen> createState() => _CertificatesScreenState();
}

class _CertificatesScreenState extends State<CertificatesScreen> {
  bool _loading = true;

  final Map<String, Map<int, int>> _progress = {};
  Map<String, CertificateInfo> _certificates = {};

  @override
  void initState() {
    super.initState();

    WhatsNewService.markFeatureSeen(WhatsNewService.certificates);
    _load();
  }

  Future<void> _load() async {
    final certificates = await CertificateService.earnedCertificates();

    for (final category in QuestionService.categories) {
      _progress[category] = await CertificateService.progressFor(category);
    }

    if (!mounted) return;

    setState(() {
      _certificates = certificates;
      _loading = false;
    });
  }

  Future<void> _open(CertificateInfo info) async {
    final String? name = await resolveCertificateHolderName(context);

    if (name == null || !mounted) return;

    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CertificateDetailScreen(info: info, holderName: name),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final int total = QuestionService.categories.length;

    return Scaffold(
      appBar: AppBar(title: const Text('🎓 Certificates')),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : SafeArea(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 700),
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                    children: [
                      Card(
                        color: colors.primaryContainer,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${_certificates.length} of $total certificates earned',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'Complete all ${CertificateService.setsRequired} '
                                'sets of a category to earn its certificate.',
                                style: TextStyle(
                                  color: colors.onPrimaryContainer,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      for (final category in QuestionService.categories)
                        _categoryTile(category),
                    ],
                  ),
                ),
              ),
            ),
    );
  }

  Widget _categoryTile(String category) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final sets = _progress[category] ?? {};
    final CertificateInfo? info = _certificates[category];
    final int done = sets.length;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    category,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '$done / ${CertificateService.setsRequired}',
                  style: TextStyle(color: colors.onSurfaceVariant),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 4,
              children: [
                for (int set = 1; set <= CertificateService.setsRequired; set++)
                  Chip(
                    visualDensity: VisualDensity.compact,
                    avatar: Icon(
                      sets.containsKey(set)
                          ? Icons.check_circle
                          : Icons.radio_button_unchecked,
                      size: 18,
                      color: sets.containsKey(set)
                          ? Colors.green
                          : colors.onSurfaceVariant,
                    ),
                    label: Text('Set $set'),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            if (info != null)
              FilledButton.icon(
                onPressed: () => _open(info),
                icon: const Icon(Icons.workspace_premium),
                label: const Text('View certificate'),
              )
            else
              Text(
                '${CertificateService.setsRequired - done} more '
                '${CertificateService.setsRequired - done == 1 ? 'set' : 'sets'} '
                'to unlock',
                style: TextStyle(color: colors.onSurfaceVariant),
              ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// CERTIFICATE PREVIEW + DOWNLOAD
// ============================================================

class CertificateDetailScreen extends StatefulWidget {
  final CertificateInfo info;
  final String holderName;

  const CertificateDetailScreen({
    super.key,
    required this.info,
    required this.holderName,
  });

  @override
  State<CertificateDetailScreen> createState() =>
      _CertificateDetailScreenState();
}

class _CertificateDetailScreenState extends State<CertificateDetailScreen> {
  final GlobalKey _captureKey = GlobalKey();

  late String _name = widget.holderName;
  bool _busy = false;

  Future<void> _editName() async {
    final String? name = await askHolderName(context, initial: _name);

    if (name != null && mounted) {
      setState(() => _name = name);
    }
  }

  Future<void> _download() async {
    setState(() => _busy = true);

    try {
      final boundary =
          _captureKey.currentContext!.findRenderObject()
              as RenderRepaintBoundary;

      final ui.Image image = await boundary.toImage(pixelRatio: 3);
      final ByteData? data = await image.toByteData(
        format: ui.ImageByteFormat.png,
      );

      if (data == null) throw StateError('Unable to render certificate');

      final pdf = pw.Document();
      final picture = pw.MemoryImage(data.buffer.asUint8List());

      pdf.addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4.landscape,
          margin: pw.EdgeInsets.zero,
          build: (_) => pw.Image(picture, fit: pw.BoxFit.fill),
        ),
      );

      final String safe = widget.info.category.replaceAll(
        RegExp(r'[^A-Za-z0-9]+'),
        '_',
      );

      await Printing.sharePdf(
        bytes: await pdf.save(),
        filename: 'DevOps_Quiz_${safe}_Certificate.pdf',
      );
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Unable to create PDF: $e')));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.info.category} Certificate')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Column(
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    child: FittedBox(
                      child: RepaintBoundary(
                        key: _captureKey,
                        child: CertificateView(
                          info: widget.info,
                          holderName: _name,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    alignment: WrapAlignment.center,
                    children: [
                      FilledButton.icon(
                        onPressed: _busy ? null : _download,
                        icon: _busy
                            ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : const Icon(Icons.download_rounded),
                        label: const Text('Download PDF'),
                      ),
                      OutlinedButton.icon(
                        onPressed: _busy ? null : _editName,
                        icon: const Icon(Icons.edit_outlined),
                        label: const Text('Edit name'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
