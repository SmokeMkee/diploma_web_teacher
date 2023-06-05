import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:flutter/material.dart';

import '../inclusive_technologies.dart';

class AchromatopsiaTheme extends MainTheme{
  @override
  final colors = MainThemeColors(
    error: const Color(0xFF828282),
    accent: const Color(0xFF888888),
    white: const Color(0xFFffffff),
    gray200: const Color(0xFFD9D9D9),
    gray400: const Color(0xFFB3B3B3),
    gray600: const Color(0xFF8d8d8d),
    gray900: const Color(0xFF535353),
    background: const Color(0xFFf9f9f9),
    type: const Color(0xFFE5E8E8),
    success: const Color(0xFF8d8d8d),
    attended: const Color(0xFFe5e5e5),
    audioLine: const Color(0xFFf0f0f0),
    notAttended: const Color(0xFFd5d5d5),
    primary: const Color(0xFF121212),
    statusGrade: const Color(0xFFbfbfbf),
    subtitle: const Color(0xFF707070),
    subtitleBg: const Color(0xFFd7d7d7),
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