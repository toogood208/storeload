import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel{
  const factory ProductModel({
    @Default(false) status,
    @Default([]) List<ProductDataModel> data,
    @Default("") message
}) = _ProductModel;
  factory ProductModel.fromJson(Map<String, dynamic> json)=> _$ProductModelFromJson(json);
}

@freezed
class ProductDataModel with _$ProductDataModel{
  const factory ProductDataModel({
    @Default("") category,
    @Default("") href,
    @Default([]) List<CategoryDataModel> data,
  }) = _ProductDataModel;
  factory ProductDataModel.fromJson(Map<String, dynamic> json)=> _$ProductDataModelFromJson(json);
}

@freezed
class CategoryDataModel with _$CategoryDataModel{
  const factory CategoryDataModel({
   @JsonKey(name: "_id")@Default("") id,
    @Default("") name,
    @Default("") description,
    @Default("") category,
    @Default("") image,
    @JsonKey(name: "__v")@Default(0) v,
    @Default(0) price,

  }) = _CategoryDataModel;
  factory CategoryDataModel.fromJson(Map<String, dynamic> json)=> _$CategoryDataModelFromJson(json);
}