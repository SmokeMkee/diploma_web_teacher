part of 'group_bloc.dart';

abstract class GroupEvent {}

class FetchGroupEvent extends GroupEvent {}
class SearchGroupEvent extends GroupEvent {
  SearchGroupEvent({required this.query});
  final String query;
}

class CreateGroupEvent extends GroupEvent {
  CreateGroupEvent({required this.nameGroup});

  final String nameGroup;
}
