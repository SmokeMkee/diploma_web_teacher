import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_styles.dart';
import '../../../../widgets/app_back_button.dart';
import '../../../../widgets/course_container.dart';
import '../../../../widgets/header_widget.dart';
import '../../../navigation/app_router/app_router.dart';
import 'widgets/detailed_card.dart';

class TCoursesDetailed extends StatelessWidget {
  const TCoursesDetailed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        text: 'ЕГ',
                      ),
                      const SizedBox(width: 25),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'General English',
                            style: AppStyles.s15w500,
                          ),
                          Text(
                            'Teacher: Alan Alexander',
                            style: AppStyles.s14w400.copyWith(
                              color: AppColors.gray600,
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
                            style: AppStyles.s15w500
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                        icon: SvgPicture.asset(
                          AppAssets.svg.add,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              TabBar(
                unselectedLabelColor: AppColors.gray600,
                indicatorWeight: 6,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: AppColors.accent,
                labelColor: AppColors.accent,
                labelStyle: AppStyles.s15w500.copyWith(color: AppColors.accent),
                tabs: const [
                  Text('Units'),
                  Text('List of students'),
                ],
              ),
              const SizedBox(height: 25),
              const Expanded(
                child: TabBarView(
                  children: [
                    TCoursesDetailedUnits(),
                    TCoursesDetailedListOfStudents(),
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

class TCoursesDetailedUnits extends StatelessWidget {
  const TCoursesDetailedUnits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GestureDetector(
          child: const CreateUnitCard(),
        ),
        ...List.generate(
          4,
          (index) {
            return GestureDetector(
              // onTap: () => context.router.push(
              //   const TCoursesDetailedRoute(),
              // ),
              child: const CoursesDetailedCard(),
            );
          },
        ),
      ],
    );
  }
}

class CreateUnitCard extends StatelessWidget {
  const CreateUnitCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(
          color: AppColors.gray200,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.svg.addCircleBold),
            const SizedBox(width: 12),
            Text(
              'Create new unit',
              style: AppStyles.s15w500.copyWith(
                color: AppColors.gray600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TCoursesDetailedListOfStudents extends StatelessWidget {
  const TCoursesDetailedListOfStudents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, int index) {
      return const TGroupCoursesCard(nameGroup: '12',);
    });
  }
}

class TGroupCoursesCard extends StatelessWidget {
  const TGroupCoursesCard({Key? key, required this.nameGroup})
      : super(key: key);
  final String nameGroup;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(vertical: 6),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  CourseContainer(
                    text: nameGroup[0] + nameGroup[1].toUpperCase(),
                  ),
                  const SizedBox(width: 18),
                  Text(
                    nameGroup,
                    style: AppStyles.s15w500,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(AppAssets.svg.threeDots),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
