import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../dto/groups.dart';
import '../dto/unit.dart';
import '../repo/repo_courses.dart';

part 'courses_detailed_event.dart';

part 'courses_detailed_state.dart';

class CoursesDetailedBloc
    extends Bloc<CoursesDetailedEvent, CoursesDetailedState> {
  CoursesDetailedBloc({required this.repo}) : super(CoursesDetailedInitial()) {
    on<FetchUnits>(fetch, );
    on<AddNewUnit>(addNewUnit, );
    on<FetchGroupsInCourse>(fetchGroupsInCourse, );
  }

  Future<void> fetch(
    FetchUnits event,
    Emitter<CoursesDetailedState> emit,
  ) async {
    try {
      emit(CoursesDetailedLoading());
      final result = await repo.fetch(event.unitId);
      emit(
        CoursesDetailedData(
          list: result,
        ),
      );
    } catch (e) {
      //emit(CoursesError(message: 'something error'));
    }
  }

  Future<void> fetchGroupsInCourse(
    FetchGroupsInCourse event,
    Emitter<CoursesDetailedState> emit,
  ) async {
    try {
      emit(CoursesDetailedLoading());
      final result = await repo.fetchGroups(event.courseId);
      emit(
        CoursesDetailedGroupsData(
          list: result,
        ),
      );
    } catch (e) {
      emit(CoursesDetailedError(message: 'something error'));
    }
  }

  Future<void> addNewUnit(
    AddNewUnit event,
    Emitter<CoursesDetailedState> emit,
  ) async {
    try {
      emit(CoursesDetailedLoading());
      final result = await repo.addNewUnit(
        name: event.name,
        id: event.id,
      );
      add(FetchUnits(unitId: event.id));
    } catch (e) {
      //emit(CoursesError(message: 'something error'));
    }
  }

  final RepoCoursesUnits repo;
}
