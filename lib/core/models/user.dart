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
        required this.tokens,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
        required this.nin,
        required this.email,
        required this.emailVerificationCode,
        required this.firstName,
        required this.gender,
        required this.lastName,
    });

    String id;
    String shopName;
    String password;
    bool isEmailVerified;
    List<Token> tokens;
    DateTime createdAt;
    DateTime updatedAt;
    int v;
    String nin;
    String email;
    String emailVerificationCode;
    String firstName;
    String gender;
    String lastName;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["_id"],
        shopName: json["shopName"],
        password: json["password"],
        isEmailVerified: json["isEmailVerified"],
        tokens: List<Token>.from(json["tokens"].map((x) => Token.fromJson(x))),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        nin: json["NIN"],
        email: json["email"],
        emailVerificationCode: json["emailVerificationCode"],
        firstName: json["firstName"],
        gender: json["gender"],
        lastName: json["lastName"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "shopName": shopName,
        "password": password,
        "isEmailVerified": isEmailVerified,
        "tokens": List<dynamic>.from(tokens.map((x) => x.toJson())),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
        "NIN": nin,
        "email": email,
        "emailVerificationCode": emailVerificationCode,
        "firstName": firstName,
        "gender": gender,
        "lastName": lastName,
    };
}

class Token {
    Token({
        required this.token,
        required this.signedAt,
    });

    String token;
    String signedAt;

    factory Token.fromJson(Map<String, dynamic> json) => Token(
        token: json["token"],
        signedAt: json["signedAt"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "signedAt": signedAt,
    };
}
