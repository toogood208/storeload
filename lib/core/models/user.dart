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
        required this.user,
        required this.token,
    });

    UserClass user;
    String token;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: UserClass.fromJson(json["user"]),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "token": token,
    };
}

class UserClass {
    UserClass({
        required this.id,
        required this.shopName,
        required this.password,
        required this.isEmailVerified,
        required this.tokens,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
        required this.emailVerificationCode,
        required this.nin,
        required this.email,
        required this.firstName,
        required this.gender,
        required this.lastName,
    });

    String id;
    String shopName;
    String password;
    bool isEmailVerified;
    List<dynamic> tokens;
    DateTime createdAt;
    DateTime updatedAt;
    int v;
    String emailVerificationCode;
    String nin;
    String email;
    String firstName;
    String gender;
    String lastName;

    factory UserClass.fromJson(Map<String, dynamic> json) => UserClass(
        id: json["_id"],
        shopName: json["shopName"],
        password: json["password"],
        isEmailVerified: json["isEmailVerified"],
        tokens: List<dynamic>.from(json["tokens"].map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        emailVerificationCode: json["emailVerificationCode"],
        nin: json["NIN"],
        email: json["email"],
        firstName: json["firstName"],
        gender: json["gender"],
        lastName: json["lastName"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "shopName": shopName,
        "password": password,
        "isEmailVerified": isEmailVerified,
        "tokens": List<dynamic>.from(tokens.map((x) => x)),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "emailVerificationCode": emailVerificationCode,
        "NIN": nin,
        "email": email,
        "firstName": firstName,
        "gender": gender,
        "lastName": lastName,
    };
}
