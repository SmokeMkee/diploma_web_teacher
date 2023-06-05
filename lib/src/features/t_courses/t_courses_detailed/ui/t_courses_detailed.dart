import 'package:diploma_web_teacher/src/features/t_courses/t_courses_detailed/ui/widgets/course_unit.dart';
import 'package:diploma_web_teacher/src/features/t_courses/t_courses_detailed/ui/widgets/group_courses_card.dart';
import 'package:diploma_web_teacher/src/features/t_groups/data/dto/course_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../widgets/app_back_button.dart';
import '../../../../widgets/course_container.dart';
import '../../../../widgets/header_widget.dart';
import '../../../localization/generated/l10n.dart';
import '../../../navigation/app_router/app_router.dart';
import '../../../theme_manager/theme_manager.dart';
import '../data/bloc/courses_detailed_bloc.dart';

class TCoursesDetailed extends StatelessWidget {
  const TCoursesDetailed(
      {Key? key, required this.courseId, required this.courseName})
      : super(key: key);
  final int courseId;
  final String courseName;

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;

    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 200),
            child: HeaderWidget(
              withDisabilities: false,
              title: 'Courses',
            ),
          ),
          body: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      AppBackButton(
                        onTap: () {
                          context.router.popAndPush(const TCoursesRoute());
                        },
                      ),
                      const SizedBox(width: 34),
                      CourseContainer(
                        text: courseName[0].toUpperCase(),
                      ),
                      const SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            courseName,
                            style: theme.textStyles.s15w500,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              TabBar(
                unselectedLabelColor: theme.colors.gray600,
                indicatorWeight: 6,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: theme.colors.accent,
                labelColor: theme.colors.accent,
                labelStyle: theme.textStyles.s15w500
                    .copyWith(color: theme.colors.accent),
                tabs: [
                  Text(S.of(context).units),
                  Text(S.of(context).listOfStudents),
                ],
              ),
              const SizedBox(height: 25),
              Expanded(
                child: TabBarView(
                  children: [
                    TCoursesDetailedUnits(
                      groupId: courseId,
                      courseName: courseName,
                    ),
                    TCoursesDetailedListOfStudents(
                      courseId: courseId,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TCoursesDetailedListOfStudents extends StatefulWidget {
  const TCoursesDetailedListOfStudents({Key? key, required this.courseId})
      : super(key: key);
  final int courseId;

  @override
  State<TCoursesDetailedListOfStudents> createState() =>
      _TCoursesDetailedListOfStudentsState();
}

class _TCoursesDetailedListOfStudentsState
    extends State<TCoursesDetailedListOfStudents> {
  @override
  void didChangeDependencies() {
    context
        .read<CoursesDetailedBloc>()
        .add(FetchGroupsInCourse(courseId: widget.courseId));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoursesDetailedBloc, CoursesDetailedState>(
      builder: (context, state) {
        if (state is CoursesDetailedLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is CoursesDetailedGroupsData) {
          return state.list.isEmpty
              ? Text('ds')
              : ListView.builder(
                  itemCount: state.list.length,
                  itemBuilder: (context, int index) {
                    return GestureDetector(
                      onTap: () {
                        context.router.push(
                          TGroupDetailedRoute(
                            group: GroupDTO(
                              groupName: state.list[index].groupName ?? '',
                              id: state.list[index].groupId ?? 0,
                              userId: state.list[index].userId ?? 0,
                            ),
                          ),
                        );
                      },
                      child: TGroupCoursesCard(
                        nameGroup: state.list[index].groupName ?? '',
                      ),
                    );
                  },
                );
        }
        if (state is CoursesDetailedError) {
          return const Center(
            child: Text('something Error'),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
