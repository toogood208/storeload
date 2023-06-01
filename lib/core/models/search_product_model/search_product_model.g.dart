// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchProductModel _$$_SearchProductModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchProductModel(
      status: json['status'] ?? false,
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  SearchCategoryDataModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      message: json['message'] ?? "",
    );

Map<String, dynamic> _$$_SearchProductModelToJson(
        _$_SearchProductModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };

_$_SearchCategoryDataModel _$$_SearchCategoryDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchCategoryDataModel(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      description: json['description'] ?? "",
      category: json['category'] ?? "",
      image: json['image'] ?? "",
      v: json['v'] ?? 0,
      price: json['price'] ?? 0,
    );

Map<String, dynamic> _$$_SearchCategoryDataModelToJson(
        _$_SearchCategoryDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'v': instance.v,
      'price': instance.price,
    };
