// To parse this JSON data, do
//
//     final groups = groupsFromJson(jsonString);

import 'dart:convert';

List<Groups> groupsFromJson(String str) => List<Groups>.from(json.decode(str).map((x) => Groups.fromJson(x)));

String groupsToJson(List<Groups> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Groups {
  final int? id;
  final String? groupName;
  final int? userId;
  final int? courseId;
  final int? groupId;

  Groups({
    this.id,
    this.groupName,
    this.userId,
    this.courseId,
    this.groupId,
  });

  Groups copyWith({
    int? id,
    String? groupName,
    int? userId,
    int? courseId,
    int? groupId,
  }) =>
      Groups(
        id: id ?? this.id,
        groupName: groupName ?? this.groupName,
        userId: userId ?? this.userId,
        courseId: courseId ?? this.courseId,
        groupId: groupId ?? this.groupId,
      );

  factory Groups.fromJson(Map<String, dynamic> json) => Groups(
    id: json["id"],
    groupName: json["groupName"],
    userId: json["userId"],
    courseId: json["courseId"],
    groupId: json["groupId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "groupName": groupName,
    "userId": userId,
    "courseId": courseId,
    "groupId": groupId,
  };
}
