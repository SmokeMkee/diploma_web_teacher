import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../constants/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.prefixIcon,
    this.hintText,
    this.suffixIcon,
    this.hintStyle,
  });

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final TextStyle? hintStyle;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide:  const BorderSide(
        width: 2,
        color: AppColors.gray200,
      ),
    );
    return TextField(
      inputFormatters: [
        FilteringTextInputFormatter.deny(
          RegExp(r"[а-яА-Я]"),
        ),
      ],
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: hintStyle,
      ),
    );
  }
}
