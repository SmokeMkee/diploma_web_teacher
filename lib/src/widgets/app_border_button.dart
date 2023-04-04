import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';

class AppBorderButton extends StatelessWidget {
  const AppBorderButton({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: AppColors.gray200, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Text(title, style: AppStyles.s15w500),
      ),
    );
  }
}