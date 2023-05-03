import 'package:diploma_web_teacher/src/features/auth/data/auth_bloc.dart';
import 'package:diploma_web_teacher/src/features/t_profile/data/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../../widgets/app_text_form_field.dart';
import '../../../localization/generated/l10n.dart';
import '../../../navigation/app_router/app_router.dart';
import '../../../theme_manager/theme_manager.dart';
import '../../reset_password/ui/reset_password_screen.dart';
import '../../widgets/auth_widget.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({Key? key}) : super(key: key);

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  final formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
   String? errorAuth;
  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Scaffold(
      backgroundColor: theme.colors.background,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if(state is  AuthError){
            setState(() {
              errorAuth = state.message;
            });
          }
          if (state is AuthSuccessLogIn) {
            setState(() {
              errorAuth = null;
            });
            context.router.push(PrimaryScreenRoute());
          }
        },
        child: AuthScreenWidget(
          headerTitle: S.of(context).logIn,
          fields: Form(
            key: formKey,
            child: Column(
              children: [
                AppTextFormField(
                  errorText: errorAuth,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите email';
                    } else {
                      return null;
                    }
                  },
                  hintText: S.of(context).emailAddress,
                  textEditingController: nameController,
                  hintStyle: theme.textStyles.s15w400
                      .copyWith(color: theme.colors.gray400),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: SvgPicture.asset(
                      AppAssets.svg.email,
                      color: theme.colors.gray200,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                AppTextFormField(
                  errorText: errorAuth,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Введите пароль';
                    } else {
                      return null;
                    }
                  },
                  hintText: S.of(context).password,
                  hintStyle: theme.textStyles.s15w400
                      .copyWith(color: theme.colors.gray400),
                  obscureText: _obscureText,
                  prefixIcon: IconButton(
                    onPressed: () {
                      _obscureText = !_obscureText;
                      setState(() {});
                    },
                    icon: SvgPicture.asset(
                      AppAssets.svg.password,
                      color: theme.colors.gray200,
                    ),
                  ),
                  textEditingController: passwordController,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: IconButton(
                      onPressed: () {
                        _obscureText = !_obscureText;
                        setState(() {});
                      },
                      icon: SvgPicture.asset(
                        _obscureText == true
                            ? AppAssets.svg.slashEye
                            : AppAssets.svg.eye,
                        color: theme.colors.gray200,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          elevatedButtonText: S.of(context).logIn,
          textForPassword: S.of(context).forgotPassword,
          navigationButtonText: S.of(context).resetPassword,
          elevatedButtonOnTap: () {
            if (formKey.currentState?.validate() ?? false == true) {
              errorAuth = '';
              context.read<AuthBloc>().add(
                    SignInEvent(
                      password: passwordController.text.trim(),
                      email: nameController.text.trim(),
                    ),
                  );
            }
          },
          navigationButtonOnTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ResetPasswordScreen()),
            );
          },
        ),
      ),
    );
  }
}
