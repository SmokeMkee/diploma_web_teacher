import 'dart:convert';

import '../../../../../../api/api.dart';
import '../dto/unit.dart';

class RepoCoursesUnits {
  RepoCoursesUnits({required this.api});

  final Api api;

  Future<List<Unit>> fetch(int id) async {
    final result =
        await api.dio.get('/teacher-course/get-unit-section', queryParameters: {
      "unitId": id,
    });
    List<Unit> listUnits = unitFromJson(json.encode(result.data));
    return listUnits;
  }

  Future<void> addNewUnit({
    required String name,
    required int id,
  }) async {
    print(id);
    final result = await api.dio
        .post('/teacher-course/create-unit-section', queryParameters: {
      "unitId": id,
      "title" : name,
    });
  }
}
