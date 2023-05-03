import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:flutter/material.dart';

class HighSaturationTheme extends MainTheme{
  @override
  final colors = MainThemeColors(
    error: const Color(0xFFED1200),//
    accent: const Color(0xFF0074E0),
    white: const Color(0xFFFFFFFF),
    gray200: const Color(0xFFC7CEEF),
    gray600: const Color(0xFF8C8CBA),
    background: const Color(0xFFF6F8FD),
    type: const Color(0xFFE3E2EC),
    success: const Color(0xFF13B64A),
    gray400: const Color(0xFFAEAEBB),
    attended: const Color(0xFFC0EED0),
    audioLine: const Color(0xFFEAEAF6),
    gray900: const Color(0xFF3D3F65),
    notAttended: const Color(0xFFF99781),
    primary: const Color(0xFF000000),
    statusGrade: const Color(0xFFEC8C00),
    subtitle: const Color(0xFF00549E),
    subtitleBg: const Color(0xFF82C4F8),
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
      color: Color(0xFF000000),
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
      color: Color(0xFFAEAEBB),
    ),
    s15w600: const TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    ),
    s17w500: const TextStyle(
      fontSize: 17,
      fontFamily: 'Poppins',
      color: Color(0xFF000000),
      fontWeight: FontWeight.w500,
    ),
    s30w700: const TextStyle(
      fontSize: 30,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    ),
  );
}