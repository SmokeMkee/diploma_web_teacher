import 'package:diploma_web_teacher/src/features/t_groups/data/repo/repo_group.dart';
import 'package:diploma_web_teacher/src/features/t_groups/t_group_detailed/data/repo/repo_detailed_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../../api/api.dart';
import '../../../localization/i_locale_repo.dart';
import '../../../localization/locale_repo.dart';
import '../../../t_courses/data/repo/repo_courses.dart';
import '../../../t_profile/data/repo/repo_profile.dart';

class ReposProvider extends StatelessWidget {
  const ReposProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        RepositoryProvider(
          create: (context) => Api(),
        ),
        RepositoryProvider<ILocaleRepo>(
          create: (context) => LocaleRepo(),
        ),
        Provider(
          create: (context) => RepoProfile(
            api: RepositoryProvider.of<Api>(context),
          ),
        ),
        Provider(
          create: (context) => RepoGroup(
            api: RepositoryProvider.of<Api>(context),
          ),
        ),
        Provider(
          create: (context) => RepoGroupDetailed(
            api: RepositoryProvider.of<Api>(context),
          ),
        ),
        Provider(
          create: (context) => RepoCourses(
            api: RepositoryProvider.of<Api>(context),
          ),
        ),

      ],
      child: child,
    );
  }
}
