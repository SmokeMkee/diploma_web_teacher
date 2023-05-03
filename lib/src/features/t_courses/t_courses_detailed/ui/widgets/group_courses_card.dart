import 'package:auto_route/auto_route.dart';
import 'package:diploma_web_teacher/src/widgets/course_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_styles.dart';
import '../../../../../widgets/app_border_button.dart';
import '../../../../../widgets/app_eleavted_button.dart';
import '../../../../theme_manager/theme_manager.dart';

class TGroupCoursesCard extends StatelessWidget {
  const TGroupCoursesCard({Key? key, required this.nameGroup})
      : super(key: key);
  final String nameGroup;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Padding(
      padding: const EdgeInsets.all(6),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  CourseContainer(
                    text: nameGroup[0] + nameGroup[1].toUpperCase(),
                  ),
                  const SizedBox(width: 18),
                  Text(
                    nameGroup,
                    style: theme.textStyles.s15w500,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  deleteGroupDialog(context);
                },
                icon: SvgPicture.asset(AppAssets.svg.threeDots),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


void deleteGroupDialog(BuildContext context){
  showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      var theme = context.watch<ThemeManager>().theme;

      return AlertDialog(
      titleTextStyle: theme.textStyles.s20w600,
      titlePadding: const EdgeInsets.symmetric(vertical: 29),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      actions: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Expanded(
              child: AppElevatedButton(
                title: 'Delete',
                onTap: () {
                  context.router.pop();
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AppBorderButton(
                title: 'Cancel',
                onTap: () {
                  context.router.pop();
                },
              ),
            ),
          ],
        )
      ],
      title: SvgPicture.asset(AppAssets.svg.boldDelete),
      content: SizedBox(
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:  [
              Text('Are you sure you want to delete group?' , style: theme.textStyles.s15w500,)
          ],
        ),
      ),
    );
    },
  );

}