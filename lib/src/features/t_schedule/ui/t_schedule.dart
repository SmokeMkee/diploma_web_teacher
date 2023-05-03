import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../widgets/course_container.dart';
import '../../../widgets/header_widget.dart';
import '../../theme_manager/theme_manager.dart';

class TSchedule extends StatelessWidget {
  const TSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeManager>().theme;


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
          backgroundColor: theme.colors.background,
          body: Column(
            children: [
              const SizedBox(height: 50),
              TabBar(
                unselectedLabelColor: theme.colors.gray600,
                indicatorWeight: 6,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: theme.colors.accent,
                labelColor: theme.colors.accent,
                labelStyle: theme.textStyles.s15w500.copyWith(color: theme.colors.accent),
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
    var theme = context.watch<ThemeManager>().theme;

    return Padding(
      padding: const EdgeInsets.all(6),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: theme.colors.background,
        shadowColor: Colors.white,
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
                       CourseContainer(text: 'IT',),
                      const SizedBox(width: 18),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                'General English',
                                style: theme.textStyles.s15w500,
                              ),
                              const SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: theme.colors.subtitleBg,
                                ),
                                padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 10),
                                child: Text(
                                  'Lecture',
                                  style: theme.textStyles.s14w500.copyWith(color: theme.colors.subtitle),
                                ),
                              )
                            ],
                          ),
                          Text(
                            '08:15-9:15',
                            style: theme.textStyles.s14w400.copyWith(
                              color: theme.colors.gray600,
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