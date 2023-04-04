import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';
import 'app_filter_buttun.dart';
import 'app_text_form_field.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 350,
          child: AppTextFormField(
            hintText: 'search',
            hintStyle: AppStyles.s14w500.copyWith(color: AppColors.gray400),
            prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: SvgPicture.asset(
                AppAssets.svg.search,
                color: AppColors.gray200,
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