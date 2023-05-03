part of 'group_detailed_bloc.dart';

abstract class GroupDetailedState {}

class GroupDetailedInitial extends GroupDetailedState {}

class GroupDetailedLoading extends GroupDetailedState {}

class GroupDetailedData extends GroupDetailedState {
  GroupDetailedData({
    required this.listStudents,
  });

  final List<GroupDetailed> listStudents;
}

class GroupDetailedError extends GroupDetailedState {
  GroupDetailedError({
    required this.error,
  });

  final String error;
}
