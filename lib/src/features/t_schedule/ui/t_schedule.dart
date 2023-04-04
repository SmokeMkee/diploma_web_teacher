import 'package:flutter/material.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../widgets/course_container.dart';
import '../../../widgets/header_widget.dart';

class TSchedule extends StatelessWidget {
  const TSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
      child: DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 200),
            child: HeaderWidget(
              title: 'schedule',
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const SizedBox(height: 50),
              TabBar(
                unselectedLabelColor: AppColors.gray600,
                indicatorWeight: 6,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: AppColors.accent,
                labelColor: AppColors.accent,
                labelStyle: AppStyles.s15w500.copyWith(color: AppColors.accent),
                tabs: const [
                  Tab(
                    text: 'Monday',
                  ),
                  Tab(
                    text: 'Tuesday',
                  ),
                  Tab(
                    text: 'Wednesday',
                  ),
                  Tab(
                    text: 'Thursday',
                  ),
                  Tab(
                    text: 'Friday',
                  ),
                  Tab(
                    text: 'Saturday',
                  ),
                  Tab(
                    text: 'Sunday',
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 22),
              const Expanded(
                child: TabBarView(
                  children: [
                    TScheduleBody(),
                    TScheduleBody(),
                    TScheduleBody(),
                    TScheduleBody(),
                    TScheduleBody(),
                    TScheduleBody(),
                    TScheduleBody(),
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

class TScheduleBody extends StatelessWidget {
  const TScheduleBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              if (index % 2 == 0) {
                return Row(
                  children: [
                    Text('${index + 7}:00'),
                    const SizedBox(width: 30),
                    const Expanded(child: ScheduleCard()),
                  ],
                );
              } else {
                return Row(
                  children:  [
                    Text('${index + 7}:00'),
                    const SizedBox(width: 30),
                    // const Divider(thickness: 13,height: 22, color: Colors.purple,),
                  ],
                );
              }
            },
            itemCount: 12,
          ),
        ),
      ],
    );
  }
}

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({Key? key}) : super(key: key);

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
        child: ClipPath(
          clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(

            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      //const CourseContainer(),
                      const SizedBox(width: 18),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'General English',
                                style: AppStyles.s15w500,
                              ),
                              const SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.subtitleBg,
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10),
                                child: Text(
                                  'Lecture',
                                  style: AppStyles.s14w500.copyWith(color: AppColors.subtitle),
                                ),
                              )
                            ],
                          ),
                          Text(
                            '08:15-9:15',
                            style: AppStyles.s14w400.copyWith(
                              color: AppColors.gray600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}