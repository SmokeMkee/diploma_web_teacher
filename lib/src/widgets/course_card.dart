import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_styles.dart';
import 'course_container.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key, required this.nameCourse}) : super(key: key);
  final String nameCourse;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(31, 27, 22, 62),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CourseContainer(text: nameCourse[0]),
                  SvgPicture.asset(AppAssets.svg.threeDots),
                ],
              ),
              const SizedBox(height: 23),
              Text(
                nameCourse,
                style: AppStyles.s18w500,
              ),
              const SizedBox(height: 9),
              Text(
                'Teacher: Alan Alexander',
                style: AppStyles.s14w400.copyWith(color: AppColors.gray600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
