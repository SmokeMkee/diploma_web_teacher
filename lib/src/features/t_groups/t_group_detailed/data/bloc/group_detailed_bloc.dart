import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../dto/detailed_group.dart';
import '../repo/repo_detailed_group.dart';

part 'group_detailed_event.dart';

part 'group_detailed_state.dart';

class GroupDetailedBloc extends Bloc<GroupDetailedEvent, GroupDetailedState> {
  GroupDetailedBloc({required this.repo}) : super(GroupDetailedInitial()) {
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
      emit(GroupDetailedLoading());
      await repo.addStudent(event.email, event.groupId);
      final response = await repo.fetch(event.groupId);
      studentList.clear();
      studentList.addAll(response);
      emit(GroupDetailedData(
        listStudents: studentList,
      ));
    } catch (e) {
      emit(GroupDetailedError(
        error: 'something error',
      ));
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
      emit(GroupDetailedLoading());

      await repo.deleteStudents(list, event.groupId);
      final response = await repo.fetch(event.groupId);
      studentList.clear();
      studentList.addAll(response);
      emit(GroupDetailedData(
        listStudents: studentList,
      ));
    } catch (e) {
      emit(GroupDetailedError(
        error: 'something error',
      ));
    }
  }

  Future<void> fetchData(
    FetchDataEvent event,
    Emitter<GroupDetailedState> emit,
  ) async {
    try {
      emit(GroupDetailedLoading());
      print(event.groupId.toString() + 'dsadas');
      final response = await repo.fetch(event.groupId);
      studentList.clear();
      studentList.addAll(response);

      emit(GroupDetailedData(
        listStudents: studentList,
      ));
    } catch (e) {
      emit(GroupDetailedError(
        error: 'something error',
      ));
    }
  }

  final RepoGroupDetailed repo;
}
