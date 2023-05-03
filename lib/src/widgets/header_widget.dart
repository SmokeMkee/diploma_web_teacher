import 'package:diploma_web_teacher/src/features/theme_manager/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

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
    var theme = context.watch<ThemeManager>().theme;
    return Row(
      children: [
        Expanded(
          child: Text(
            title.toUpperCase(),
            style: theme.textStyles.s20w600.copyWith(color: theme.colors.primary),
          ),
        ),
        CircleAvatar(
          radius: 27,
          backgroundColor: theme.colors.gray200.withOpacity(0.2),
          child: SvgPicture.asset(
            AppAssets.svg.notification,
            color: theme.colors.primary,
          ),
        ),
        const SizedBox(width: 27),
        // if (withDisabilities == null || withDisabilities == true)
        //   const DisabilitiesButton(),
      ],
    );
  }
}