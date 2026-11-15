import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/question.dart';
import '../services/question_service.dart';
import '../services/port_question_service.dart';
import '../services/saved_data_service.dart';
import '../services/learning_translation_service.dart';
import 'learning_screen.dart';

class SavedDataScreen extends StatefulWidget {
  const SavedDataScreen({
    super.key,
    this.questionService,
    this.learningTranslationsLoader,
  });

  final QuestionService? questionService;
  final Future<Map<String, LearningCardTranslation>> Function(String)?
  learningTranslationsLoader;

  @override
  State<SavedDataScreen> createState() => _SavedDataScreenState();
}

class _SavedData {
  const _SavedData(
    this.cards,
    this.questions,
    this.localizedQuestions,
    this.learningTranslations,
  );

  final Set<String> cards;
  final Set<String> questions;
  final Map<String, Question> localizedQuestions;
  final Map<String, LearningCardTranslation> learningTranslations;
}

class _SavedDataScreenState extends State<SavedDataScreen> {
  late Future<_SavedData> _data;
  Locale? _locale;
  final _removing = <String>{};

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final locale = Localizations.localeOf(context);
    if (_locale != locale) {
      _locale = locale;
      _data = _load(locale);
    }
  }

  Future<_SavedData> _load(Locale locale) async {
    try {
      final cards = await SavedDataService.cardIds();
      final questions = await SavedDataService.questionIds();
      final banks = questions.map((id) => id.split(':').first).toSet();
      final localized = <String, Question>{};
      for (final bank in banks) {
        if (bank == PortQuestionService.bank) {
          final l10n = await AppLocalizations.delegate.load(locale);
          for (final id in questions.where((id) => id.startsWith('$bank:'))) {
            localized[id] = PortQuestionService.restore(id, l10n);
          }
          continue;
        }
        if (!QuestionService.categoryFiles.containsKey(bank) &&
            bank != 'RewardGame') {
          continue;
        }
        for (final question
            in await (widget.questionService ?? QuestionService())
                .loadQuestions(locale, bank)) {
          if (questions.contains(question.id)) {
            localized[question.id!] = question;
          }
        }
      }
      final translations = cards.isEmpty
          ? <String, LearningCardTranslation>{}
          : await (widget.learningTranslationsLoader ??
                loadLearningCardTranslations)(locale.languageCode);
      return _SavedData(cards, questions, localized, translations);
    } catch (error, stack) {
      debugPrint('Loading saved data failed: $error\n$stack');
      rethrow;
    }
  }

  void _reload() {
    setState(() {
      _data = _load(_locale!);
    });
  }

  Future<void> _remove(String id, {required bool card}) async {
    setState(() => _removing.add(id));
    try {
      if (card) {
        await SavedDataService.saveCard(id, false);
      } else {
        await SavedDataService.saveQuestion(id, false);
      }
      if (mounted) _reload();
    } catch (error, stack) {
      debugPrint('Removing saved item failed: $error\n$stack');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.savedDataError)),
        );
      }
    } finally {
      if (mounted) setState(() => _removing.remove(id));
    }
  }

  Widget _removeButton(String id, {required bool card}) => IconButton(
    tooltip: AppLocalizations.of(context)!.removeSavedItem,
    icon: const Icon(Icons.bookmark_remove_outlined),
    onPressed: _removing.contains(id) ? null : () => _remove(id, card: card),
  );

  Widget _learningCard(
    String id,
    Map<String, LearningCardTranslation> translations,
  ) {
    final matches = learningCards.where((card) => card.id == id);
    final card = matches.isEmpty
        ? null
        : matches.first.localized(
            _locale!.languageCode,
            translation: translations[id],
          );
    return Card(
      key: ValueKey('saved-card-$id'),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text(card?.topic ?? id)),
                _removeButton(id, card: true),
              ],
            ),
            if (card == null)
              Text(AppLocalizations.of(context)!.savedItemUnavailable)
            else if (!translations.containsKey(id))
              Text(AppLocalizations.of(context)!.learningTranslationUnavailable)
            else ...[
              Text(
                card.command,
                textDirection: card.isConcept ? null : TextDirection.ltr,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              Text(card.description),
              if (card.example.isNotEmpty) ...[
                const Divider(),
                SelectableText(
                  card.example,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(fontFamily: 'monospace'),
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }

  Widget _questionCard(String id, Question? question) {
    final l10n = AppLocalizations.of(context)!;
    return Card(
      key: ValueKey('saved-question-$id'),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    question == null
                        ? id
                        : '${question.category} · ${l10n.set} ${question.set}',
                  ),
                ),
                _removeButton(id, card: false),
              ],
            ),
            if (question == null)
              Text(l10n.savedItemUnavailable)
            else ...[
              Text(
                question.question,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
              for (var index = 0; index < question.options.length; index++)
                _option(question, index),
            ],
          ],
        ),
      ),
    );
  }

  Widget _option(Question question, int index) {
    final option = question.options[index];
    final correct = option == question.answer;
    final colors = Theme.of(context).colorScheme;
    return Semantics(
      label: correct ? AppLocalizations.of(context)!.correctAnswer : null,
      child: Container(
        key: ValueKey('${question.id}-option-$index'),
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: correct
              ? Colors.green.shade900
              : colors.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                option,
                style: TextStyle(
                  color: correct ? Colors.white : colors.onSurface,
                  fontWeight: correct ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
            if (correct) const Icon(Icons.check_circle, color: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget _list(List<Widget> items) {
    if (items.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            AppLocalizations.of(context)!.noSavedData,
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
    return ListView(padding: const EdgeInsets.all(12), children: items);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.saveData),
          bottom: TabBar(
            tabs: [
              Tab(text: l10n.learning),
              Tab(text: l10n.questions),
            ],
          ),
        ),
        body: SafeArea(
          child: FutureBuilder<_SavedData>(
            future: _data,
            builder: (context, snapshot) {
              if (snapshot.connectionState != ConnectionState.done) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(l10n.savedDataError),
                      TextButton(onPressed: _reload, child: Text(l10n.retry)),
                    ],
                  ),
                );
              }
              final data = snapshot.requireData;
              return TabBarView(
                children: [
                  _list([
                    for (final id in data.cards)
                      _learningCard(id, data.learningTranslations),
                  ]),
                  _list([
                    for (final id in data.questions)
                      _questionCard(id, data.localizedQuestions[id]),
                  ]),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
