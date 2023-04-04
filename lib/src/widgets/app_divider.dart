import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';


class AppDivider extends StatelessWidget {
  const AppDivider({
    super.key,
    this.color,
    this.height,
    this.margin,
    this.width
  });

  final Color? color;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: margin,
          height: height ?? 1,
          width: width ?? double.infinity,
          color: color ?? AppColors.gray200,
        ),
      ],
    );
  }
}
