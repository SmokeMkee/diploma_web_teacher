part of 'courses_bloc.dart';

abstract class CoursesEvent {}

class FetchCoursesEvent extends CoursesEvent {}

class AddNewCoursesEvent extends CoursesEvent {
  AddNewCoursesEvent({
    required this.courseName,
    required this.color,
    required this.categoryId,
  });

  final String courseName;
  final String color;
  final int categoryId;
}
