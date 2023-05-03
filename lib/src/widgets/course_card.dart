import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_styles.dart';
import '../features/localization/generated/l10n.dart';
import '../features/t_courses/data/dto/courses.dart';
import '../features/theme_manager/theme_manager.dart';
import 'course_container.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key, required this.course}) : super(key: key);
  final Courses course;
  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Card(
        color: theme.colors.background,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadowColor: Colors.white,

        child: Padding(
          padding: const EdgeInsets.fromLTRB(31, 27, 22, 62),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CourseContainer(text: course.courseName!.isNotEmpty ? course.courseName![0] : 'C'),
                  SvgPicture.asset(AppAssets.svg.threeDots),
                ],
              ),
              const SizedBox(height: 23),
              Text(
                course.courseName!.isNotEmpty ? course.courseName! : S.of(context).course,
                style: theme.textStyles.s18w500,
              ),
              const SizedBox(height: 9),
              Text(
                S.of(context).teacherAlanAlexander,
                style: theme.textStyles.s14w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
