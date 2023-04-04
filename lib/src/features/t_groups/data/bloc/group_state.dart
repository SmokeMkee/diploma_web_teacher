part of 'group_bloc.dart';

abstract class GroupState {}

class GroupInitial extends GroupState {}

class GroupLoading extends GroupState {}

class GroupData extends GroupState {
  GroupData({required this.listCourse});

  final List<GroupDTO> listCourse;
}

class GroupError extends GroupState {
  GroupError({required this.message});

  final String message;
}
