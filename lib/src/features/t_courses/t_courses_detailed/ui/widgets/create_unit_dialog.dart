import 'package:auto_route/auto_route.dart';
import 'package:diploma_web_teacher/src/features/t_courses/t_courses_detailed/data/bloc/courses_detailed_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../constants/app_styles.dart';
import '../../../../../widgets/app_border_button.dart';
import '../../../../../widgets/app_eleavted_button.dart';
import '../../../../../widgets/app_text_field.dart';
import '../../../../../widgets/app_text_form_field.dart';
import '../../../../theme_manager/theme_manager.dart';

void showAlertDialogCreateUnit(BuildContext context , int id) {
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
        title: const Text('New unit'),
        content: const Body(),
      );
    },
  ).then((value) =>
      context.read<CoursesDetailedBloc>().add(FetchUnits(unitId: id)));
}

class Body extends StatefulWidget {
  const Body({
    super.key,
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController name = TextEditingController();

  @override
  void dispose() {
    name.dispose();
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
              Text('Title'),
              SizedBox(width: 54),
              Expanded(
                child: AppTextFormField(
                    textEditingController: name, hintText: 'Enter the title'),
              ),
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
                    context
                        .read<CoursesDetailedBloc>()
                        .add(AddNewUnit(id: 0, name: name.text));
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
