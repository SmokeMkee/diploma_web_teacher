import 'package:auto_route/auto_route.dart';
import 'package:diploma_web_teacher/src/features/t_courses/data/bloc/courses_bloc.dart';
import 'package:diploma_web_teacher/src/features/theme_manager/src/main_theme.dart';
import 'package:diploma_web_teacher/src/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_styles.dart';
import '../../../../widgets/app_border_button.dart';
import '../../../../widgets/app_drop_down_button.dart';
import '../../../../widgets/app_eleavted_button.dart';
import '../../../../widgets/app_text_field.dart';
import '../../../theme_manager/theme_manager.dart';

void showAlertDialogCreateCourse(BuildContext context) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) {
      var theme = context.watch<ThemeManager>().theme;

      return AlertDialog(
        titleTextStyle: theme.textStyles.s20w600,
        titlePadding: const EdgeInsets.symmetric(vertical: 29, horizontal: 44),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: const Text('New course'),
        content: Body(theme: theme),
      );
    },
  ).then((value) => context.read<CoursesBloc>().add(FetchCoursesEvent()));
}

class Body extends StatefulWidget {
  const Body({
    super.key,
    required this.theme,
  });

  final MainTheme theme;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3.5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Text('Title'),
              const SizedBox(width: 54),
              Expanded(
                child: AppTextFormField(
                  textEditingController: nameController,
                  hintText: 'Enter the title',
                ),
              ),
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 25),
          //   child: Container(
          //     height: 2,
          //     color: theme.colors.gray200,
          //   ),
          // ),
          // Row(
          //   children: const [
          //     Text('Category'),
          //     SizedBox(width: 20),
          //     Expanded(child: AppDropDownButton(items: [], initial: ''))
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Container(
              height: 2,
              color: widget.theme.colors.gray200,
            ),
          ),
          Row(
            children: [
              const Text('Color'),
              const SizedBox(width: 20),
              ...List.generate(
                5,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CircleAvatar(
                      radius: 13,
                      backgroundColor: widget.theme.colors.subtitle,
                    ),
                  );
                },
              )
            ],
          ),
          const SizedBox(height: 25),
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
                  title: 'Create',
                  onTap: () {
                    if(nameController.text.isNotEmpty) {
                      context.read<CoursesBloc>().add(
                          AddNewCoursesEvent(
                            courseName: nameController.text,
                            color: '0xFFE6E5EC',
                            categoryId: 0,
                          ),
                        );
                    }
                    context.router.pop();

                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
