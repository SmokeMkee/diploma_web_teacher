import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';
import '../features/localization/generated/l10n.dart';
import '../features/theme_manager/theme_manager.dart';
import 'app_filter_buttun.dart';
import 'app_text_form_field.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Row(
      children: [
        SizedBox(
          width: 350,
          child: AppTextFormField(
            hintText: S.of(context).search,
            hintStyle: theme.textStyles.s14w500.copyWith(color:theme.colors.gray400),
            prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: SvgPicture.asset(
                AppAssets.svg.search,
                color: theme.colors.gray200,
              ),
            ),
          ),
        ),
        const SizedBox(width: 23),
        const AppFilterButton(),
      ],
    );
  }
}