import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';

import 'package:flutter/material.dart';

import '../../auth/sign_in/ui/authorization_screen.dart';
import '../../settings/ui/settings_screen.dart';
import '../../t_courses/t_courses_detailed/ui/t_courses_detailed.dart';
import '../../t_courses/ui/t_courses.dart';
import '../../t_gradebook/t_gradebook_detailed/ui/t_gradebook_detailed.dart';
import '../../t_gradebook/t_gradebook_detailed_group/ui/t_gradebook_detailed_course.dart';
import '../../t_gradebook/ui/t_gradebook.dart';
import '../../t_groups/data/dto/course_dto.dart';
import '../../t_groups/t_group_detailed/ui/t_group_detailed.dart';
import '../../t_groups/ui/t_groups.dart';
import '../../t_profile/ui/t_profile_screen.dart';
import '../../t_schedule/ui/t_schedule.dart';
import '../primary_screen/primary_screen.dart';

export 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: AuthorizationScreen, initial: true),
    CustomRoute(
      page: PrimaryScreen,
      durationInMilliseconds: 500,
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          name: 'TProfileRouter',
          children: [
            AutoRoute(page: TProfileScreen, initial: true),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'TCoursesRouter',
          children: [
            AutoRoute(page: TCourses, initial: true),
            AutoRoute(
              page: TCoursesDetailed,
            ),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'TGroupsRouter',
          children: [
            AutoRoute(page: TGroups, initial: true),
            AutoRoute(page: TGroupDetailed)
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'TGradeBookRouter',
          children: [
            AutoRoute(page: TGradeBook, initial: true),
            AutoRoute(
              page: TGradeBookDetailed,
            ),
            AutoRoute(
              page: TGradeBookDetailedGroup,
            )
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'TScheduleRouter',
          children: [
            AutoRoute(page: TSchedule, initial: true),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          name: 'SettingsRouter',
          children: [
            AutoRoute(page: SettingsScreen, initial: true),
          ],
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter([
    super.navigatorKey,
  ]) {
    rootKey = super.navigatorKey;
  }

  static late final GlobalKey<NavigatorState> rootKey;
}
