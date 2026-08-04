import 'package:flutter/material.dart';
import 'quiz_screen.dart';
import '../widgets/app_drawer.dart';
import '../l10n/app_localizations.dart';
import '../services/update_service.dart';

class InstructionScreen extends StatefulWidget {
  final String category;
  final int setNumber;

  const InstructionScreen({
    super.key,
    required this.category,
    required this.setNumber,
  });

  @override
  State<InstructionScreen> createState() => _InstructionScreenState();
}

class _InstructionScreenState extends State<InstructionScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      UpdateService.checkForUpdate(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: Text("${widget.category} - Set ${widget.setNumber}"),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            AppLocalizations.of(context)!.quizInstructions,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        Text(
                          "📌 ${AppLocalizations.of(context)!.instruction1}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),

                        Text(
                          "📌 ${AppLocalizations.of(context)!.instruction2}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),

                        Text(
                          "📌 ${AppLocalizations.of(context)!.instruction3}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),

                        Text(
                          "📌 ${AppLocalizations.of(context)!.instruction4}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),

                        Text(
                          "📌 ${AppLocalizations.of(context)!.instruction5}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),

                        Text(
                          "📌 ${AppLocalizations.of(context)!.instruction6}",
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 10),

                        Text(
                          "📌 ${AppLocalizations.of(context)!.instruction7}",
                          style: const TextStyle(fontSize: 18),
                        ),

                        const Spacer(),

                        SafeArea(
                          top: false,
                          child: SizedBox(
                            width: double.infinity,
                            height: 55,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => QuizScreen(
                                      category: widget.category,
                                      setNumber: widget.setNumber,
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                "🚀 ${AppLocalizations.of(context)!.startQuiz}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
