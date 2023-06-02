import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    @Default(false) status,
    @Default(CartDataModel()) data,
    @Default("") message,
  }) = _CartModel;
  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
class CartDataModel with _$CartDataModel {
  const factory CartDataModel({
    @Default([]) List<CartOrderedItemsModel> orderedItems,
    @Default(0) orderTotalPrice,
  }) = _CartDataModel;
  factory CartDataModel.fromJson(Map<String, dynamic> json) =>
      _$CartDataModelFromJson(json);
}

@freezed
class CartOrderedItemsModel with _$CartOrderedItemsModel {
  const factory CartOrderedItemsModel({
    @JsonKey(name: "_id") @Default("") id,
    @Default(CartProductItemModel()) productId,
    @Default(0) quantity,
    @Default("") userId,
    @Default("") shippingAddress,
    @JsonKey(name: "__v") @Default(0) v,
    @Default(0) totalPrice,
  }) = _CartOrderedItemsModel;
  factory CartOrderedItemsModel.fromJson(Map<String, dynamic> json) =>
      _$CartOrderedItemsModelFromJson(json);
}

@freezed
class CartProductItemModel with _$CartProductItemModel {
  const factory CartProductItemModel({
    @JsonKey(name: "_id") @Default("") id,
    @Default("") name,
    @Default("") description,
    @Default("") category,
    @Default("") image,
    @Default(0) price,
    @JsonKey(name: "__v") @Default(0) v,
  }) = _CartProductItemModel;
  factory CartProductItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartProductItemModelFromJson(json);
}
