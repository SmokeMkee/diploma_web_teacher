import 'package:diploma_web_teacher/src/features/auth/data/auth_bloc.dart';
import 'package:diploma_web_teacher/src/features/auth/repo/repo.dart';
import 'package:diploma_web_teacher/src/features/t_courses/data/bloc/courses_bloc.dart';
import 'package:diploma_web_teacher/src/features/t_courses/data/repo/repo_courses.dart';
import 'package:diploma_web_teacher/src/features/t_courses/t_courses_detailed/data/bloc/courses_detailed_bloc.dart';
import 'package:diploma_web_teacher/src/features/t_courses/t_courses_detailed/data/repo/repo_courses.dart';
import 'package:diploma_web_teacher/src/features/t_groups/data/repo/repo_group.dart';
import 'package:diploma_web_teacher/src/features/t_groups/t_group_detailed/data/bloc/group_detailed_bloc.dart';
import 'package:diploma_web_teacher/src/features/t_groups/t_group_detailed/data/repo/repo_detailed_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../t_groups/data/bloc/group_bloc.dart';
import '../../../t_profile/data/bloc/profile_bloc.dart';
import '../../../t_profile/data/repo/repo_profile.dart';

class BlocsProvider extends StatelessWidget {
  const BlocsProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(
            repo: RepositoryProvider.of<RepoAuth>(context),
          ),
        ),
        BlocProvider(
          create: (context) => ProfileBloc(
            repo: RepositoryProvider.of<RepoProfile>(context),
          ),
        ),
        BlocProvider(
          create: (context) => GroupBloc(
            repo: RepositoryProvider.of<RepoGroup>(context),
          )..add(FetchGroupEvent()),
        ),
        BlocProvider(
          create: (context) => GroupDetailedBloc(
            repo: RepositoryProvider.of<RepoGroupDetailed>(context),
          ),
        ),
        BlocProvider(
          create: (context) => CoursesBloc(
            repo: RepositoryProvider.of<RepoCourses>(context),
          )..add(FetchCoursesEvent()),
        ),
        BlocProvider(
          create: (context) => CoursesDetailedBloc(
            repo: RepositoryProvider.of<RepoCoursesUnits>(context),
          ),
        ),
      ],
      child: child,
    );
  }
}
