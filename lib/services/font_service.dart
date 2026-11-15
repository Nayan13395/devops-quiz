import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../l10n/app_localizations.dart';

/// App fonts bundled under `assets/fonts/` (all SIL OFL 1.1, from
/// github.com/google/fonts) plus the platform's own font.
enum AppFont {
  system(null),
  montserrat('Montserrat'),
  poppins('Poppins'),
  rubik('Rubik'),
  oswald('Oswald'),
  nunito('Nunito'),
  comfortaa('Comfortaa');

  const AppFont(this.family);

  /// Family name declared in pubspec.yaml; `null` keeps the platform font.
  final String? family;

  String label(AppLocalizations l10n) => family ?? l10n.fontSystemDefault;

  String description(AppLocalizations l10n) => switch (this) {
    AppFont.system => l10n.fontDescSystem,
    AppFont.montserrat => l10n.fontDescGeometric,
    AppFont.poppins => l10n.fontDescGeometricRounded,
    AppFont.rubik => l10n.fontDescFriendly,
    AppFont.oswald => l10n.fontDescCondensed,
    AppFont.nunito => l10n.fontDescRounded,
    AppFont.comfortaa => l10n.fontDescRoundedDisplay,
  };
}

class FontService {
  FontService._();

  static const String selectedFontKey = 'selected_app_font_v1';

  static Future<void> saveFont(AppFont font) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(selectedFontKey, font.name);
  }

  /// Returns [AppFont.system] when nothing (or an unknown value) is saved.
  static Future<AppFont> loadFont() async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getString(selectedFontKey);
    return AppFont.values.firstWhere(
      (font) => font.name == saved,
      orElse: () => AppFont.system,
    );
  }

  // =========================================================
  // NON-LATIN FALLBACK
  //
  // The bundled fonts only cover Latin (some also Cyrillic). Any glyph
  // they lack is looked up in these families, in order, and finally in the
  // platform's locale-aware fallback. Families missing on a platform are
  // skipped, so the list mixes Android/Noto, Windows and Apple names.
  // The current language's script goes first so e.g. Urdu keeps Nastaliq
  // and Japanese/Chinese keep their own Han glyph variants.
  // =========================================================

  static const List<String> _devanagari = [
    'Noto Sans Devanagari',
    'Kohinoor Devanagari',
  ];
  static const List<String> _bengali = ['Noto Sans Bengali', 'Kohinoor Bangla'];
  static const List<String> _arabic = ['Noto Naskh Arabic', 'Geeza Pro'];

  static const Map<String, List<String>> _scriptFallbacks = {
    'hi': _devanagari,
    'mr': _devanagari,
    'ne': _devanagari,
    'sa': _devanagari,
    'mai': _devanagari,
    'doi': _devanagari,
    'gom': _devanagari,
    'bn': _bengali,
    'as': _bengali,
    'ta': ['Noto Sans Tamil', 'Tamil Sangam MN'],
    'te': ['Noto Sans Telugu', 'Kohinoor Telugu'],
    'kn': ['Noto Sans Kannada', 'Kannada Sangam MN'],
    'ml': ['Noto Sans Malayalam', 'Malayalam Sangam MN'],
    'gu': ['Noto Sans Gujarati', 'Gujarati Sangam MN'],
    'pa': ['Noto Sans Gurmukhi', 'Gurmukhi MN'],
    'or': ['Noto Sans Oriya', 'Oriya Sangam MN'],
    'mni': ['Noto Sans Meetei Mayek'],
    'sat': ['Noto Sans Ol Chiki'],
    'ar': _arabic,
    'sd': _arabic,
    'ur': ['Noto Nastaliq Urdu', ..._arabic],
    'ja': ['Noto Sans CJK JP', 'Noto Sans JP', 'Hiragino Sans', 'Yu Gothic UI'],
    'zh': [
      'Noto Sans CJK SC',
      'Noto Sans SC',
      'PingFang SC',
      'Microsoft YaHei UI',
    ],
  };

  static const List<String> _sharedFallbacks = [
    'Roboto',
    'Noto Sans',
    'Segoe UI',
    'Nirmala UI',
    'Noto Sans Devanagari',
    'Noto Sans Bengali',
    'Noto Sans Tamil',
    'Noto Sans Telugu',
    'Noto Sans Kannada',
    'Noto Sans Malayalam',
    'Noto Sans Gujarati',
    'Noto Sans Gurmukhi',
    'Noto Sans Oriya',
    'Noto Sans Meetei Mayek',
    'Noto Sans Ol Chiki',
    'Noto Naskh Arabic',
    'Segoe UI Historic',
  ];

  static List<String> fallbackFamiliesFor(Locale? locale) {
    final primary = _scriptFallbacks[locale?.languageCode] ?? const [];
    return [
      ...primary,
      for (final family in _sharedFallbacks)
        if (!primary.contains(family)) family,
    ];
  }

  /// Returns [theme] with [font] applied to every text style the app uses.
  /// [AppFont.system] leaves the theme untouched.
  static ThemeData applyToTheme(
    ThemeData theme,
    AppFont font, {
    Locale? locale,
  }) {
    final family = font.family;
    if (family == null) return theme;
    final fallback = fallbackFamiliesFor(locale);
    TextStyle? withFont(TextStyle? style) =>
        style?.copyWith(fontFamily: family, fontFamilyFallback: fallback);

    return theme.copyWith(
      textTheme: theme.textTheme.apply(
        fontFamily: family,
        fontFamilyFallback: fallback,
      ),
      primaryTextTheme: theme.primaryTextTheme.apply(
        fontFamily: family,
        fontFamilyFallback: fallback,
      ),
      // AppBar title styles are not merged with the text theme.
      appBarTheme: theme.appBarTheme.copyWith(
        titleTextStyle: withFont(theme.appBarTheme.titleTextStyle),
        toolbarTextStyle: withFont(theme.appBarTheme.toolbarTextStyle),
      ),
    );
  }

  /// Style that renders text in [font] regardless of the font applied
  /// app-wide (used for previews).
  static TextStyle previewStyle(
    BuildContext context,
    AppFont font, {
    TextStyle? base,
  }) {
    final style = base ?? const TextStyle();
    final family = font.family;
    if (family != null) {
      return style.copyWith(
        fontFamily: family,
        fontFamilyFallback: fallbackFamiliesFor(
          Localizations.maybeLocaleOf(context),
        ),
      );
    }
    final platformStyle = Typography.material2021(
      platform: Theme.of(context).platform,
    ).black.bodyMedium;
    return style.copyWith(
      fontFamily: platformStyle?.fontFamily,
      fontFamilyFallback: platformStyle?.fontFamilyFallback,
    );
  }
}
