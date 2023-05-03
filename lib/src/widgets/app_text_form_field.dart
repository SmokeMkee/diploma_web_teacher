import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/app_colors.dart';
import '../features/theme_manager/theme_manager.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key,
    this.prefixIcon,
    this.hintText,
    this.suffixIcon,
    this.hintStyle,
    this.validator,
    this.obscureText = false,
    this.textEditingController,
    this.focusNode, this.onChange,  this.errorText,});
  final String? errorText;
  final Widget? prefixIcon;
  final Function(String)? onChange;
  final TextEditingController? textEditingController;
  final Widget? suffixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;
  final bool obscureText;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    var theme  = context.watch<ThemeManager>().theme;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:  BorderSide(
        width: 2,
        color: theme.colors.gray200,
      ),
    );
    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:  BorderSide(
        width: 2,
        color: theme.colors.error,
      ),
    );
    return TextFormField(
      onChanged: onChange,
      focusNode:focusNode,

      style: theme.textStyles.s15w400,
      obscureText: obscureText,
      controller: textEditingController,
      decoration: InputDecoration(
        errorText: errorText,
        enabledBorder: border,
        focusedBorder: border,
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
        hintText: hintText,
        hintStyle: hintStyle,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      validator: validator,
      onSaved: (val) => textEditingController?.text = val ?? '',
    );
  }
}
