import 'package:flutter/material.dart';

import '../services/ask_ai_service.dart';

typedef TechQuestionHandler =
    Future<TechQuestionReply> Function(String question);

class AskAiScreen extends StatefulWidget {
  const AskAiScreen({super.key, this.onAsk});

  final TechQuestionHandler? onAsk;

  @override
  State<AskAiScreen> createState() => _AskAiScreenState();
}

class _AskAiScreenState extends State<AskAiScreen> {
  final AskAiService _service = AskAiService();
  final TextEditingController _inputController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<_ChatMessage> _messages = [
    const _ChatMessage(
      text:
          'Ask me about programming, DevOps, cloud, networking, databases, or other technology topics.',
      isUser: false,
    ),
  ];
  bool _sending = false;

  TechQuestionHandler get _ask => widget.onAsk ?? _service.ask;

  @override
  void dispose() {
    _inputController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _send([String? suggestedQuestion]) async {
    if (_sending) return;
    final question = (suggestedQuestion ?? _inputController.text).trim();
    if (question.isEmpty) return;

    _inputController.clear();
    setState(() {
      _messages.add(_ChatMessage(text: question, isUser: true));
      _sending = true;
    });
    _scrollToLatest();

    try {
      final reply = await _ask(question);
      if (!mounted) return;
      setState(() {
        _messages.add(
          _ChatMessage(
            text: reply.answer,
            isUser: false,
            isTechnologyRelated: reply.isTechnologyRelated,
          ),
        );
      });
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _messages.add(
          _ChatMessage(
            text: error.toString().replaceFirst('Bad state: ', ''),
            isUser: false,
            isTechnologyRelated: false,
          ),
        );
      });
    } finally {
      if (mounted) {
        setState(() => _sending = false);
        _scrollToLatest();
      }
    }
  }

  void _scrollToLatest() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) return;
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 220),
        curve: Curves.easeOutCubic,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ask AI'),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 16),
            child: Center(
              child: Tooltip(
                message: 'Technology topics only',
                child: Icon(
                  Icons.verified_user_outlined,
                  color: colors.primary,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
                itemCount: _messages.length + (_sending ? 1 : 0),
                itemBuilder: (context, index) {
                  if (_sending && index == _messages.length) {
                    return const _ThinkingBubble();
                  }
                  return _MessageBubble(message: _messages[index]);
                },
              ),
            ),
            if (_messages.length == 1 && !_sending)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  alignment: WrapAlignment.center,
                  children: [
                    _QuestionChip(
                      label: 'What is a Kubernetes pod?',
                      onTap: () => _send('What is a Kubernetes pod?'),
                    ),
                    _QuestionChip(
                      label: 'Explain Git rebase',
                      onTap: () => _send('Explain Git rebase'),
                    ),
                    _QuestionChip(
                      label: 'How does DNS work?',
                      onTap: () => _send('How does DNS work?'),
                    ),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 8, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextField(
                      key: const ValueKey('ask-ai-input'),
                      controller: _inputController,
                      minLines: 1,
                      maxLines: 4,
                      maxLength: AskAiService.maxQuestionLength,
                      textCapitalization: TextCapitalization.sentences,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (_) => _send(),
                      decoration: InputDecoration(
                        hintText: 'Ask a technology question…',
                        counterText: '',
                        filled: true,
                        fillColor: colors.surfaceContainerHighest,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton.filled(
                    key: const ValueKey('ask-ai-send'),
                    tooltip: 'Send question',
                    onPressed: _sending ? null : () => _send(),
                    icon: _sending
                        ? const SizedBox.square(
                            dimension: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.arrow_upward_rounded),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChatMessage {
  const _ChatMessage({
    required this.text,
    required this.isUser,
    this.isTechnologyRelated = true,
  });

  final String text;
  final bool isUser;
  final bool isTechnologyRelated;
}

class _MessageBubble extends StatelessWidget {
  const _MessageBubble({required this.message});

  final _ChatMessage message;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final user = message.isUser;
    final background = user
        ? colors.primaryContainer
        : message.isTechnologyRelated
        ? colors.surfaceContainerHighest
        : colors.tertiaryContainer;

    return Align(
      alignment: user
          ? AlignmentDirectional.centerEnd
          : AlignmentDirectional.centerStart,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.82,
        ),
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadiusDirectional.only(
            topStart: const Radius.circular(16),
            topEnd: const Radius.circular(16),
            bottomStart: Radius.circular(user ? 16 : 4),
            bottomEnd: Radius.circular(user ? 4 : 16),
          ),
        ),
        child: Text(message.text, style: const TextStyle(height: 1.35)),
      ),
    );
  }
}

class _ThinkingBubble extends StatelessWidget {
  const _ThinkingBubble();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const SizedBox.square(
          dimension: 18,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      ),
    );
  }
}

class _QuestionChip extends StatelessWidget {
  const _QuestionChip({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ActionChip(label: Text(label), onPressed: onTap);
  }
}
