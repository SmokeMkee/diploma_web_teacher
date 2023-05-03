import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../localization/generated/l10n.dart';
import '../../../navigation/app_router/app_router.dart';
import '../../../theme_manager/theme_manager.dart';

class LeftSideBar extends StatelessWidget {
  const LeftSideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        PhotoWidget(),
        ResumeWidget(),
      ],
    );
  }
}

class ResumeWidget extends StatelessWidget {
  const ResumeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          S.of(context).resume,
          style: theme.textStyles.s17w500,
        ),
        const SizedBox(height: 9),
        Text(
          S.of(context).hereYouCanCreateYourResume,
          style: theme.textStyles.s15w400.copyWith(color: theme.colors.gray400),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            const CircleAvatar(
              radius: 70.0,
              backgroundImage: NetworkImage(
                'https://thumbs.dreamstime.com/b/businessman-icon-image-male-'
                'avatar-profile-vector-glasses-beard-hairstyle-179728610.jpg',
              ),
            ),
            const SizedBox(height: 20),
             Text(
              S.of(context).maryJane,
              style: theme.textStyles.s18w500,
            ),
            const SizedBox(height: 6),
            Text(
              'Student',
              style: theme.textStyles.s15w400.copyWith(color: theme.colors.gray600),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: AppElevatedButton(
                    title: S.of(context).uploadPhoto,
                    onTap: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: AppBorderButton(
                    title: S.of(context).delete,
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colors.accent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Text(
          title,
          style: theme.textStyles.s15w500.copyWith(color: theme.colors.white),
        ),
      ),
    );
  }
}

class AppBorderButton extends StatelessWidget {
  const AppBorderButton({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colors.white,
        shape: RoundedRectangleBorder(
          side:  BorderSide(color: theme.colors.gray200, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Text(title, style: theme.textStyles.s15w500),
      ),
    );
  }
}
