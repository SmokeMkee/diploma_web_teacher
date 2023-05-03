import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../widgets/header_widget.dart';
import '../../theme_manager/theme_manager.dart';
import '../settings_additional/additional.dart';
import '../settings_notifications/notifications.dart';
import '../settings_password/password.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 200),
            child: HeaderWidget(
              title: 'settings',
            ),
          ),
          backgroundColor: theme.colors.background,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 550,
                child: TabBar(

                  unselectedLabelColor: theme.colors.gray600,
                  indicatorWeight: 6,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: theme.colors.accent,
                  labelColor: theme.colors.accent,
                  labelStyle: theme.textStyles.s15w500.copyWith(color: theme.colors.accent),
                  tabs: const [
                    Tab(
                      text: 'Password',
                    ),
                    Tab(
                      text: 'Notifications',
                    ),
                    Tab(
                      text: 'Additional Settings',
                    ),
                  ],
                ),
              ),
               const Expanded(child: TabBarView(children: [Password(), NotificationSettings(), AdditionalSettings()]))
            ],
          ),
        ),
      ),
    );
  }
}
