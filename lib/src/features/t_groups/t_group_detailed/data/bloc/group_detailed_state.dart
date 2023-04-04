part of 'group_detailed_bloc.dart';

abstract class GroupDetailedState {
  GroupDetailedState({required this.groupId});
  final int  groupId;
}

class GroupDetailedInitial extends GroupDetailedState {
  GroupDetailedInitial({required super.groupId});
}

class GroupDetailedLoading extends GroupDetailedState {
  GroupDetailedLoading({required super.groupId});
}

class GroupDetailedData extends GroupDetailedState {
  GroupDetailedData({required this.listStudents, required super.groupId});

  final List<GroupDetailed> listStudents;
}

class GroupDetailedError extends GroupDetailedState {
  GroupDetailedError({required this.error, required super.groupId});

  final String error;
}
