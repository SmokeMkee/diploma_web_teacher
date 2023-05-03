part of 'courses_detailed_bloc.dart';

abstract class CoursesDetailedEvent {}

class FetchUnits extends CoursesDetailedEvent {
  FetchUnits({required this.unitId});

  final int unitId;
}

class AddNewUnit extends CoursesDetailedEvent {
  AddNewUnit({
    required this.id,
    required this.name,
  });

  final String name;
  final int id;
}
