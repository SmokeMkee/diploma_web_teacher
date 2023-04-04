import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import 'custom_checkbox.dart';

class AppCheckbox extends StatefulWidget {
  const AppCheckbox({
    super.key,
    this.initial = false,
    this.onChanged,
  });

  final Function(bool?)? onChanged;
  final bool initial;

  @override
  AppCheckboxState createState() => AppCheckboxState();
}

class AppCheckboxState extends State<AppCheckbox> {
  late bool value;

  @override
  void initState() {
    value = widget.initial;
    super.initState();
  }

  @override
  void didUpdateWidget(AppCheckbox oldWidget) {
    if (oldWidget.initial != widget.initial) {
      setState(() {
        value = widget.initial;
      });
      super.didUpdateWidget(oldWidget);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomCheckbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      side: const BorderSide(
        width: 1.0,
        color: AppColors.gray200,
      ),
      activeColor: AppColors.accent,
      checkColor: AppColors.white,
      value: value,
      onChanged: (value) {
        if (widget.onChanged == null) return;
        widget.onChanged?.call(value);
        setState(() {
          this.value = value ?? false;
        });
      },
    );
  }
}
