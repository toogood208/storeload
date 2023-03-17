// To parse this JSON data, do
//
//     final createUserRequestModel = createUserRequestModelFromJson(jsonString);

import 'dart:convert';

CreateUserRequestModel createUserRequestModelFromJson(String str) => CreateUserRequestModel.fromJson(json.decode(str));

String createUserRequestModelToJson(CreateUserRequestModel data) => json.encode(data.toJson());

class CreateUserRequestModel {
    CreateUserRequestModel({
        required this.shopName,
        required this.password,
        required this.shopAddress,
        required this.shopLga,
    });

    String shopName;
    String password;
    String shopAddress;
    String shopLga;

    factory CreateUserRequestModel.fromJson(Map<String, dynamic> json) => CreateUserRequestModel(
        shopName: json["shopName"],
        password: json["password"],
        shopAddress: json["shopAddress"],
        shopLga: json["shopLGA"],
    );

    Map<String, dynamic> toJson() => {
        "shopName": shopName,
        "password": password,
        "shopAddress": shopAddress,
        "shopLGA": shopLga,
    };
}
