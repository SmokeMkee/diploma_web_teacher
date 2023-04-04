import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../constants/app_assets.dart';
import '../../../../../../../constants/app_colors.dart';
import '../../../../../../../constants/app_styles.dart';

class CoursesDetailedCard extends StatelessWidget {
  const CoursesDetailedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 21),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: AppColors.gray200,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.white,
                  child: Text(
                    '1',
                    style: AppStyles.s20w600.copyWith(
                      color: AppColors.gray900,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Text(
                  'Week 1',
                  style: AppStyles.s18w500,
                ),
              ),
              SvgPicture.asset(AppAssets.svg.arrowRight2),
            ],
          ),
        ),
      ),
    );
  }
}