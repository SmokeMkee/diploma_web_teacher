import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:flutter/material.dart';

import '../inclusive_technologies.dart';

class TritanopiaTheme extends MainTheme{
  @override
  final colors = MainThemeColors(
    error: const Color(0xFFe54849),
    accent: const Color(0xFF4dc0bd),
    white: const Color(0xFFfffeff),
    gray200: const Color(0xFFD8D8D8),
    gray400: const Color(0xFFB2B7B6),
    gray600: const Color(0xFF8b9292),
    gray900: const Color(0xFF51c5b),
    background: const Color(0xFFF8FaFa),
    type: const Color(0xFFE5E5E8),
    success: const Color(0xFF4e8d90),
    attended: const Color(0xFFd8e5e6),
    audioLine: const Color(0xFFf0f3f3),
    notAttended: const Color(0xFFf6c1c2),
    primary: const Color(0xFF111212),
    statusGrade: const Color(0xFFe9878b),
    subtitle: const Color(0xFF538b8a),
    subtitleBg: const Color(0xFFc4eae9),
  );

  @override
  final textStyles = MainThemeTextStyles(
    s14w400: TextStyle(
      fontSize: 14 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s11w400: TextStyle(
      fontSize: 11 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s20w600: TextStyle(
      fontSize: 20 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s18w500: TextStyle(
      fontSize: 18 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s15w500: TextStyle(
      fontSize: 15 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
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