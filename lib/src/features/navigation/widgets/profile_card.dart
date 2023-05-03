import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../theme_manager/theme_manager.dart';


class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.widget, required this.isSelected}) : super(key: key);
  final Widget widget;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 250,
          padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
          decoration: BoxDecoration(
            color: theme.colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               CircleAvatar(
                radius: 25.0,
                backgroundImage: const NetworkImage(
                  'https://thumbs.dreamstime.com/b/businessman-icon-image-male-'
                  'avatar-profile-vector-glasses-beard-hairstyle-179728610.jpg',
                ),
                backgroundColor: theme.colors.background,
              ),
              const SizedBox(width: 18),
               Expanded(
                child: Text(
                  'Mary J.',
                  style: theme.textStyles.s17w500,
                ),
              ),
              SvgPicture.asset(AppAssets.svg.arrowRight2)
            ],
          ),
        ),
      ),
    );
  }
}
