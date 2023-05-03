import 'package:diploma_web_teacher/src/features/init/dependencies_provider/dependencies_provider.dart';
import 'package:diploma_web_teacher/src/features/localization/generated/l10n.dart';
import 'package:diploma_web_teacher/src/features/localization/i_locale_repo.dart';
import 'package:diploma_web_teacher/src/features/navigation/app_router/app_router.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
final rootNavigatorKey = GlobalKey<NavigatorState>();

void main() {
  return runApp(
    DependenciesProvider(
      builder: (context) {
        return InheritedProvider<AppRouter>(
          create: (context) => AppRouter(
            GlobalKey<NavigatorState>(),
          ),
          child: ValueListenableBuilder<Locale>(
            valueListenable: context.read<ILocaleRepo>().locale,
            builder: (context, locale, _) {
              return MaterialApp.router(
                scaffoldMessengerKey: scaffoldMessengerKey,
                routerDelegate: context.read<AppRouter>().delegate(),
                routeInformationParser:
                    context.read<AppRouter>().defaultRouteParser(),
                title: 'SimpleEducation',
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                debugShowCheckedModeBanner: false,
                locale: locale,
                supportedLocales: S.delegate.supportedLocales,
              );
            },
          ),
        );
      },
    ),
  );
}
