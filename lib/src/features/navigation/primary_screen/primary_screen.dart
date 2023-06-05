import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../constants/app_colors.dart';
import '../../theme_manager/theme_manager.dart';
import '../app_router/app_router.dart';
import '../navigation.dart';

class PrimaryScreen extends StatelessWidget {
  const PrimaryScreen({super.key, this.name});

  final String? name;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: AutoTabsScaffold(
          backgroundColor: theme.colors.background,
          builder: (context, child, animation) => Row(
            children: [
              const SizedBox(
                width: 250,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: Container(
                  height: double.infinity,
                  width: 5,
                  color: theme.colors.gray200,
                ),
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
            TGroupsRouter(children: [TGroupsRoute()]),
            TGradeBookRouter(children: [TGradeBookRoute()]),
            // TScheduleRouter(
            //   children: [TScheduleRoute()],
            // ),
            SettingsRouter(
              children: [SettingsScreenRoute()],
            ),
          ],
          floatingActionButtonLocation:
              FloatingActionButtonLocation.startDocked,
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
