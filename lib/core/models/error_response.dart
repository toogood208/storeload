// To parse this JSON data, do
//
//     final errorResponseModel = errorResponseModelFromJson(jsonString);

import 'dart:convert';

ErrorResponseModel errorResponseModelFromJson(String str) => ErrorResponseModel.fromJson(json.decode(str));

String errorResponseModelToJson(ErrorResponseModel data) => json.encode(data.toJson());

class ErrorResponseModel {
    ErrorResponseModel({
        required this.status,
        this.data,
        required this.message,
    });

    bool status;
    dynamic data;
    String message;

    factory ErrorResponseModel.fromJson(Map<String, dynamic> json) => ErrorResponseModel(
        status: json["status"],
        data: json["data"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data,
        "message": message,
    };
}
