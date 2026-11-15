# Framework control localization policy

The app's own text is translated for every locale in
`AppLocalizations.supportedLocales`. Material, Cupertino, and Widgets controls
are localized by Flutter's built-in delegates when Flutter supports the
requested locale.

Flutter does not provide framework-control translations for every app locale.
For those locales, the app deliberately uses:

- English (`en`) for left-to-right locales.
- Urdu (`ur`) for right-to-left locales.

This fallback applies only to framework-owned text such as date-picker labels,
dialog accessibility labels, modal-barrier descriptions, and text-editing
menus. It does not replace app translations. Urdu is used for unsupported RTL
locales so framework controls keep RTL directionality; a supported RTL locale,
such as Arabic, always keeps Flutter's native strings.

Adding hand-maintained `MaterialLocalizations` or `CupertinoLocalizations`
implementations is not accepted without complete upstream-compatible coverage
of their evolving APIs and native-speaker review. When Flutter adds native
support for a locale, delegate precedence automatically selects it instead of
the fallback.

`test/framework_control_localizations_test.dart` checks every selectable locale
against this policy, including built-in dialog labels, formatted dates,
date-picker semantics, modal-barrier accessibility text, text-editing labels,
and control direction.
