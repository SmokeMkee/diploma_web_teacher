import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../../widgets/app_text_form_field.dart';
import '../../../localization/generated/l10n.dart';
import '../../../theme_manager/theme_manager.dart';
import '../../password_recovery/ui/password_recovery.dart';
import '../../sign_in/ui/authorization_screen.dart';
import '../../widgets/auth_widget.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Scaffold(
      backgroundColor: theme.colors.background,
      body: AuthScreenWidget(
        secondTitle: S.of(context).verificationCodeByEmail,
        elevatedButtonRightIcon: AppAssets.svg.arrowRight,
        headerTitle: S.of(context).passwordRecovery,
        fields: Form(
          key: formKey,
          child: Column(
            children: [
              AppTextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Error text';
                  } else {
                    return null;
                  }
                },
                hintText: S.of(context).emailAddress,
                hintStyle: theme.textStyles.s15w400.copyWith(color: theme.colors.gray400),
                prefixIcon: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: SvgPicture.asset(
                    AppAssets.svg.email,
                    color: theme.colors.gray200,
                  ),
                ),
              ),
            ],
          ),
        ),
        elevatedButtonText: S.of(context).next,
        textForPassword: S.of(context).rememberPassword,
        navigationButtonText: S.of(context).logInAcc,
        elevatedButtonOnTap: () {
          if (formKey.currentState?.validate() ?? false) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PasswordRecoveryScreen(),
              ),
            );
          }
        },
        navigationButtonOnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AuthorizationScreen()),
          );
        },
      ),
    );
  }
}
