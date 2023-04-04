import 'package:flutter/material.dart';

import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_styles.dart';
import '../../../../widgets/app_drop_down_button.dart';
import '../../../../widgets/course_container.dart';
import '../../../../widgets/header_widget.dart';

class TGradeBookDetailedGroup extends StatelessWidget {
  const TGradeBookDetailedGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: const PreferredSize(
            preferredSize: Size(double.infinity, 200),
            child: HeaderWidget(
              title: 'gradebook > general english',
              withDisabilities: false,
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 37),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // AppBackButton(
                      //   onTap: () {
                      //     context.router
                      //         .popAndPush(const TGradeBookDetailedRoute());
                      //   },
                      // ),
                      const SizedBox(width: 34),
                      //const CourseContainer(),
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
                            'ITIS-1914',
                            style: AppStyles.s14w400.copyWith(
                              color: AppColors.gray600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Text(
                    'Attendance: 89.34%',
                    style: AppStyles.s15w500,
                  )
                ],
              ),

              const SizedBox(height: 34),
              TabBar(
                unselectedLabelColor: AppColors.gray600,
                indicatorWeight: 6,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: AppColors.accent,
                labelColor: AppColors.accent,
                labelStyle: AppStyles.s15w500.copyWith(color: AppColors.accent),
                tabs: const [
                  Tab(
                    text: 'Grades',
                  ),
                  Tab(
                    text: 'Attendance',
                  ),
                ],
              ),
              const SizedBox(height: 23),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Row(
                  children: const [
                    Expanded(
                      child: AppDropDownButton(
                        items: [
                          DropdownMenuItem(
                            value: 'Week 1',
                            child: Text(
                              'Week 1',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Week 2',
                            child: Text(
                              'Week 2',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ],
                        initial: 'Week 1',
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: AppDropDownButton(
                        items: [
                          DropdownMenuItem(
                            value: 'Classwork',
                            child: Text(
                              'Classwork',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Home work',
                            child: Text(
                              'Home work',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ],
                        initial: 'Classwork',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Expanded(
                child: TabBarView(
                  children: [
                    GradesTableWidget()
                  ],
                ),
              ),
              const SizedBox(height: 35),
            ],
          ),
        ),
      ),
    );
  }
}

class GradesTableWidget extends StatelessWidget {
  const GradesTableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: TableBody(
        data: [
          TableInfo(
            surname: 'Robert ',
            firstName: 'Perry',
            status: 'Finished',
            grade: 'Checked',
            nameLetters: 'RP',
          ),
          TableInfo(
            surname: 'Paul  ',
            firstName: 'Wilson',
            status: 'Finished',
            grade: 'Checked',
            nameLetters: 'PW',
          ),
          TableInfo(
            surname: 'Michael  ',
            firstName: 'Henry',
            status: 'Finished',
            grade: 'Checked',
            nameLetters: 'MH',
          ),
          TableInfo(
            surname: 'Timur ',
            firstName: 'Merekeyev',
            status: 'Finished',
            grade: '',
            nameLetters: 'TM',
          ),
          TableInfo(
            surname: 'Bayan ',
            firstName: 'Buitek',
            status: 'Finished',
            grade: '',
            nameLetters: 'BB',
          ),

        ],
      ),
    );
  }
}

class HeaderTableText extends StatelessWidget {
  const HeaderTableText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(42, 13, 0, 13),
      child: Text(
        text,
        style: AppStyles.s15w500.copyWith(color: AppColors.gray600),
      ),
    );
  }
}

class BodyTableText extends StatelessWidget {
  const BodyTableText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(42, 20, 22, 20),
      child:  Text(
        text,
        style: AppStyles.s15w500,
      )
    );
  }
}

class BodyTableGradeText extends StatelessWidget {
  const BodyTableGradeText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(42, 13, 22, 13),
        child:text == 'Checked' ?   Text(
          text,
          style: AppStyles.s15w500.copyWith(color: AppColors.success),
        ) : const SizedBox.shrink()
    );
  }
}

class TableBody extends StatelessWidget {
  const TableBody({Key? key, required this.data}) : super(key: key);
  final List<TableInfo> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          width: 1,
          color: AppColors.gray200,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Table(
            border: const TableBorder(
              horizontalInside: BorderSide(
                width: 1,
                color: AppColors.gray200,
                style: BorderStyle.solid,
              ),
            ),
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(3),
              2: FlexColumnWidth(3),
              3: FlexColumnWidth(3),
              4: FlexColumnWidth(3),
            },
            children: [
              const TableRow(
                children: [
                  HeaderTableText(text: ''),
                  HeaderTableText(text: 'Surname'),
                  HeaderTableText(text: 'First name'),
                  HeaderTableText(text: 'Status'),
                  HeaderTableText(text: 'Grade / 100'),
                ],
              ),
              ...data.map(
                (e) {
                  return TableRow(
                    children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Avatar(name: e.nameLetters),
                      ),
                      TableCell(
                        child: BodyTableText(text: e.surname),
                      ),
                      TableCell(
                        child: BodyTableText(text: e.firstName),
                      ),
                      TableCell(
                        child: BodyTableStatus(status: e.status),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: BodyTableGradeText(text: e.grade)
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
class BodyTableStatus extends StatelessWidget {
  const BodyTableStatus({Key? key, required this.status}) : super(key: key);
  final String status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(42, 13, 22, 13),
      child: Text(
        status,
        style: AppStyles.s15w500.copyWith(color: status == 'Finished' ? AppColors.accent : AppColors.gray600),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.red.shade50,
      radius: 18,
      child: Text(name,style: AppStyles.s14w500.copyWith(color: Colors.red),),
    );
  }
}


class TableInfo {

  TableInfo( {
    required this.nameLetters,
    required this.firstName,
    required this.grade,
    required this.status,
    required this.surname,
  });
  final String nameLetters;
  final String surname;
  final String firstName;
  final String status;
  final String grade;
}


