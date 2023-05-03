import 'dart:convert';

import 'package:diploma_web_teacher/src/features/t_groups/t_group_detailed/data/dto/detailed_group.dart';

import '../../../../../../api/api.dart';

class RepoGroupDetailed {
  RepoGroupDetailed({required this.api});

  final Api api;

  Future<List<GroupDetailed>> fetch(int id) async {
    final result = await api.dio.get(
        '/teacher-group/get-list-of-students-in-teacher-groups',
        queryParameters: {"groupId": id});
    List<GroupDetailed> listCourse =
        groupListFromJson(json.encode(result.data));
    return listCourse;
  }

  Future<void> deleteStudents(List<int> ids, int groupId) async {
    final result = await api.dio.delete(
      '/teacher-group/delete-student-from-group',
      queryParameters: {
        "groupId": groupId,
        "studentId": ids,
      },
    );

    // List<GroupDetailed> listCourse =
    //     groupListFromJson(json.encode(result.data));
    //return listCourse;
  }

  Future<void> addStudent(String email, int groupId) async {
    await api.dio.post(
      '/teacher-group/add-student-to-teacher-group',
      queryParameters: {
        "email": email,
        "groupId": groupId,
      },
    );
  }
}
