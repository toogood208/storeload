// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    required this.status,
    required this.data,
    required this.message,
  });

  bool status;
  Data data;
  String message;

  factory User.fromJson(Map<String, dynamic> json) => User(
        status: json["status"],
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
        "message": message,
      };
}

class Data {
  Data({
    required this.id,
    required this.shopName,
    required this.password,
    required this.isEmailVerified,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.nin,
    required this.email,
    required this.emailVerificationCode,
    required this.firstName,
    required this.gender,
    required this.lastName,
    required this.token,
  });

  String id;
  String shopName;
  String password;
  bool isEmailVerified;
  DateTime createdAt;
  DateTime updatedAt;
  int v;
  String? nin;
  String? email;
  String? emailVerificationCode;
  String? firstName;
  String? gender;
  String? lastName;
  String token;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['user']["_id"],
        shopName: json['user']["shopName"],
        password: json['user']["password"],
        isEmailVerified: json['user']["isEmailVerified"],
        createdAt: DateTime.parse(json['user']["createdAt"]),
        updatedAt: DateTime.parse(json['user']["updatedAt"]),
        v: json['user']["__v"],
        nin: json['user']["NIN"],
        email: json['user']["email"],
        emailVerificationCode: json['user']["emailVerificationCode"],
        firstName: json['user']["firstName"],
        gender: json['user']["gender"],
        lastName: json['user']["lastName"],
        token: json['token'],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "shopName": shopName,
        "password": password,
        "isEmailVerified": isEmailVerified,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "NIN": nin,
        "email": email,
        "emailVerificationCode": emailVerificationCode,
        "firstName": firstName,
        "gender": gender,
        "lastName": lastName,
        "token": token,
      };
}

class Token {
  Token({
    required this.token,
  });

  String token;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
