import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';
import '../features/theme_manager/theme_manager.dart';


class DisabilitiesButton extends StatelessWidget {
  const DisabilitiesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Container(
      decoration: BoxDecoration(
        color: theme.colors.gray200.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
      child: Row(
        children: [
          SvgPicture.asset(
            AppAssets.svg.accessibility,
            color: theme.colors.primary,
          ),
          const SizedBox(width: 16),
           Text(
            'Version for people with disabilities',
            style: theme.textStyles.s14w500,
          )
        ],
      ),
    );
  }
}
