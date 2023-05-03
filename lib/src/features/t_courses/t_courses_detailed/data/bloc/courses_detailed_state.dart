part of 'courses_detailed_bloc.dart';

abstract class CoursesDetailedState {}

class CoursesDetailedInitial extends CoursesDetailedState {}

class CoursesDetailedLoading extends CoursesDetailedState {}

class CoursesDetailedData extends CoursesDetailedState {
  CoursesDetailedData({required this.list});

  final List<Unit> list;
}


class CoursesDetailedGroupsData extends CoursesDetailedState {
  CoursesDetailedGroupsData({required this.list});

  final List<Groups> list;
}

class CoursesDetailedError extends CoursesDetailedState {
  CoursesDetailedError({required this.message});
  final String message;
}
