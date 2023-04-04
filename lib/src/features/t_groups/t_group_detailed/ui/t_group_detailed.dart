import 'package:diploma_web_teacher/src/features/t_groups/data/dto/course_dto.dart';
import 'package:diploma_web_teacher/src/features/t_groups/t_group_detailed/data/bloc/group_detailed_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../constants/app_assets.dart';
import '../../../../../../constants/app_colors.dart';
import '../../../../../../constants/app_styles.dart';
import '../../../../widgets/app_back_button.dart';
import '../../../../widgets/app_border_button.dart';
import '../../../../widgets/app_check_box.dart';
import '../../../../widgets/app_eleavted_button.dart';
import '../../../../widgets/app_text_form_field.dart';
import '../../../../widgets/course_container.dart';
import '../../../../widgets/header_widget.dart';
import '../../../navigation/app_router/app_router.dart';
import '../../../t_gradebook/t_gradebook_detailed_group/ui/t_gradebook_detailed_course.dart';
import '../../ui/t_groups.dart';
import '../data/dto/detailed_group.dart';

class TGroupDetailed extends StatefulWidget {
  const TGroupDetailed({Key? key, required this.group}) : super(key: key);
  final GroupDTO group;

  @override
  State<TGroupDetailed> createState() => _TGroupDetailedState();
}

class _TGroupDetailedState extends State<TGroupDetailed> {
  @override
  void initState() {
    context
        .read<GroupDetailedBloc>()
        .add(FetchDataEvent(groupId: widget.group.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(72, 42, 72, 0),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 200),
          child: HeaderWidget(
            withDisabilities: false,
            title: 'Groups',
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 33),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    AppBackButton(
                      onTap: () {
                        context.router.popAndPush(const TGroupsRoute());
                      },
                    ),
                    const SizedBox(width: 34),
                    CourseContainer(
                      text:
                          widget.group.groupName[0] + widget.group.groupName[1],
                    ),
                    const SizedBox(width: 25),
                    Text(widget.group.groupName, style: AppStyles.s18w500)
                  ],
                ),
                AppElevatedIconButton(
                  text: 'Add students',
                  onTap: () {
                    showAlertDialogAddStudent(context);
                  },
                ),
              ],
            ),
            const SizedBox(height: 50),
            BlocBuilder<GroupDetailedBloc, GroupDetailedState>(
              builder: (context, state) {
                if (state is GroupDetailedLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is GroupDetailedData) {
                  return GroupTableWidget(
                    data: state.listStudents,
                  );
                }
                if (state is GroupDetailedError) {
                  return Center(
                    child: Text(state.error),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GroupTableWidget extends StatefulWidget {
  const GroupTableWidget({Key? key, required this.data}) : super(key: key);
  final List<GroupDetailed> data;

  @override
  State<GroupTableWidget> createState() => _GroupTableWidgetState();
}

class _GroupTableWidgetState extends State<GroupTableWidget> {
  bool checkAll = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(2),
                3: FlexColumnWidth(2),
                4: FlexColumnWidth(3),
                5: FlexColumnWidth(2),
              },
              children: [
                TableRow(
                  children: [
                    AppCheckbox(
                      onChanged: (value) {
                        if (checkAll == true) {
                          setState(() {
                            checkAll = value ?? false;
                          });
                        } else {
                          setState(() {
                            checkAll = value ?? false;
                          });
                        }
                      },
                    ),
                    const HeaderTableText(text: ''),
                    const HeaderTableText(text: 'Surname'),
                    const HeaderTableText(text: 'First name'),
                    const HeaderTableText(text: 'Email'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          context
                              .read<GroupDetailedBloc>()
                              .add(DeleteStudentEvent());
                        },
                        child: Text(
                          'Delete selected',
                          style: AppStyles.s15w500
                              .copyWith(color: AppColors.white),
                        ),
                      ),
                    )
                  ],
                ),
                ...widget.data.map(
                  (e) {
                    return TableRow(
                      children: [
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: AppCheckbox(
                            onChanged: (value) {
                              e.isDelete = value ?? false;
                              value != value;
                            },
                          ),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Avatar(
                            name: (e.firstname?[0] ?? 'N') +
                                (e.surname?[0] ?? 'F'),
                          ),
                        ),
                        TableCell(
                          child: BodyTableText(text: e.surname ?? 'No info'),
                        ),
                        TableCell(
                          child: BodyTableText(text: e.firstname ?? 'N0 info'),
                        ),
                        TableCell(
                          child: BodyTableText(text: e.email ?? 'No info'),
                        ),
                        TableCell(
                          verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 13,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                showAlertDialogOnTapStudent(
                                  context,
                                  e.id ?? 0,
                                  e.groupId ?? 0,
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  backgroundColor: Colors.white,
                                  elevation: 5),
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  'Change',
                                  style: AppStyles.s15w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void showAlertDialogAddStudent(BuildContext context) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      titleTextStyle: AppStyles.s20w600,
      titlePadding: const EdgeInsets.symmetric(vertical: 29, horizontal: 44),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: const Text('Add student by email'),
      content: SizedBox(
        width: MediaQuery.of(context).size.width / 3.5,
        child: const AddStudentBody(),
      ),
    ),
  );
}

class AddStudentBody extends StatefulWidget {
  const AddStudentBody({Key? key}) : super(key: key);

  @override
  State<AddStudentBody> createState() => _AddStudentBodyState();
}

class _AddStudentBodyState extends State<AddStudentBody> {
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Text('Email'),
            const SizedBox(width: 54),
            Expanded(
              child: AppTextFormField(
                  textEditingController: controller,
                  hintText: 'Enter the email'),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: AppBorderButton(
                title: 'Cancel',
                onTap: () {
                  context.router.pop();
                },
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: AppElevatedButton(
                title: 'Save',
                onTap: () {
                  context.read<GroupDetailedBloc>().add(
                        AddStudentEvent(email: controller.text),
                      );
                  context.router.pop();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

void showAlertDialogOnTapStudent(
    BuildContext context, int studentId, int groupId) {
  List<String> list = [
    'General English',
    'UI/UX Design',
    'Web Development',
    'Animation',
    'General English',
    'UI/UX Design'
  ];
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text('Robert Perry'),
      content: Column(
        children: [
          SizedBox(
            width: 350,
            child: AppTextFormField(
              hintText: 'search',
              hintStyle: AppStyles.s14w500.copyWith(color: AppColors.gray400),
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SvgPicture.asset(
                  AppAssets.svg.search,
                  color: AppColors.gray200,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Container(
              height: 2,
              color: AppColors.gray200,
            ),
          ),
          ExpansionPanelList.radio(
            expandedHeaderPadding: EdgeInsets.zero,
            elevation: 2,
            animationDuration: const Duration(milliseconds: 600),
            children: [
              ...List.generate(
                2,
                (index) {
                  return ExpansionPanelRadio(
                    value: '$index category',
                    backgroundColor: AppColors.background,
                    headerBuilder: (_, isExpanded) => Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          const SizedBox(width: 12),
                          Text('${index + 1} category')
                        ],
                      ),
                    ),
                    body: Container(
                      color: AppColors.white,
                      child: Column(
                        children: [
                          ...List.generate(
                            list.length,
                            (index) => Row(
                              children: [
                                Checkbox(value: false, onChanged: (value) {}),
                                const SizedBox(width: 12),
                                Text(
                                  list[index],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
      actions: [
        AppElevatedButton(
          title: 'Submit',
          onTap: () {
            // context.router.pop();
          },
        )
      ],
    ),
  );
}

// class HeaderTableText extends StatelessWidget {
//   const HeaderTableText({Key? key, required this.text}) : super(key: key);
//   final String text;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(42, 13, 0, 13),
//       child: Text(
//         text,
//         style: AppStyles.s15w500.copyWith(color: AppColors.gray600),
//       ),
//     );
//   }
// }

// class BodyTableText extends StatelessWidget {
//   const BodyTableText({Key? key, required this.text}) : super(key: key);
//   final String text;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.fromLTRB(42, 13, 22, 13),
//       child: Text(
//         text,
//         style: AppStyles.s15w500,
//       ),
//     );
//   }
// }

// class TableBody extends StatelessWidget {
//   const TableBody({Key? key, required this.data}) : super(key: key);
//   final List<TableInfo> data;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: const BorderRadius.all(Radius.circular(10)),
//         border: Border.all(
//           width: 1,
//           color: AppColors.gray200,
//         ),
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Table(
//             border: const TableBorder(
//               horizontalInside: BorderSide(
//                 width: 1,
//                 color: AppColors.gray200,
//                 style: BorderStyle.solid,
//               ),
//             ),
//             defaultVerticalAlignment: TableCellVerticalAlignment.middle,
//             columnWidths: const {
//               0: FlexColumnWidth(1),
//               1: FlexColumnWidth(1),
//               2: FlexColumnWidth(2),
//               3: FlexColumnWidth(2),
//               4: FlexColumnWidth(3),
//               5: FlexColumnWidth(2),
//             },
//             children: [
//               TableRow(
//                 children: [
//                   Checkbox(value: false, onChanged: (value) {}),
//                   const HeaderTableText(text: ''),
//                   const HeaderTableText(text: 'Surname'),
//                   const HeaderTableText(text: 'First name'),
//                   const HeaderTableText(text: 'Email'),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       child: Text(
//                         'Delete selected',
//                         style:
//                             AppStyles.s15w500.copyWith(color: AppColors.white),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               ...data.map(
//                 (e) {
//                   return TableRow(
//                     children: [
//                       TableCell(
//                           verticalAlignment: TableCellVerticalAlignment.middle,
//                           child: Checkbox(value: false, onChanged: (value) {})),
//                       TableCell(
//                         verticalAlignment: TableCellVerticalAlignment.middle,
//                         child: Avatar(name: e.fullNameLetters),
//                       ),
//                       TableCell(
//                         child: BodyTableText(text: e.surname),
//                       ),
//                       TableCell(
//                         child: BodyTableText(text: e.firstName),
//                       ),
//                       TableCell(
//                         child: BodyTableText(text: e.email),
//                       ),
//                       TableCell(
//                         verticalAlignment: TableCellVerticalAlignment.middle,
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 30,
//                             vertical: 13,
//                           ),
//                           child: ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 backgroundColor: Colors.white,
//                                 elevation: 5),
//                             child: const Padding(
//                               padding: EdgeInsets.all(10.0),
//                               child: Text(
//                                 'Change',
//                                 style: AppStyles.s15w500,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
