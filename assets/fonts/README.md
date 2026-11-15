# Bundled Fonts

All fonts in this directory are licensed under the SIL Open Font License 1.1
(see `OFL.txt` in each family folder) and were obtained from Google Fonts
(github.com/google/fonts). They are legal alternatives styled after the
commercial Fontfabric catalog:

| Family     | Style                      | Fontfabric counterpart |
|------------|----------------------------|------------------------|
| Montserrat | geometric sans             | Nexa / Gabriel Sans    |
| Poppins    | geometric rounded sans     | Mont                   |
| Rubik      | friendly sans              | Muller                 |
| Oswald     | condensed sans             | Uni Sans               |
| Nunito     | rounded sans               | —                      |
| Comfortaa  | rounded display            | —                      |

Each family ships Regular (400) and Bold (700) static TTFs, declared in
`pubspec.yaml`. The in-app font picker lives in Settings → Font (Change Font
screen, `lib/screens/font_screen.dart`). Non-Latin scripts (Devanagari, Arabic,
CJK, …) render through the platform fallback fonts via `fontFamilyFallback`,
ordered per locale in `lib/services/font_service.dart`.
