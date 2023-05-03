import 'package:diploma_web_teacher/src/features/t_courses/t_courses_detailed/data/dto/unit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../constants/app_assets.dart';
import '../../../../theme_manager/theme_manager.dart';

class CoursesDetailedCard extends StatelessWidget {
  const CoursesDetailedCard(
      {Key? key, required this.unit, required this.number})
      : super(key: key);
  final Unit unit;
  final int number;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

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
                backgroundColor: theme.colors.gray200,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: theme.colors.white,
                  child: Text(
                    number.toString(),
                    style: theme.textStyles.s20w600.copyWith(
                      color: theme.colors.gray900,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  unit.sectionName ?? 'Unit name',
                  style: theme.textStyles.s18w500,
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
