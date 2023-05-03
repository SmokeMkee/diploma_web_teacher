import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../dto/detailed_group.dart';
import '../repo/repo_detailed_group.dart';

part 'group_detailed_event.dart';

part 'group_detailed_state.dart';

class GroupDetailedBloc extends Bloc<GroupDetailedEvent, GroupDetailedState> {
  GroupDetailedBloc({required this.repo})
      : super(GroupDetailedInitial(groupId: 0)) {
    on<FetchDataEvent>(fetchData);
    on<AddStudentEvent>(addStudent);
    on<DeleteStudentEvent>(deleteUsers);
  }
  List<GroupDetailed> studentList = [];
  Future<void> addStudent(
    AddStudentEvent event,
    Emitter<GroupDetailedState> emit,
  ) async {
    try {
      emit(GroupDetailedLoading(groupId: state.groupId));
      print(state.groupId );
      print(event.email);
      await repo.addStudent(event.email, state.groupId);
      final response = await repo.fetch(state.groupId);
      studentList.clear();
      studentList.addAll(response);
      emit(GroupDetailedData(listStudents: studentList, groupId: state.groupId));
    } catch (e) {
      print((e as DioError).error);
      emit(
          GroupDetailedError(error: 'something error', groupId: state.groupId));
    }
  }


  Future<void> deleteUsers(
      DeleteStudentEvent event,
      Emitter<GroupDetailedState> emit,
      ) async {
    try {
      List<int> list = [];
      for (int i = 0; i < studentList.length; i++) {
        if (studentList[i].isDelete == true) {
          list.add(studentList[i].id!);
        }
      }
      print(list);
     // emit(AdminLoading());
      emit(GroupDetailedLoading(groupId: state.groupId));

      await repo.deleteStudents(list , state.groupId);
      final response = await repo.fetch(state.groupId);
      studentList.clear();
      studentList.addAll(response);
      emit(GroupDetailedData(listStudents: studentList, groupId: state.groupId));
    } catch (e) {
      var a = e as DioError;
      print(a.requestOptions.data);
      emit(GroupDetailedError(error: 'something error', groupId: state.groupId));
    }
  }

  Future<void> fetchData(
    FetchDataEvent event,
    Emitter<GroupDetailedState> emit,
  ) async {
    try {
      emit(GroupDetailedLoading(groupId: event.groupId));
      print(event.groupId);
      final response = await repo.fetch(event.groupId);
      print(response);
      studentList.clear();
      studentList.addAll(response);

      emit(GroupDetailedData(listStudents: studentList, groupId: event.groupId));
    } catch (e) {

      emit(
          GroupDetailedError(error: 'something error', groupId: event.groupId));
    }
  }

  final RepoGroupDetailed repo;
}
