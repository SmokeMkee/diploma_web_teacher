import 'package:flutter/material.dart';

enum ThemeType {
  light,
  invert,
  darkContrast,
  highSaturation,
  lowSaturation,
  pratonopia,
  deuteranopia,
  tritanopia,
  achromatopsia,
  protanomaly,
  deuteranomaly,
  tritanomaly,
  achromatomaly,
}

abstract class MainTheme {
  MainThemeColors get colors;

  MainThemeTextStyles get textStyles;
}

class MainThemeColors {
  MainThemeColors(
      {required this.error,
      required this.accent,
      required this.white,
      required this.gray200,
      required this.gray600,
      required this.background,
      required this.type,
      required this.success,
      required this.gray400,
      required this.attended,
      required this.audioLine,
      required this.gray900,
      required this.notAttended,
      required this.primary,
      required this.statusGrade,
      required this.subtitle,
      required this.subtitleBg});

  final Color attended;
  final Color audioLine;
  final Color background;
  final Color error;
  final Color gray200;
  final Color gray400;
  final Color gray600;
  final Color gray900;
  final Color notAttended;
  final Color primary;
  final Color statusGrade;
  final Color subtitle;
  final Color subtitleBg;
  final Color success;
  final Color type;
  final Color white;
  final Color accent;
}

class MainThemeTextStyles {
  final TextStyle s11w400;
  final TextStyle s14w400;
  final TextStyle s14w500;
  final TextStyle s15w400;
  final TextStyle s15w500;
  final TextStyle s15w600;
  final TextStyle s17w500;
  final TextStyle s18w500;
  final TextStyle s20w600;
  final TextStyle s30w700;

  MainThemeTextStyles({
    required this.s14w400,
    required this.s11w400,
    required this.s20w600,
    required this.s18w500,
    required this.s15w500,
    required this.s14w500,
    required this.s15w400,
    required this.s15w600,
    required this.s17w500,
    required this.s30w700,
  });
}
