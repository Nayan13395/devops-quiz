import 'package:flutter/material.dart';

import '../services/national_day_service.dart';

class CelebrationCountryPicker extends StatefulWidget {
  const CelebrationCountryPicker({
    super.key,
    required this.countries,
    this.selectedCode,
  });
  final List<CelebrationCountry> countries;
  final String? selectedCode;

  @override
  State<CelebrationCountryPicker> createState() =>
      _CelebrationCountryPickerState();
}

class _CelebrationCountryPickerState extends State<CelebrationCountryPicker> {
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final countries = widget.countries
        .where(
          (country) =>
              country.name.toLowerCase().contains(_query.toLowerCase()) ||
              country.code.toLowerCase() == _query.toLowerCase(),
        )
        .toList();
    return AlertDialog(
      title: const Text('Country / region'),
      insetPadding: const EdgeInsets.all(16),
      content: SizedBox(
        width: 380,
        height: MediaQuery.sizeOf(context).height * 0.5,
        child: Column(
          children: [
            TextField(
              key: const ValueKey('celebration-country-search'),
              decoration: const InputDecoration(
                labelText: 'Search country',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) => setState(() => _query = value),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: countries.length + 1,
                itemBuilder: (context, index) {
                  final country = index == 0 ? null : countries[index - 1];
                  return ListTile(
                    key: ValueKey(
                      'celebration-country-${country?.code ?? 'none'}',
                    ),
                    title: Text(country?.name ?? 'Not selected'),
                    selected: country?.code == widget.selectedCode,
                    trailing: country?.code == widget.selectedCode
                        ? const Icon(Icons.check_rounded)
                        : null,
                    onTap: () => Navigator.pop(context, country?.code ?? ''),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
