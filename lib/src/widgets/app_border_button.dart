import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';
import '../features/theme_manager/theme_manager.dart';

class AppBorderButton extends StatelessWidget {
  const AppBorderButton({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colors.white,
        shape: RoundedRectangleBorder(
          side:  BorderSide(color: theme.colors.gray200, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Text(title, style: theme.textStyles.s14w400.copyWith(color: AppColors.primary)),
      ),
    );
  }
}