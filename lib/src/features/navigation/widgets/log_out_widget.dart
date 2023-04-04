import 'package:diploma_web_teacher/src/features/localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../app_router/app_router.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 46),
          child: GestureDetector(
             onTap: () => context.router.navigate(const AuthorizationScreenRoute()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppAssets.svg.logOut,

                  color: AppColors.gray600,
                ),
                const SizedBox(width: 20),
                Text(
                  S.of(context).logOut,
                  style: AppStyles.s15w500.copyWith(color: AppColors.gray600),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
