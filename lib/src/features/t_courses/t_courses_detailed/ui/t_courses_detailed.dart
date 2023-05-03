import 'package:diploma_web_teacher/src/features/t_courses/t_courses_detailed/ui/widgets/course_unit.dart';
import 'package:diploma_web_teacher/src/features/t_courses/t_courses_detailed/ui/widgets/group_courses_card.dart';
import 'package:diploma_web_teacher/src/features/t_groups/data/dto/course_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_styles.dart';
import '../../../../widgets/app_back_button.dart';
import '../../../../widgets/course_container.dart';
import '../../../../widgets/header_widget.dart';
import '../../../navigation/app_router/app_router.dart';
import '../../../theme_manager/theme_manager.dart';

class TCoursesDetailed extends StatelessWidget {
  const TCoursesDetailed({Key? key, required this.groupId}) : super(key: key);
  final int groupId;

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
                      const CourseContainer(
                        text: 'GE',
                      ),
                      const SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'General English',
                            style: theme.textStyles.s15w500,
                          ),
                          Text(
                            'Teacher: Alan Alexander',
                            style: theme.textStyles.s14w400.copyWith(
                              color: theme.colors.gray600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        label: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          child: Text(
                            'Add students',
                            style: theme.textStyles.s15w500
                                .copyWith(color: theme.colors.white),
                          ),
                        ),
                        icon: SvgPicture.asset(
                          AppAssets.svg.add,
                          color: theme.colors.white,
                        ),
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
                tabs: const [
                  Text('Units'),
                  Text('List of students'),
                ],
              ),
              const SizedBox(height: 25),
              Expanded(
                child: TabBarView(
                  children: [
                    TCoursesDetailedUnits(
                      groupId: groupId,
                    ),
                    const TCoursesDetailedListOfStudents(),
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

class TCoursesDetailedListOfStudents extends StatelessWidget {
  const TCoursesDetailedListOfStudents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, int index) {
        return GestureDetector(
          onTap: () {
            context.router.push(TGroupDetailedRoute(
                group: GroupDTO(
                    groupName: 'ITIS-1914', id: 11214852, userId: 21321)));
          },
          child: const TGroupCoursesCard(
            nameGroup: 'ITIS-1914',
          ),
        );
      },
    );
  }
}
