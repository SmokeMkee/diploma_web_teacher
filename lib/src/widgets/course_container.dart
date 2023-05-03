import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';
import '../features/theme_manager/theme_manager.dart';

class CourseContainer extends StatelessWidget {
  const CourseContainer({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

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
          style: theme.textStyles.s18w500.copyWith(color: theme.colors.white),
        ),
      ),
    );
  }
}
