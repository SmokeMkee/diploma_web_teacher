import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../../widgets/app_text_form_field.dart';
import '../../../localization/generated/l10n.dart';
import '../../new_password/ui/new_password.dart';
import '../../sign_in/ui/authorization_screen.dart';
import '../../widgets/auth_widget.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen({Key? key}) : super(key: key);

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: AuthScreenWidget(
        secondTitle: S.of(context).verificationCodeByEmail,
        elevatedButtonRightIcon: AppAssets.svg.arrowRight,
        headerTitle: S.of(context).passwordRecovery,
        fields: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppTextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Error text';
                  } else {
                    return null;
                  }
                },
                hintText: S.of(context).verificationCode,
                hintStyle: AppStyles.s15w400.copyWith(color: AppColors.gray400),
                prefixIcon: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: SvgPicture.asset(
                    AppAssets.svg.password,
                    color: AppColors.gray200,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  S.of(context).sendAgain,
                ),
              ),
            ],
          ),
        ),
        elevatedButtonText: S.of(context).next,
        textForPassword: S.of(context).rememberPassword,
        navigationButtonText: S.of(context).logInAcc,
        elevatedButtonOnTap: () {
          if (formKey.currentState?.validate() ?? false == true) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NewPassword()),
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
