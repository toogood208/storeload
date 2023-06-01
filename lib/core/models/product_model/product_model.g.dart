// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductModel _$$_ProductModelFromJson(Map<String, dynamic> json) =>
    _$_ProductModel(
      status: json['status'] ?? false,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ProductDataModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      message: json['message'] ?? "",
    );

Map<String, dynamic> _$$_ProductModelToJson(_$_ProductModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };

_$_ProductDataModel _$$_ProductDataModelFromJson(Map<String, dynamic> json) =>
    _$_ProductDataModel(
      category: json['category'] ?? "",
      href: json['href'] ?? "",
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => CategoryDataModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductDataModelToJson(_$_ProductDataModel instance) =>
    <String, dynamic>{
      'category': instance.category,
      'href': instance.href,
      'data': instance.data,
    };

_$_CategoryDataModel _$$_CategoryDataModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryDataModel(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      description: json['description'] ?? "",
      category: json['category'] ?? "",
      image: json['image'] ?? "",
      v: json['v'] ?? 0,
      price: json['price'] ?? 0,
    );

Map<String, dynamic> _$$_CategoryDataModelToJson(
        _$_CategoryDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'v': instance.v,
      'price': instance.price,
    };
