import 'package:devops_quiz/models/app_theme.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('character and Army themes have unique definitions and palettes', () {
    const types = [
      AppThemeType.army,
      AppThemeType.spiderMan,
      AppThemeType.krrish,
      AppThemeType.avengers,
      AppThemeType.ironMan,
      AppThemeType.captainAmerica,
      AppThemeType.thor,
      AppThemeType.hulk,
      AppThemeType.blackWidow,
      AppThemeType.hawkeye,
      AppThemeType.blackPanther,
      AppThemeType.scarletWitch,
      AppThemeType.vision,
      AppThemeType.antMan,
      AppThemeType.captainMarvel,
      AppThemeType.doctorStrange,
      AppThemeType.dc,
      AppThemeType.batman,
      AppThemeType.superman,
      AppThemeType.wonderWoman,
      AppThemeType.flash,
      AppThemeType.aquaman,
      AppThemeType.greenLantern,
      AppThemeType.cyborg,
      AppThemeType.supergirl,
    ];

    final themeTypes = AppThemes.all.map((theme) => theme.type).toSet();
    expect(themeTypes, containsAll(types));
    expect(AppThemes.all, hasLength(themeTypes.length));

    for (final type in types) {
      final theme = AppThemes.getTheme(type);
      expect(theme.requiredPoints, greaterThan(0), reason: theme.name);
      expect(theme.tertiaryColor, isNotNull, reason: theme.name);
      expect(theme.name, isNotEmpty);
    }
  });
}
