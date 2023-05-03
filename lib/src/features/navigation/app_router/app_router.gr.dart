// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthorizationScreenRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const AuthorizationScreen(),
      );
    },
    PrimaryScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PrimaryScreenRouteArgs>(
          orElse: () => const PrimaryScreenRouteArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: PrimaryScreen(
          key: args.key,
          name: args.name,
        ),
        durationInMilliseconds: 500,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TProfileRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    TCoursesRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    TGroupsRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    TGradeBookRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    TScheduleRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    TProfileScreenRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const TProfileScreen(),
      );
    },
    TCoursesRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const TCourses(),
      );
    },
    TCoursesDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<TCoursesDetailedRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: TCoursesDetailed(
          key: args.key,
          groupId: args.groupId,
        ),
      );
    },
    TGroupDetailedRoute.name: (routeData) {
      final args = routeData.argsAs<TGroupDetailedRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: TGroupDetailed(
          key: args.key,
          group: args.group,
        ),
      );
    },
    TGroupsRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const TGroups(),
      );
    },
    TGradeBookRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const TGradeBook(),
      );
    },
    TGradeBookDetailedRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const TGradeBookDetailed(),
      );
    },
    TGradeBookDetailedGroupRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const TGradeBookDetailedGroup(),
      );
    },
    TScheduleRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const TSchedule(),
      );
    },
    SettingsScreenRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          AuthorizationScreenRoute.name,
          path: '/',
        ),
        RouteConfig(
          PrimaryScreenRoute.name,
          path: '/primary-screen',
          children: [
            RouteConfig(
              TProfileRouter.name,
              path: 'empty-router-page',
              parent: PrimaryScreenRoute.name,
              children: [
                RouteConfig(
                  TProfileScreenRoute.name,
                  path: '',
                  parent: TProfileRouter.name,
                )
              ],
            ),
            RouteConfig(
              TCoursesRouter.name,
              path: 'empty-router-page',
              parent: PrimaryScreenRoute.name,
              children: [
                RouteConfig(
                  TCoursesRoute.name,
                  path: '',
                  parent: TCoursesRouter.name,
                ),
                RouteConfig(
                  TCoursesDetailedRoute.name,
                  path: 't-courses-detailed',
                  parent: TCoursesRouter.name,
                ),
                RouteConfig(
                  TGroupDetailedRoute.name,
                  path: 't-group-detailed',
                  parent: TCoursesRouter.name,
                ),
              ],
            ),
            RouteConfig(
              TGroupsRouter.name,
              path: 'empty-router-page',
              parent: PrimaryScreenRoute.name,
              children: [
                RouteConfig(
                  TGroupsRoute.name,
                  path: '',
                  parent: TGroupsRouter.name,
                ),
                RouteConfig(
                  TGroupDetailedRoute.name,
                  path: 't-group-detailed',
                  parent: TGroupsRouter.name,
                ),
              ],
            ),
            RouteConfig(
              TGradeBookRouter.name,
              path: 'empty-router-page',
              parent: PrimaryScreenRoute.name,
              children: [
                RouteConfig(
                  TGradeBookRoute.name,
                  path: '',
                  parent: TGradeBookRouter.name,
                ),
                RouteConfig(
                  TGradeBookDetailedRoute.name,
                  path: 't-grade-book-detailed',
                  parent: TGradeBookRouter.name,
                ),
                RouteConfig(
                  TGradeBookDetailedGroupRoute.name,
                  path: 't-grade-book-detailed-group',
                  parent: TGradeBookRouter.name,
                ),
              ],
            ),
            RouteConfig(
              TScheduleRouter.name,
              path: 'empty-router-page',
              parent: PrimaryScreenRoute.name,
              children: [
                RouteConfig(
                  TScheduleRoute.name,
                  path: '',
                  parent: TScheduleRouter.name,
                )
              ],
            ),
            RouteConfig(
              SettingsRouter.name,
              path: 'empty-router-page',
              parent: PrimaryScreenRoute.name,
              children: [
                RouteConfig(
                  SettingsScreenRoute.name,
                  path: '',
                  parent: SettingsRouter.name,
                )
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [AuthorizationScreen]
class AuthorizationScreenRoute extends PageRouteInfo<void> {
  const AuthorizationScreenRoute()
      : super(
          AuthorizationScreenRoute.name,
          path: '/',
        );

  static const String name = 'AuthorizationScreenRoute';
}

/// generated route for
/// [PrimaryScreen]
class PrimaryScreenRoute extends PageRouteInfo<PrimaryScreenRouteArgs> {
  PrimaryScreenRoute({
    Key? key,
    String? name,
    List<PageRouteInfo>? children,
  }) : super(
          PrimaryScreenRoute.name,
          path: '/primary-screen',
          args: PrimaryScreenRouteArgs(
            key: key,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'PrimaryScreenRoute';
}

class PrimaryScreenRouteArgs {
  const PrimaryScreenRouteArgs({
    this.key,
    this.name,
  });

  final Key? key;

  final String? name;

  @override
  String toString() {
    return 'PrimaryScreenRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [EmptyRouterPage]
class TProfileRouter extends PageRouteInfo<void> {
  const TProfileRouter({List<PageRouteInfo>? children})
      : super(
          TProfileRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'TProfileRouter';
}

/// generated route for
/// [EmptyRouterPage]
class TCoursesRouter extends PageRouteInfo<void> {
  const TCoursesRouter({List<PageRouteInfo>? children})
      : super(
          TCoursesRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'TCoursesRouter';
}

/// generated route for
/// [EmptyRouterPage]
class TGroupsRouter extends PageRouteInfo<void> {
  const TGroupsRouter({List<PageRouteInfo>? children})
      : super(
          TGroupsRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'TGroupsRouter';
}

/// generated route for
/// [EmptyRouterPage]
class TGradeBookRouter extends PageRouteInfo<void> {
  const TGradeBookRouter({List<PageRouteInfo>? children})
      : super(
          TGradeBookRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'TGradeBookRouter';
}

/// generated route for
/// [EmptyRouterPage]
class TScheduleRouter extends PageRouteInfo<void> {
  const TScheduleRouter({List<PageRouteInfo>? children})
      : super(
          TScheduleRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'TScheduleRouter';
}

/// generated route for
/// [EmptyRouterPage]
class SettingsRouter extends PageRouteInfo<void> {
  const SettingsRouter({List<PageRouteInfo>? children})
      : super(
          SettingsRouter.name,
          path: 'empty-router-page',
          initialChildren: children,
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [TProfileScreen]
class TProfileScreenRoute extends PageRouteInfo<void> {
  const TProfileScreenRoute()
      : super(
          TProfileScreenRoute.name,
          path: '',
        );

  static const String name = 'TProfileScreenRoute';
}

/// generated route for
/// [TCourses]
class TCoursesRoute extends PageRouteInfo<void> {
  const TCoursesRoute()
      : super(
          TCoursesRoute.name,
          path: '',
        );

  static const String name = 'TCoursesRoute';
}

/// generated route for
/// [TCoursesDetailed]
class TCoursesDetailedRoute extends PageRouteInfo<TCoursesDetailedRouteArgs> {
  TCoursesDetailedRoute({
    Key? key,
    required int groupId,
  }) : super(
          TCoursesDetailedRoute.name,
          path: 't-courses-detailed',
          args: TCoursesDetailedRouteArgs(
            key: key,
            groupId: groupId,
          ),
        );

  static const String name = 'TCoursesDetailedRoute';
}

class TCoursesDetailedRouteArgs {
  const TCoursesDetailedRouteArgs({
    this.key,
    required this.groupId,
  });

  final Key? key;

  final int groupId;

  @override
  String toString() {
    return 'TCoursesDetailedRouteArgs{key: $key, groupId: $groupId}';
  }
}

/// generated route for
/// [TGroupDetailed]
class TGroupDetailedRoute extends PageRouteInfo<TGroupDetailedRouteArgs> {
  TGroupDetailedRoute({
    Key? key,
    required GroupDTO group,
  }) : super(
          TGroupDetailedRoute.name,
          path: 't-group-detailed',
          args: TGroupDetailedRouteArgs(
            key: key,
            group: group,
          ),
        );

  static const String name = 'TGroupDetailedRoute';
}

class TGroupDetailedRouteArgs {
  const TGroupDetailedRouteArgs({
    this.key,
    required this.group,
  });

  final Key? key;

  final GroupDTO group;

  @override
  String toString() {
    return 'TGroupDetailedRouteArgs{key: $key, group: $group}';
  }
}

/// generated route for
/// [TGroups]
class TGroupsRoute extends PageRouteInfo<void> {
  const TGroupsRoute()
      : super(
          TGroupsRoute.name,
          path: '',
        );

  static const String name = 'TGroupsRoute';
}

/// generated route for
/// [TGradeBook]
class TGradeBookRoute extends PageRouteInfo<void> {
  const TGradeBookRoute()
      : super(
          TGradeBookRoute.name,
          path: '',
        );

  static const String name = 'TGradeBookRoute';
}

/// generated route for
/// [TGradeBookDetailed]
class TGradeBookDetailedRoute extends PageRouteInfo<void> {
  const TGradeBookDetailedRoute()
      : super(
          TGradeBookDetailedRoute.name,
          path: 't-grade-book-detailed',
        );

  static const String name = 'TGradeBookDetailedRoute';
}

/// generated route for
/// [TGradeBookDetailedGroup]
class TGradeBookDetailedGroupRoute extends PageRouteInfo<void> {
  const TGradeBookDetailedGroupRoute()
      : super(
          TGradeBookDetailedGroupRoute.name,
          path: 't-grade-book-detailed-group',
        );

  static const String name = 'TGradeBookDetailedGroupRoute';
}

/// generated route for
/// [TSchedule]
class TScheduleRoute extends PageRouteInfo<void> {
  const TScheduleRoute()
      : super(
          TScheduleRoute.name,
          path: '',
        );

  static const String name = 'TScheduleRoute';
}

/// generated route for
/// [SettingsScreen]
class SettingsScreenRoute extends PageRouteInfo<void> {
  const SettingsScreenRoute()
      : super(
          SettingsScreenRoute.name,
          path: '',
        );

  static const String name = 'SettingsScreenRoute';
}
