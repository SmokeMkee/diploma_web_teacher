import 'dart:convert';

List<Unit> unitFromJson(String str) =>
    List<Unit>.from(json.decode(str).map((x) => Unit.fromJson(x)));

String unitToJson(List<Unit> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Unit {
  final int? id;
  final String? sectionName;
  final int? unitId;
  final int? userId;

  Unit({
    this.id,
    this.sectionName,
    this.unitId,
    this.userId,
  });

  factory Unit.fromJson(Map<String, dynamic> json) => Unit(
        id: json["id"],
        sectionName: json["sectionName"],
        unitId: json["unitId"],
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sectionName": sectionName,
        "unitId": unitId,
        "userId": userId,
      };
}
