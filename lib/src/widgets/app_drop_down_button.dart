import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';
import '../features/theme_manager/theme_manager.dart';



class AppDropDownButton extends StatelessWidget {
  const AppDropDownButton({Key? key, required this.items, required this.initial, required this.onChanged}) : super(key: key);
  final List<DropdownMenuItem> items;
  final dynamic initial;
  final Function(dynamic) onChanged;


  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colors.gray200, width: 2),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          icon: SvgPicture.asset(
            AppAssets.svg.arrowDown,
            color: theme.colors.gray400,
          ),
          isExpanded: true,
          hint: Text(
            initial,
            style: theme.textStyles.s15w400.copyWith(
              color: theme.colors.gray400,
            ),
          ),
          value: initial,
          items: items,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
