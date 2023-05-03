import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../localization/generated/l10n.dart';
import '../../../theme_manager/theme_manager.dart';
import 'create_course_dialog.dart';

class CreateCourseCard extends StatelessWidget {
  const CreateCourseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Padding(
      padding: const EdgeInsets.all(3),
      child: GestureDetector(
        onTap: () {
          showAlertDialogCreateCourse(context);
        },
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: theme.colors.background,
          shadowColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(31, 27, 22, 62),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: theme.colors.gray200.withOpacity(0.2),
                  child: SvgPicture.asset(AppAssets.svg.add , color: theme.colors.primary,),
                ),
                const SizedBox(height: 17),
                Text(
                  S.of(context).createNewCourse,
                  style: theme.textStyles.s14w400.copyWith(
                    color: theme.colors.gray600,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
