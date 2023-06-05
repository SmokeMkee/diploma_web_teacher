import 'package:diploma_web_teacher/src/features/navigation/app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../courses_detailed_lesson/ui/lesson.dart';
import '../../data/bloc/courses_detailed_bloc.dart';
import 'create_unit_card.dart';
import 'create_unit_dialog.dart';
import 'detailed_card.dart';

class TCoursesDetailedUnits extends StatefulWidget {
  const TCoursesDetailedUnits({
    Key? key,
    required this.groupId,
    required this.courseName,
  }) : super(key: key);
  final int groupId;
  final String courseName;

  @override
  State<TCoursesDetailedUnits> createState() => _TCoursesDetailedUnitsState();
}

class _TCoursesDetailedUnitsState extends State<TCoursesDetailedUnits> {
  @override
  void initState() {
    context.read<CoursesDetailedBloc>().add(FetchUnits(unitId: widget.groupId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoursesDetailedBloc, CoursesDetailedState>(
      builder: (context, state) {
        if (state is CoursesDetailedLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is CoursesDetailedData) {
          return ListView(
            children: [
              GestureDetector(
                onTap: () => showAlertDialogCreateUnit(context, widget.groupId),
                child: const CreateUnitCard(),
              ),
              ...List.generate(
                state.list.length,
                (index) {
                  return GestureDetector(
                    onTap: () => context.router.push(
                      CoursesDetailedLessonRoute(
                        courseName: widget.courseName,
                        unitName: state.list[index].sectionName ?? '',
                        unitId: state.list[index].unitId ?? 0,
                      ),
                    ),
                    child: CoursesDetailedCard(
                      unit: state.list[index],
                      number: index + 1,
                    ),
                  );
                },
              ),
            ],
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
