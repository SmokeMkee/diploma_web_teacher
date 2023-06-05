import 'package:flutter/material.dart';

import '../inclusive_technologies.dart';
import 'main_theme.dart';

class LowSaturationTheme extends MainTheme {
  @override
  final colors = MainThemeColors(
    error: const Color(0xFFEDC1B7),
    accent: const Color(0xFFB3CAE0),
    white: const Color(0xFFFFFFFF),
    gray200: const Color(0xFFDBDBDD),
    gray600: const Color(0xFF949498),
    background: const Color(0xFFFAFBFC),
    type: const Color(0xFFEAE9EC),
    success: const Color(0xFF95B6A0),
    gray400: const Color(0xFFB8B8BB),
    attended: const Color(0xFFE7EEE9),
    audioLine: const Color(0xFFF4F4F6),
    gray900: const Color(0xFF5F5F65),
    notAttended: const Color(0xFFF9EAE7),
    primary: const Color(0xFF121212),
    statusGrade: const Color(0xFFECDDC1),
    subtitle: const Color(0xFF85909B),
    subtitleBg: const Color(0xFFE6EDF5),
  );

  @override
  final textStyles = MainThemeTextStyles(
    s14w400: TextStyle(
      fontSize: 14 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: const Color(0xFFFFFFFF),
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
        color: const Color(0xFFFFFFFF),
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s18w500: TextStyle(
      fontSize: 18 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: const Color(0xFF121212),
      height:1* InclusiveTechnologies.lineHeight,
      letterSpacing: 1 * InclusiveTechnologies.lineSpacing,
    ),
    s15w500: TextStyle(
      fontSize: 15 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: const Color(0xFF8C8CBA),
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
      color: const Color(0xFFB8B8BB),
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
      color: const Color(0xFF121212),
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
