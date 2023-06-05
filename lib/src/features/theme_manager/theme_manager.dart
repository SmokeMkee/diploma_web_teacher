import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_achromatomaly.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_achromatopsia.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_dark_contrast.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_deuteranomaly.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_deuteranopia.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_high_satruation.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_invert.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_light.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_low_saturation.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_pratonopia.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_protanomaly.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_tritanomaly.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/theme_tritanopia.dart';
import 'package:flutter/widgets.dart';

class ThemeManager extends ChangeNotifier {
  MainTheme? _theme;
  ThemeType? _themeType;

  MainTheme get theme => _theme ?? LightTheme();

  ThemeType get themeType => _themeType ?? ThemeType.invert;
  final Map<ThemeType, MainTheme> _themesMap = {
    ThemeType.light: LightTheme(),
    ThemeType.invert: InvertTheme(),
    ThemeType.darkContrast: DarkContrastTheme(),
    ThemeType.highSaturation: HighSaturationTheme(),
    ThemeType.lowSaturation: LowSaturationTheme(),
    ThemeType.pratonopia: ProtanopiaTheme(),
    ThemeType.deuteranopia: DeuteranopiaTheme(),
    ThemeType.tritanopia: TritanopiaTheme(),
    ThemeType.achromatopsia: AchromatopsiaTheme(),
    ThemeType.protanomaly: ProtanomalyTheme(),
    ThemeType.deuteranomaly: DeuteranomalyTheme(),
    ThemeType.tritanomaly: TritanomalyTheme(),
    ThemeType.achromatomaly: AchromatomalyTheme(),
  };

  void init({required ThemeType defaultThemeType}) {
    _themeType = defaultThemeType;
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

    if (themeType == ThemeType.pratonopia) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
    if (themeType == ThemeType.deuteranopia) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
    if (themeType == ThemeType.tritanopia) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
    if (themeType == ThemeType.achromatopsia) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
    if (themeType == ThemeType.protanomaly) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
    if (themeType == ThemeType.deuteranomaly) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
    if (themeType == ThemeType.tritanomaly) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
    if (themeType == ThemeType.achromatomaly) {
      _themeType = themeType;
      _theme = _themesMap[themeType];
      notifyListeners();
    }
  }
}
