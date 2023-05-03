import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../widgets/app_divider.dart';
import '../../../widgets/app_drop_down_button.dart';
import '../../localization/generated/l10n.dart';
import '../../theme_manager/theme_manager.dart';
import '../settings_notifications/notifications.dart';
import 'data/repo/test.dart';

class AdditionalSettings extends StatelessWidget {
  const AdditionalSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = context.watch<ThemeManager>().theme;
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Text(
                S.of(context).language.toUpperCase(),
                style: _theme.textStyles.s18w500,
              ),
              const SizedBox(height: 9),
              const DropButton(),
              const SizedBox(height: 40),
              Text(
                S.of(context).theme,
                style: _theme.textStyles.s18w500,
              ),
              const SizedBox(height: 9),
              const DropButtonTheme(),

              const SizedBox(height: 52),
              AppDivider(
                width: constraints.maxWidth,
              ),
              const SizedBox(height: 50),
               Text(
                S.of(context).inclusiveTechnology.toUpperCase(),
                style: _theme.textStyles.s18w500,
              ),
              const SizedBox(height: 9),
              Text(
                S.of(context).selectSystemFeaturesForPeopleWithDisabilities,
                style: _theme.textStyles.s14w400.copyWith(color: _theme.colors.gray600),
              ),
              const InclusiveTile(),
              AppDivider(
                width: constraints.maxWidth,
              ),
              const InclusiveTile(),
              AppDivider(
                width: constraints.maxWidth,
              ),
              const InclusiveTile(),
              AppDivider(
                width: constraints.maxWidth,
              ),
              const InclusiveTile(),
              AppDivider(
                width: constraints.maxWidth,
              ),
              const InclusiveTile(),
              AppDivider(
                width: constraints.maxWidth,
              ),
              const InclusiveTile(),
              AppDivider(
                width: constraints.maxWidth,
              ),
              const InclusiveTile(),
              AppDivider(
                width: constraints.maxWidth,
              ),
              const NotificationTile(),
              const NotificationTile(),
            ],
          );
        },
      ),
    );
  }
}

class DropButtonTheme extends StatefulWidget {
  const DropButtonTheme({Key? key}) : super(key: key);

  @override
  State<DropButtonTheme> createState() => _DropButtonThemeState();
}

class _DropButtonThemeState extends State<DropButtonTheme> {
  ThemeType categoryValue = ThemeType.light;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colors.gray200, width: 2),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          focusColor: theme.colors.white,
          icon: SvgPicture.asset(
            AppAssets.svg.arrowDown,
            color: theme.colors.gray400,
          ),

          isExpanded: true,
          hint: Text(
            ThemeType.light.name,
            style: theme.textStyles.s15w400
          ),
          value: categoryValue,
          items: [
            DropdownMenuItem(
              value: ThemeType.light,
              child: Text(
                ThemeType.light.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.darkContrast,
              child: Text(
                ThemeType.darkContrast.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.highSaturation,
              child: Text(
                ThemeType.highSaturation.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.invert,
              child: Text(
                ThemeType.invert.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
            DropdownMenuItem(
              value: ThemeType.lowSaturation,
              child: Text(
                ThemeType.lowSaturation.name,
                style: theme.textStyles.s15w400.copyWith(
                  color: theme.colors.gray400,
                ),
              ),
            ),
          ],
          onChanged: (val) {
            setState(
              () {
                categoryValue = val ?? ThemeType.light;
              },
            );
            context.read<ThemeManager>().changeTheme(val ?? ThemeType.light);
          },
        ),
      ),
    );
  }
}

class DropButton extends StatefulWidget {
  const DropButton({Key? key}) : super(key: key);

  @override
  State<DropButton> createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  String categoryValue = 'USA';

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.colors.gray200, width: 2),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          focusColor: Colors.transparent,
          icon: SvgPicture.asset(
            AppAssets.svg.arrowDown,
            color: theme.colors.gray400,
          ),
          isExpanded: true,
          hint: LanguageTile(
            title: categoryValue,
            svgPath: AppAssets.svg.usa,
          ),
          value: categoryValue,
          items: [
            DropdownMenuItem(
              value: 'USA',
              child: LanguageTile(title: 'English', svgPath: AppAssets.svg.usa),
            ),
            DropdownMenuItem(
              value: 'RUS',
              child: LanguageTile(title: 'Russian', svgPath: AppAssets.svg.rus),
            ),
            DropdownMenuItem(
              value: 'KZ',
              child: LanguageTile(title: 'Kazakh', svgPath: AppAssets.svg.kz),
            ),
          ],
          onChanged: (val) {
            setState(
              () {
                categoryValue = val.toString();
              },
            );
          },
        ),
      ),
    );
  }
}

class LanguageTile extends StatelessWidget {
  const LanguageTile({Key? key, required this.title, required this.svgPath})
      : super(key: key);
  final String title;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Row(
      children: [
        SvgPicture.asset(svgPath),
        const SizedBox(width: 15),
        Text(
          title,
          style: theme.textStyles.s15w400.copyWith(
            color: theme.colors.gray400,
          ),
        ),
      ],
    );
  }
}

class InclusiveTile extends StatelessWidget {
  const InclusiveTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).inclusiveTechnology.toUpperCase(),
                  style: theme.textStyles.s15w500,
                ),
                const SizedBox(height: 9),
                Text(
                  S.of(context).selectSystemFeaturesForPeopleWithDisabilities,
                  style: theme.textStyles.s15w500
                      .copyWith(color: theme.colors.gray600),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 330,
            child: AppDropDownButton(
              items: [
                DropdownMenuItem(
                  value: 'A',
                  child: Text(
                    'A (0%)',
                    style: TextStyle(
                      fontSize: 15,
                      color: theme.colors.primary,
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: 'B',
                  child: Text(
                    S.of(context).almaty,
                    style: TextStyle(
                      fontSize: 15,
                      color: theme.colors.primary,
                    ),
                  ),
                ),
              ],
              initial: 'A (0%)',
            ),
          ),
        ],
      ),
    );
  }
}
