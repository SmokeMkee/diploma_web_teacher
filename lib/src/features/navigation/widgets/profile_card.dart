import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';


class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key, required this.widget, required this.isSelected}) : super(key: key);
  final Widget widget;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 10),
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 250,
          padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(
                  'https://thumbs.dreamstime.com/b/businessman-icon-image-male-'
                  'avatar-profile-vector-glasses-beard-hairstyle-179728610.jpg',
                ),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(width: 18),
              const Expanded(
                child: Text(
                  'Mary J.',
                  style: AppStyles.s17w500,
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
