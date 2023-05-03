import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_dark_contrast.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_high_satruation.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_invert.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_light.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_low_saturation.dart';
import 'package:flutter/widgets.dart';

class ThemeManager extends ChangeNotifier {
  MainTheme? _theme;
  ThemeType? _themeType;
  int textScale = 1;

  MainTheme get theme => _theme ?? LightTheme();

  ThemeType get themeType => _themeType ?? ThemeType.invert;
  final Map<ThemeType, MainTheme> _themesMap = {
    ThemeType.light: LightTheme(),
    ThemeType.invert: InvertTheme(),
    ThemeType.darkContrast: DarkContrastTheme(),
    ThemeType.highSaturation: HighSaturationTheme(),
    ThemeType.lowSaturation: LowSaturationTheme(),
  };

  void init({required ThemeType defaultThemeType}) {
    _themeType = defaultThemeType;
  }

  void changeTextScale(int num) {
    notifyListeners();
  }

  Future<void> changeTheme(ThemeType themeType) async {
    if (themeType == ThemeType.invert) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
    if (themeType == ThemeType.darkContrast) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
    if (themeType == ThemeType.light) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
    if (themeType == ThemeType.highSaturation) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
    if (themeType == ThemeType.lowSaturation) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
  }
}
