import 'package:diploma_web_teacher/src/features/theme_manager/inclusive_technologies.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/theme_manager.dart';
import 'package:flutter/material.dart';

import 'main_theme.dart';

class LightTheme extends MainTheme {
  @override
  final colors = MainThemeColors(
    error: const Color(0xFFED5B3A),
    accent: const Color(0xFF4A98E0),
    white: const Color(0xFFFFFFFF),
    gray200: const Color(0xFFD8D9DD),
    gray600: const Color(0xFF8B8C98),
    background: const Color(0xFFF8F9FC),
    type: const Color(0xFFE6E5EC),
    success: const Color(0xFF49B66E),
    gray400: const Color(0xFFB2B2BB),
    attended: const Color(0xFFD7EEDF),
    audioLine: const Color(0xFFF0F0F6),
    gray900: const Color(0xFF515265),
    notAttended: const Color(0xFFF9C8BD),
    primary: const Color(0xFF121212),
    statusGrade: const Color(0xFFECBC5F),
    subtitle: const Color(0xFF52789B),
    subtitleBg: const Color(0xFFC3DDF5),
  );

  @override
  final textStyles = MainThemeTextStyles(
    s14w400:  TextStyle(
      fontSize: 14* InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
    s11w400:  TextStyle(
      fontSize: 11* InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
    s20w600: const TextStyle(
      fontSize: 20,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    ),
    s18w500: const TextStyle(
      fontSize: 18,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
    s15w500:  TextStyle(
      fontSize: 15 * InclusiveTechnologies.textScale,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
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
    ),
    s15w600: const TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
    ),
    s17w500: const TextStyle(
      fontSize: 17,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    ),
    s30w700: const TextStyle(
      fontSize: 30,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    ),
  );
}
