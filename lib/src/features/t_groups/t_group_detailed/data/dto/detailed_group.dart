import 'dart:convert';

List<GroupDetailed> groupListFromJson(String str) => List<GroupDetailed>.from(
    json.decode(str).map((x) => GroupDetailed.fromJson(x)));

class GroupDetailed {
  GroupDetailed({
    this.email,
    this.firstname,
    this.groupId,
    this.id,
    this.surname,
    this.userId,
  });

  final String? email;
  final String? firstname;
  final int? groupId;
  final int? id;
  final String? surname;
  final int? userId;
  bool? isDelete;

  factory GroupDetailed.fromJson(Map<String, dynamic> json) => GroupDetailed(
        email: json["email"],
        firstname: json["firstname"],
        groupId: json["groupId"],
        id: json["id"],
        surname: json["surname"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "firstname": firstname,
        "groupId": groupId,
        "id": id,
        "surname": surname,
        "userId": userId,
      };
}
