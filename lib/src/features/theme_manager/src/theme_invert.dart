import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:flutter/material.dart';

class InvertTheme extends MainTheme{
  @override
  final colors = MainThemeColors(
    error: const Color(0xFFED5B3A),//
    accent: const Color(0xFFB5671F),
    white: const Color(0xFF000000),
    gray200: const Color(0xFF272622),
    gray600: const Color(0xFF747367),
    background: const Color(0xFF070603),
    type: const Color(0xFF747367),
    success: const Color(0xFF49B66E),
    gray400: const Color(0xFF747367),
    attended: const Color(0xFFD7EEDF),
    audioLine: const Color(0xFFF0F0F6),
    gray900: const Color(0xFFAEAD9A),
    notAttended: const Color(0xFFF9C8BD),
    primary: const Color(0xFFFFFFFF),
    statusGrade: const Color(0xFFECBC5F),
    subtitle: const Color(0xFF9A7141),
    subtitleBg: const Color(0xFF321D04),
  );

  @override
  final textStyles = MainThemeTextStyles(
    s14w400: const TextStyle(
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: Color(0xFF747367),
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
      color: Color(0xFFFFFFFF),
    ),
    s15w500: const TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: Color(0xFF747367),
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
      color: Color(0xFF747367),
    ),
    s15w600: const TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    ),
    s17w500: const TextStyle(
      fontSize: 17,
      fontFamily: 'Poppins',
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500,
    ),
    s30w700: const TextStyle(
      fontSize: 30,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    ),
  );
}