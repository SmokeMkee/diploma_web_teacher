import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:flutter/material.dart';

import '../inclusive_technologies.dart';

class DarkContrastTheme extends MainTheme {
  @override
  final colors = MainThemeColors(
    error: const Color(0xFFFFFFFF),
    //
    accent: const Color(0xFF4D9FEB),
    white: const Color(0xFF000000),
    gray200: const Color(0xFFFFFFFF),
    gray600: const Color(0xFF4D9FEB),
    background: const Color(0xFF000000),
    type: const Color(0xFFFFFFFF),
    success: const Color(0xFF49B66E),
    gray400: const Color(0xFFFFFFFF),
    attended: const Color(0xFFD7EEDF),
    audioLine: const Color(0xFFFFFFFF),
    gray900: const Color(0xFFFFFFFF),
    notAttended: const Color(0xFFF9C8BD),
    primary: const Color(0xFFFFFFFF),
    statusGrade: const Color(0xFFECBC5F),
    subtitle: const Color(0xFF4D9FEB),
    subtitleBg: const Color(0xFFC3DDF5),
  );

  @override
  final textStyles = MainThemeTextStyles(
    s14w400: TextStyle(
      fontSize: 14 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: const Color(0xFFFFFFFF),
      height: 1 * InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s11w400: TextStyle(
      fontSize: 11 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      height: 1 * InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s20w600: TextStyle(
      fontSize: 20 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      color: const Color(0xFFFFFFFF),
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s18w500: TextStyle(
      fontSize: 18 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: const Color(0xFF4D9FEB),
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s15w500: TextStyle(
      fontSize: 15 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: const Color(0xFFFFFFFF),
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s14w500: TextStyle(
      fontSize: 14 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s15w400: TextStyle(
      fontSize: 15 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: const Color(0xFFFFFFFF),
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s15w600: TextStyle(
      fontSize: 15 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s17w500: TextStyle(
      fontSize: 17 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      color: const Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500,
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s30w700: TextStyle(
      fontSize: 30 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
  );
}
