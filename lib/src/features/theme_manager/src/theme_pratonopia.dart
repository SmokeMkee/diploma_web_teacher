import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:flutter/material.dart';

import '../inclusive_technologies.dart';

class ProtanopiaTheme extends MainTheme{
  @override
  final colors = MainThemeColors(
    error: const Color(0xFFADAC51),//
    accent: const Color(0xFF6B6CCE),
    white: const Color(0xFFFEFFFF),
    gray200: const Color(0xFFD8D8DC),
    gray600: const Color(0xFF8B8B95),
    background: const Color(0xFFF8F8FB),
    type: const Color(0xFFE5E5EA),
    success: const Color(0xFF78797F),
    gray400: const Color(0xFFB2B2B8),
    attended: const Color(0xFFE0E1E2),
    audioLine: const Color(0xFFF0F0F4),
    gray900: const Color(0xFF515160),
    notAttended: const Color(0xFFE3E3B7),
    primary: const Color(0xFF121212),
    statusGrade: const Color(0xFFD7D675),
    subtitle: const Color(0xFF626292),
    subtitleBg: const Color(0xFFCECEEF),
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