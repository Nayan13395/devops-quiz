import 'package:flutter/material.dart';

import 'services/font_service.dart';

class FontProvider extends ChangeNotifier {
  FontProvider({AppFont initialFont = AppFont.system})
    : _selectedFont = initialFont;

  AppFont _selectedFont;

  AppFont get selectedFont => _selectedFont;

  Future<void> loadFont() async {
    final font = await FontService.loadFont();
    if (font == _selectedFont) return;
    _selectedFont = font;
    notifyListeners();
  }

  Future<void> setFont(AppFont font) async {
    if (font == _selectedFont) return;
    _selectedFont = font;
    notifyListeners();
    await FontService.saveFont(font);
  }

  ThemeData applyTo(ThemeData theme, {Locale? locale}) =>
      FontService.applyToTheme(theme, _selectedFont, locale: locale);
}
