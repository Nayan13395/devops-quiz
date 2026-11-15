import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/question.dart';
import '../services/saved_data_service.dart';

class SaveQuestionButton extends StatefulWidget {
  const SaveQuestionButton({super.key, required this.question});

  final Question question;

  @override
  State<SaveQuestionButton> createState() => _SaveQuestionButtonState();
}

class _SaveQuestionButtonState extends State<SaveQuestionButton> {
  bool _saved = false;
  bool _busy = true;

  @override
  void initState() {
    super.initState();
    SavedDataService.changes.addListener(_refresh);
    _load();
  }

  @override
  void dispose() {
    SavedDataService.changes.removeListener(_refresh);
    super.dispose();
  }

  void _refresh() {
    setState(() => _busy = true);
    _load();
  }

  @override
  void didUpdateWidget(SaveQuestionButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.question.id != widget.question.id) {
      _busy = true;
      _load();
    }
  }

  Future<void> _load() async {
    final id = widget.question.id;
    try {
      final ids = await SavedDataService.questionIds();
      if (mounted && widget.question.id == id) {
        setState(() {
          _saved = ids.contains(id);
          _busy = false;
        });
      }
    } catch (error, stack) {
      debugPrint('Loading saved questions failed: $error\n$stack');
      if (mounted) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) _showError();
        });
      }
    }
  }

  void _showError() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.savedDataError),
        action: SnackBarAction(
          label: AppLocalizations.of(context)!.retry,
          onPressed: _load,
        ),
      ),
    );
  }

  Future<void> _toggle() async {
    final id = widget.question.id;
    if (id == null) return;
    final saved = !_saved;
    setState(() => _busy = true);
    try {
      await SavedDataService.saveQuestion(id, saved);
      if (mounted && widget.question.id == id) {
        setState(() {
          _saved = saved;
          _busy = false;
        });
      }
    } catch (error, stack) {
      debugPrint('Saving question failed: $error\n$stack');
      if (mounted) {
        if (widget.question.id == id) setState(() => _busy = false);
        _showError();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final label = _saved ? l10n.removeSavedItem : l10n.saveQuestion;
    return Tooltip(
      message: label,
      child: TextButton.icon(
        icon: Icon(
          _saved ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
        ),
        label: Text(label),
        onPressed: _busy || widget.question.id == null ? null : _toggle,
      ),
    );
  }
}
