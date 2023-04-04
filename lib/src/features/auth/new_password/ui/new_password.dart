import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_styles.dart';
import '../../../../widgets/app_text_form_field.dart';
import '../../../localization/generated/l10n.dart';
import '../../sign_in/ui/authorization_screen.dart';
import '../../widgets/auth_widget.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final formKey = GlobalKey<FormState>();
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  final TextEditingController controller = TextEditingController();
  final TextEditingController controller2 = TextEditingController();

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
        headerTitle: S.of(context).enterNewPassword,
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
                hintText: S.of(context).password,
                hintStyle: AppStyles.s15w400.copyWith(color: AppColors.gray400),
                obscureText: _obscureText1,
                textEditingController: controller,
                suffixIcon: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: IconButton(
                    onPressed: () {
                      _obscureText1 = !_obscureText1;
                      setState(() {});
                    },
                    icon: SvgPicture.asset(
                      _obscureText1 == true ? AppAssets.svg.slashEye : AppAssets.svg.eye,
                      color: AppColors.gray200,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              AppTextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Error text';
                  } else {
                    return null;
                  }
                },
                hintText: S.of(context).password,
                hintStyle: AppStyles.s15w400.copyWith(color: AppColors.gray400),
                obscureText: _obscureText2,
                textEditingController: controller2,
                suffixIcon: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: IconButton(
                    onPressed: () {
                      _obscureText2 = !_obscureText2;
                      setState(() {});
                    },
                    icon: SvgPicture.asset(
                      _obscureText2 == true ? AppAssets.svg.slashEye : AppAssets.svg.eye,
                      color: AppColors.gray200,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        elevatedButtonText: S.of(context).changePassword,
        textForPassword: S.of(context).rememberPassword,
        navigationButtonText: S.of(context).logInAcc,
        elevatedButtonOnTap: () {
          if (formKey.currentState?.validate() ?? false == true) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AuthorizationScreen()),
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
