import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../widgets/app_divider.dart';
import '../../../widgets/app_drop_down_button.dart';
import '../settings_notifications/notifications.dart';

class AdditionalSettings extends StatelessWidget {
  const AdditionalSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                'LANGUAGE',
                style: AppStyles.s18w500,
              ),
              const SizedBox(height: 9),
              Text(
                'Select the types of notifications you will receive.',
                style: AppStyles.s15w500.copyWith(color: AppColors.gray600),
              ),
              const SizedBox(height: 21),
              const DropButton(),
              const SizedBox(height: 52),
              AppDivider(
                width: constraints.maxWidth,
              ),
              const SizedBox(height: 50),
              const Text(
                'INCLUSIVE TECHNOLOGY',
                style: AppStyles.s18w500,
              ),
              const SizedBox(height: 9),
              Text(
                'Select system features for people with disabilities',
                style: AppStyles.s15w500.copyWith(color: AppColors.gray600),
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

class DropButton extends StatefulWidget {
  const DropButton({Key? key}) : super(key: key);

  @override
  State<DropButton> createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  String categoryValue = 'USA';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.gray200, width: 2),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          focusColor: Colors.transparent,
          icon: SvgPicture.asset(
            AppAssets.svg.arrowDown,
            color: AppColors.gray400,
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
  const LanguageTile({Key? key, required this.title, required this.svgPath}) : super(key: key);
  final String title;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(svgPath),
        const SizedBox(width: 15),
        Text(
          title,
          style: AppStyles.s15w400.copyWith(
            color: AppColors.gray400,
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'INCLUSIVE TECHNOLOGY',
                  style: AppStyles.s15w500,
                ),
                const SizedBox(height: 9),
                Text(
                  'Select system features for people with disabilities',
                  style: AppStyles.s15w500.copyWith(color: AppColors.gray600),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 330,
            child: AppDropDownButton(
              items: [
                DropdownMenuItem(
                  value: 'A',
                  child: Text(
                    'A (0%)',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                    ),
                  ),
                ),
                DropdownMenuItem(
                  value: 'B',
                  child: Text(
                    'Almaty',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
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
