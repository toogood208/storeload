import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_product_model.freezed.dart';
part 'search_product_model.g.dart';

@freezed
class SearchProductModel with _$SearchProductModel{
  const factory SearchProductModel({
    @Default(false) status,
    @Default([]) List<SearchCategoryDataModel> data,
    @Default("") message
  }) = _SearchProductModel;
  factory SearchProductModel.fromJson(Map<String, dynamic> json)=> _$SearchProductModelFromJson(json);
}

@freezed
class SearchCategoryDataModel with _$SearchCategoryDataModel{
  const factory SearchCategoryDataModel({
    @Default("") id,
    @Default("") name,
    @Default("") description,
    @Default("") category,
    @Default("") image,
    @Default(0) v,
    @Default(0) price,

  }) = _SearchCategoryDataModel;
  factory SearchCategoryDataModel.fromJson(Map<String, dynamic> json)=> _$SearchCategoryDataModelFromJson(json);
}