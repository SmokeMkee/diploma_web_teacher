import 'package:flutter/material.dart';

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
    s14w400: const TextStyle(
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: Color(0xFFFFFFFF),
    ),
    s11w400: const TextStyle(
      fontSize: 11,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
    s20w600: const TextStyle(
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
        color: Color(0xFFFFFFFF)
    ),
    s18w500: const TextStyle(
      fontSize: 18,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: Color(0xFF121212),
    ),
    s15w500: const TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: Color(0xFF8C8CBA),
    ),
    s14w500: const TextStyle(
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
    s15w400: const TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: Color(0xFFB8B8BB),
    ),
    s15w600: const TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    ),
    s17w500: const TextStyle(
      fontSize: 17,
      fontFamily: 'Poppins',
      color: Color(0xFF121212),
      fontWeight: FontWeight.w500,
    ),
    s30w700: const TextStyle(
      fontSize: 30,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    ),
  );
}
