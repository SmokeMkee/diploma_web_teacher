import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../widgets/header_widget.dart';
import '../../localization/generated/l10n.dart';
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
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 200),
          child: HeaderWidget(
            title: 'settings',
          ),
        ),
        backgroundColor: theme.colors.background,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              AdditionalSettings(),

            ],
          ),
        ),
      ),
    );
  }
}
