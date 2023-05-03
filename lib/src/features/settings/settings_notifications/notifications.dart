import 'package:diploma_web_teacher/src/features/theme_manager/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';

class NotificationSettings extends StatelessWidget {
  const NotificationSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40),
          const Text(
            'NOTIFICATIONS',
            style: AppStyles.s18w500,
          ),
          const SizedBox(height: 9),
          Text(
            'Select the types of notifications you will receive.',
            style: AppStyles.s15w500.copyWith(color: AppColors.gray600),
          ),
          const NotificationTile(),
          const NotificationTile(),
          const NotificationTile(),
          const NotificationTile(),
          const NotificationTile(),
          const NotificationTile(),
          const NotificationTile(),
          const NotificationTile(),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Text(
                      'Assignments',
                      style: theme.textStyles.s15w500,
                    ),
                     const SizedBox(height: 6),
                    Text(
                      'Select the types of notifications you will receive.',
                      style: theme.textStyles.s15w500.copyWith(color: AppColors.gray600),
                    ),
                  ],
                ),
              ),
              Material(
                elevation: 5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 32,
                    ),
                    child: Text(
                      'Change',
                      style: AppStyles.s15w500.copyWith(
                        color: AppColors.gray900,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
            ],
          ),
        ),
        const Divider(
          thickness: 2,
          height: 2,
        ),
      ],
    );
  }
}
