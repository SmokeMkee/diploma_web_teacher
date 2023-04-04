import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';
import 'disabilities_button.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key, required this.title, this.withDisabilities})
      : super(key: key);
  final String title;
  final bool? withDisabilities;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title.toUpperCase(),
            style: AppStyles.s20w600,
          ),
        ),
        CircleAvatar(
          radius: 27,
          backgroundColor: AppColors.gray200.withOpacity(0.2),
          child: SvgPicture.asset(
            AppAssets.svg.notification,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(width: 27),
        if (withDisabilities == null || withDisabilities == true)
          const DisabilitiesButton(),
      ],
    );
  }
}