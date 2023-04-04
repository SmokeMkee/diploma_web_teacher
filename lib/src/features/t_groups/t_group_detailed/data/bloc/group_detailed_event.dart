part of 'group_detailed_bloc.dart';

abstract class GroupDetailedEvent {}

class FetchDataEvent extends GroupDetailedEvent {
  FetchDataEvent({required this.groupId});
  final int groupId;
}

class AddStudentEvent extends GroupDetailedEvent {
  AddStudentEvent({required this.email});
  final String email;
}

class DeleteStudentEvent extends GroupDetailedEvent {
}
