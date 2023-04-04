import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';



class AppFilterButton extends StatelessWidget {
  const AppFilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 15),
        backgroundColor: const Color(0xFFF8F9FC),
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {},
      label: Text(
        'Filter',
        style: AppStyles.s14w500.copyWith(color: AppColors.gray400),
      ),
      icon: SvgPicture.asset(
        AppAssets.svg.filter,
        width: 24,
        height: 24,
        color: AppColors.gray400,
      ),
    );
  }
}
