import 'dart:convert';

import '../../../../../../api/api.dart';
import '../dto/courses.dart';

class RepoCourses {
  RepoCourses({required this.api});

  final Api api;

  Future<List<Courses>> fetch() async {
    final result = await api.dio.get('/teacher/get-courses');
    List<Courses> listCourse = coursesFromJson(json.encode(result.data));
    return listCourse;
  }

  Future<void> addNewCourse({
    required String color,
    required String courseName,
    required int categoryId,
  }) async {
    final result = await api.dio.post('/teacher/add-new-courses' , data: {
      "courseName" : courseName,
      "color" : color,
      "categoryId" : categoryId,
    });
  }
}
