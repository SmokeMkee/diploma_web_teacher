import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';


class DisabilitiesButton extends StatelessWidget {
  const DisabilitiesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.gray200.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
      child: Row(
        children: [
          SvgPicture.asset(
            AppAssets.svg.accessibility,
            color: AppColors.primary,
          ),
          const SizedBox(width: 16),
          const Text(
            'Version for people with disabilities',
            style: AppStyles.s14w500,
          )
        ],
      ),
    );
  }
}
