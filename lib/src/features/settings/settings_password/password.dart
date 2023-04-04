import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../widgets/app_text_form_field.dart';

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Text(
          'Password'.toUpperCase(),
          style: AppStyles.s18w500,
        ),
        const SizedBox(height: 9),
        Text(
          'Please enter your current password to change your password.',
          style: AppStyles.s15w500.copyWith(
            color: AppColors.gray600,
          ),
        ),
        const SizedBox(height: 10),
        const PasswordTile(title: 'Current password', placeholder: 'Placeholder'),
        const Divider(
          thickness: 2,
          height: 2,
        ),
        const PasswordTile(title: 'New password', placeholder: 'Placeholder'),
        const Divider(
          thickness: 2,
          height: 2,
        ),
        const PasswordTile(title: 'Confirm new password', placeholder: 'Placeholder'),
        const Divider(
          thickness: 2,
          height: 2,
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.accent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: null,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Text(
                  'Save changes',
                  style: AppStyles.s15w500.copyWith(color: AppColors.white),
                ),
              ),
            ),
            const SizedBox(width: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: AppColors.gray200, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 14),
                child: Text('Cancel', style: AppStyles.s15w500),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PasswordTile extends StatelessWidget {
  const PasswordTile({Key? key, required this.title, required this.placeholder}) : super(key: key);
  final String title;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 28),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: AppStyles.s15w500,
            ),
          ),
          Flexible(
            flex: 3,
            child: SizedBox(
              width: 420,
              child: AppTextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Error text';
                  } else {
                    return null;
                  }
                },
                hintText: placeholder,
                hintStyle: AppStyles.s15w400.copyWith(color: AppColors.gray400),
                prefixIcon: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: SvgPicture.asset(
                    AppAssets.svg.slashEye,
                    color: AppColors.gray200,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
