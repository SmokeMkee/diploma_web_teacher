// To parse this JSON data, do
//
//     final auth = authFromJson(jsonString);

import 'dart:convert';
class Auth {
  final String? token;
  final String? userType;

  Auth({
    this.token,
    this.userType,
  });

  Auth copyWith({
    String? token,
    String? userType,
  }) =>
      Auth(
        token: token ?? this.token,
        userType: userType ?? this.userType,
      );

  factory Auth.fromJson(Map<String, dynamic> json) => Auth(
    token: json["token"],
    userType: json["userType"],
  );

  Map<String, dynamic> toJson() => {
    "token": token,
    "userType": userType,
  };
}
