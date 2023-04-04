// To parse this JSON data, do
//
//     final course = courseFromJson(jsonString);

import 'dart:convert';


List<GroupDTO> groupListFromJson(String str) => List<GroupDTO>.from(json.decode(str).map((x) => GroupDTO.fromJson(x)));

class GroupDTO {
  GroupDTO({
     this.color,
    required this.groupName,
    required this.id,
    required this.userId,
  });

  final String? color;
  final String groupName;
  final int id;
  final int userId;

  factory GroupDTO.fromJson(Map<String, dynamic> json) => GroupDTO(
    color: json["color"],
    groupName: json["groupName"],
    id: json["id"],
    userId: json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "color": color,
    "groupName": groupName,
    "id": id,
    "userId": userId,
  };
}
