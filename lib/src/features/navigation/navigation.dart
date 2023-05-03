import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../constants/app_styles.dart';
import '../../widgets/log_out.dart';
import '../localization/generated/l10n.dart';
import '../theme_manager/theme_manager.dart';

class Navigation extends StatelessWidget {
  const Navigation({Key? key, required this.switchTo, required this.current,}) : super(key: key);

  final void Function(int) switchTo;
  final int current;
  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Row(
      children: [
        NavigationRail(
          trailing: const LogOutWidget(),
          backgroundColor: theme.colors.background,
          labelType: NavigationRailLabelType.none,
          extended: true,
          destinations: [
            NavigationRailDestination(
              icon: const NavBarProfileIcon(),
              label: NavBarProfileLabel(
                isActive: current == 0,
                label: 'Mary J.',
              ),
            ),
            NavigationRailDestination(
              label: NavBarLabel(isActive: current == 1, label: S.of(context).courses),
              icon: _NavBarSvg(
                isActive: current == 1,
                activeIconPath: AppAssets.svg.coursesBold,
                inactiveIconPath: AppAssets.svg.courses,
              ),
            ),
            NavigationRailDestination(
              label: NavBarLabel(isActive: current == 2, label: S.of(context).groups),
              icon: _NavBarSvg(
                isActive: current == 2,
                activeIconPath: AppAssets.svg.coursesBold,
                inactiveIconPath: AppAssets.svg.courses,
              ),
            ),
            NavigationRailDestination(
              label: NavBarLabel(isActive: current == 3, label: S.of(context).gradeBook),
              icon: _NavBarSvg(
                isActive: current == 3,
                activeIconPath: AppAssets.svg.gradeBookBold,
                inactiveIconPath: AppAssets.svg.gradeBook,
              ),
            ),
            NavigationRailDestination(
              label: NavBarLabel(isActive: current == 4, label: S.of(context).schedule),
              icon: _NavBarSvg(
                isActive: current == 4,
                activeIconPath: AppAssets.svg.scheduleBold,
                inactiveIconPath: AppAssets.svg.schedule,
              ),
            ),
            NavigationRailDestination(
              label: NavBarLabel(isActive: current == 5, label: S.of(context).settings),
              icon: _NavBarSvg(
                isActive: current == 5,
                activeIconPath: AppAssets.svg.settingsBold,
                inactiveIconPath: AppAssets.svg.settings,
              ),
            ),

          ],
          selectedIndex: current,
          onDestinationSelected: (index) => switchTo(index),
        )
      ],
    );
  }
}

class NavBarProfileLabel extends StatelessWidget {
  const NavBarProfileLabel({Key? key, required this.isActive, required this.label}) : super(key: key);
  final bool isActive;
  final String label;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: theme.textStyles.s17w500.copyWith(
            color: isActive ? theme.colors.gray900 : theme.colors.gray600,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        SvgPicture.asset(AppAssets.svg.arrowRight2 , color: isActive ? theme.colors.gray900 : theme.colors.gray600,)
      ],
    );
  }
}

class NavBarProfileIcon extends StatelessWidget {
  const NavBarProfileIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 20.0,
      backgroundImage: NetworkImage(
        'https://thumbs.dreamstime.com/b/businessman-icon-image-male-'
        'avatar-profile-vector-glasses-beard-hairstyle-179728610.jpg',
      ),
      //backgroundColor: Colors.transparent,
    );
  }
}

class NavBarLabel extends StatelessWidget {
  const NavBarLabel({Key? key, required this.isActive, required this.label}) : super(key: key);
  final bool isActive;
  final String label;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Text(
      label,
      style: AppStyles.s15w500.copyWith(
        color: isActive ? theme.colors.gray900 : theme.colors.gray600,
        fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
      ),
      textAlign: TextAlign.center,
      softWrap: false,
      overflow: TextOverflow.fade,
    );
  }
}

class _NavBarSvg extends StatelessWidget {
  const _NavBarSvg({
    required this.isActive,
    required this.activeIconPath,
    required this.inactiveIconPath,
  });

  final bool isActive;
  final String activeIconPath;
  final String inactiveIconPath;

  @override
  Widget build(BuildContext context) {
    var theme  = context.watch<ThemeManager>().theme;

    return SvgPicture.asset(
      isActive ? activeIconPath : inactiveIconPath,
      color: isActive ? theme.colors.gray900 : theme.colors.gray600,
    );
  }
}
