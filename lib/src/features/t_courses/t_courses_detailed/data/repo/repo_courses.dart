import 'dart:convert';

import '../../../../../../api/api.dart';
import '../dto/groups.dart';
import '../dto/unit.dart';

class RepoCoursesUnits {
  RepoCoursesUnits({required this.api});

  final Api api;

  Future<List<Unit>> fetch(int id) async {
    final result =
        await api.dio.get('/teacher/get-unit-of-course', queryParameters: {
      "courseId": id,
    });
    print(id);
    List<Unit> listUnits = unitFromJson(json.encode(result.data));
    return listUnits;
  }
  Future<List<Groups>> fetchGroups(int id) async {
    final result =
        await api.dio.get('/teacher/get-list-of-groups-in-course', queryParameters: {
      "courseId": id,
    });
    List<Groups> listUnits = groupsFromJson(json.encode(result.data));
    return listUnits;
  }

  Future<void> addNewUnit({
    required String name,
    required int id,
  }) async {
    final result = await api.dio
        .post('/teacher-course/create-unit-section', queryParameters: {
      "unitId": id,
      "title" : name,
    });
    print(id);
  }
}
