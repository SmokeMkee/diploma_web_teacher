part of 'courses_bloc.dart';

abstract class CoursesState {}

class CoursesInitial extends CoursesState {}

class CoursesLoading extends CoursesState {}

class CoursesData extends CoursesState {
  CoursesData({required this.listCourses});

  final List<Courses> listCourses;
}

class CoursesError extends CoursesState {
  CoursesError({required this.message});

  final String message;
}
