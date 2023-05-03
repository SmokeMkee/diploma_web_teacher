import 'package:diploma_web_teacher/constants/app_colors.dart';
import 'package:diploma_web_teacher/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/theme_manager/theme_manager.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colors.accent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Text(
          title,
          style: theme.textStyles.s15w500.copyWith(color: theme.colors.white),
        ),
      ),
    );
  }
}
