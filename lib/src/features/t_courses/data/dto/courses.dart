// To parse this JSON data, do
//

import 'dart:convert';

List<Courses> coursesFromJson(String str) => List<Courses>.from(json.decode(str).map((x) => Courses.fromJson(x)));


class Courses {
  Courses({
    this.color,
    this.courseName,
    this.id,
    this.userId,
  });

  String? color;
  String? courseName;
  int? id;
  int? userId;

  factory Courses.fromJson(Map<String, dynamic> json) => Courses(
    color: json["color"],
    courseName: json["courseName"],
    id: json["id"],
    userId: json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "color": color,
    "courseName": courseName,
    "id": id,
    "userId": userId,
  };
}
