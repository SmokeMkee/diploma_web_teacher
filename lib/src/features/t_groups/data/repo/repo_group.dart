import 'dart:convert';

import '../../../../../../api/api.dart';
import '../dto/course_dto.dart';

class RepoGroup {
  RepoGroup({required this.api});

  final Api api;

  Future<List<GroupDTO>> fetch() async {
    final result = await api.dio.get(
      'teacher-group/get-teacher-groups',
    );
    List<GroupDTO> listCourse = groupListFromJson(json.encode(result.data));
    return listCourse;
  }

  Future<void> createGroup(String name) async {
     await api.dio.post(
      '/teacher-group/create-teacher-group',
      queryParameters: {
        "groupName" : name,
      }
    );

  }
}
