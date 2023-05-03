import 'package:diploma_web_teacher/src/features/t_courses/ui/widget/create_course_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../widgets/course_card.dart';
import '../../../widgets/header_widget.dart';
import '../../../widgets/search_widget.dart';
import '../../localization/generated/l10n.dart';
import '../../navigation/app_router/app_router.dart';
import '../../theme_manager/theme_manager.dart';
import '../data/bloc/courses_bloc.dart';

class TCourses extends StatelessWidget {
  const TCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 200),
            child: HeaderWidget(
              title: S.of(context).courses,
            ),
          ),
          backgroundColor: theme.colors.background,
          body: Column(
            children: [
              const SizedBox(width: 30),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SearchWidget(),
                    const SizedBox(height: 40),
                    TabBar(
                      labelColor: theme.colors.accent,
                      labelStyle: theme.textStyles.s15w500,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 6,
                      indicatorColor: theme.colors.accent,
                      tabs: [
                        Tab(text: S.of(context).allCourses),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: TabBarView(
                        children: [
                          BlocBuilder<CoursesBloc, CoursesState>(
                            builder: (context, state) {
                              if (state is CoursesLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                              if (state is CoursesData) {
                                return GridView.count(
                                  crossAxisCount: 4,
                                  mainAxisSpacing: 10.0,
                                  crossAxisSpacing: 10.0,
                                  children: [
                                    const CreateCourseCard(),
                                    ...List.generate(
                                      state.listCourses.length,
                                      (index) {
                                        return GestureDetector(
                                          onTap: () {
                                            context.router.push(
                                             TCoursesDetailedRoute(groupId:  state.listCourses[index].id ?? 0),
                                          );
                                          },
                                          child: CourseCard(
                                            course: state.listCourses[index],
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                );
                              }
                              if (state is CoursesError) {
                                return const Center(
                                  child: SizedBox.shrink(),
                                );
                              }
                              return const SizedBox.shrink();
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
