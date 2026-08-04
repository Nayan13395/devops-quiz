import 'package:flutter/material.dart';
import 'instruction_screen.dart';
import '../widgets/app_drawer.dart';
import '../l10n/app_localizations.dart';

class SetScreen extends StatelessWidget {
  final String category;

  const SetScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(title: Text(category)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),

            Text(
              AppLocalizations.of(context)!.selectSet,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 30),

            setButton(context, 1),

            setButton(context, 2),

            setButton(context, 3),

            setButton(context, 4),
          ],
        ),
      ),
    );
  }

  Widget setButton(BuildContext context, int setNumber) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) =>
                    InstructionScreen(category: category, setNumber: setNumber),
              ),
            );
          },
          child: Text(
            "${AppLocalizations.of(context)!.set} $setNumber (25 ${AppLocalizations.of(context)!.questions})",
            style: const TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
