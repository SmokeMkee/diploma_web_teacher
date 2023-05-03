import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';
import '../features/theme_manager/theme_manager.dart';



class AppFilterButton extends StatelessWidget {
  const AppFilterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 15),
        backgroundColor:theme.colors.accent,
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: () {},
      label: Text(
        'Filter',
        style: theme.textStyles.s14w500.copyWith(color: theme.colors.gray400),
      ),
      icon: SvgPicture.asset(
        AppAssets.svg.filter,
        width: 24,
        height: 24,
        color: theme.colors.gray400,
      ),
    );
  }
}
