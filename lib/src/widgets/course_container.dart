import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';

class CourseContainer extends StatelessWidget {
  const CourseContainer({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0xff6B75C7),
      ),
      child: Center(
        child: Text(
          text,
          style: AppStyles.s18w500.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
