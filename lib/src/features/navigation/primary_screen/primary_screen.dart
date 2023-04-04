import 'package:flutter/material.dart';

import '../../../../../constants/app_colors.dart';
import '../app_router/app_router.dart';
import '../navigation.dart';

class PrimaryScreen extends StatelessWidget {
  const PrimaryScreen({super.key,  this.name});
  final String? name;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: AutoTabsScaffold(
          backgroundColor: AppColors.white,
          builder: (context, child, animation) => Row(
            children: [
              const SizedBox(
                width: 250,
              ),
              Expanded(child: child)
            ],
          ),
          routes: const [
            TProfileRouter(
              children: [TProfileScreenRoute()],
            ),
            TCoursesRouter(
              children: [TCoursesRoute()],
            ),
            TGroupsRouter(
                children: [
                  TGroupsRoute()
                ]
            ),
            TGradeBookRouter(
                children: [
                  TGradeBookRoute()
                ]
            ),
            TScheduleRouter(
              children: [TScheduleRoute()],
            ),
            SettingsRouter(
              children: [SettingsScreenRoute()],
            ),
          ],
          floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
          floatingActionButtonBuilder: (context, tabsRouter) {
            return Navigation(
              current: tabsRouter.activeIndex,
              switchTo: tabsRouter.setActiveIndex,
            );
          },
        ),
      ),
    );
  }
}
