import 'package:auto_route/auto_route.dart';
import 'package:diploma_web_teacher/src/features/auth/data/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../features/localization/generated/l10n.dart';
import '../features/navigation/app_router/app_router.dart';
import '../features/theme_manager/theme_manager.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Expanded(
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 46),
          child: GestureDetector(
            onTap: () {
              context.read<AuthBloc>().add(LogOutEvent());
              context.router.navigate(const AuthorizationScreenRoute());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppAssets.svg.logOut,

                  color: theme.colors.gray600,
                ),
                const SizedBox(width: 20),
                Text(
                  S.of(context).logOut,
                  style: theme.textStyles.s15w500.copyWith(color: theme.colors.gray600),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
