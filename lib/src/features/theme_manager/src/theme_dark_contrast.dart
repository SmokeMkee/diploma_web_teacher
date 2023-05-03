import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:flutter/material.dart';

class DarkContrastTheme extends MainTheme{
  @override
  final colors = MainThemeColors(
    error: const Color(0xFFFFFFFF),//
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
      color: Color(0xFF4D9FEB),
    ),
    s15w500: const TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      color: Color(0xFFFFFFFF),
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
      color: Color(0xFFFFFFFF),
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