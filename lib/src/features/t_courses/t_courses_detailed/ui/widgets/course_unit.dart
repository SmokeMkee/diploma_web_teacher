import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/bloc/courses_detailed_bloc.dart';
import 'create_unit_card.dart';
import 'create_unit_dialog.dart';
import 'detailed_card.dart';

class TCoursesDetailedUnits extends StatefulWidget {
  const TCoursesDetailedUnits({
    Key? key,
    required this.groupId,
  }) : super(key: key);
  final int groupId;

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
          return const CircularProgressIndicator();
        }
        if (state is CoursesDetailedData) {
          return ListView(
            children: [
              GestureDetector(
                onTap: () => showAlertDialogCreateUnit(context , widget.groupId),
                child: const CreateUnitCard(),
              ),
              ...List.generate(
                state.list.length,
                (index) {
                  return CoursesDetailedCard(
                    unit: state.list[index],
                    number: index,
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
