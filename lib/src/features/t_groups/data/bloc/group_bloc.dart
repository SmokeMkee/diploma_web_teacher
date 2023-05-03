import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../dto/course_dto.dart';
import '../repo/repo_group.dart';

part 'group_event.dart';

part 'group_state.dart';

class GroupBloc extends Bloc<GroupEvent, GroupState> {
  RepoGroup repo;

  GroupBloc({required this.repo}) : super(GroupInitial()) {
    on<FetchGroupEvent>(fetchData, transformer: droppable());
    on<CreateGroupEvent>(createGroup, transformer: droppable());
    on<SearchGroupEvent>(searchData, transformer: droppable());
  }

  List<GroupDTO> listGroups = [];

  Future<void> fetchData(
    FetchGroupEvent event,
    Emitter<GroupState> emit,
  ) async {
    try {
      emit(GroupLoading());
      final response = await repo.fetch();
      listGroups.clear();
      listGroups.addAll(response);
      emit(GroupData(listCourse: listGroups));
    } catch (e) {
      print(e);
      emit(GroupError(message: 'something error'));
    }
  }

  Future<void> searchData(
    SearchGroupEvent event,
    Emitter<GroupState> emit,
  ) async {
    try {
      emit(GroupLoading());
      if (event.query.isNotEmpty) {
        var filteredList = listGroups
            .where((element) => element.groupName.contains(event.query))
            .toList();
        emit(GroupData(listCourse: filteredList));
      } else {
        emit(GroupData(listCourse: listGroups));
      }
    } catch (e) {
      emit(GroupError(message: 'something error'));
    }
  }

  Future<void> createGroup(
    CreateGroupEvent event,
    Emitter<GroupState> emit,
  ) async {
    try {
      emit(GroupLoading());
      await repo.createGroup(event.nameGroup);
      final response = await repo.fetch();
      listGroups.clear();
      listGroups.addAll(response);
      emit(GroupData(listCourse: listGroups));
    } catch (e) {
      emit(GroupError(message: 'something error'));
    }
  }
}
