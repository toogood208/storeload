// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartModel _$$_CartModelFromJson(Map<String, dynamic> json) => _$_CartModel(
      status: json['status'] ?? false,
      data: json['data'] ?? const CartDataModel(),
      message: json['message'] ?? "",
    );

Map<String, dynamic> _$$_CartModelToJson(_$_CartModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };

_$_CartDataModel _$$_CartDataModelFromJson(Map<String, dynamic> json) =>
    _$_CartDataModel(
      orderedItems: (json['orderedItems'] as List<dynamic>?)
              ?.map((e) =>
                  CartOrderedItemsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      orderTotalPrice: json['orderTotalPrice'] ?? 0,
    );

Map<String, dynamic> _$$_CartDataModelToJson(_$_CartDataModel instance) =>
    <String, dynamic>{
      'orderedItems': instance.orderedItems,
      'orderTotalPrice': instance.orderTotalPrice,
    };

_$_CartOrderedItemsModel _$$_CartOrderedItemsModelFromJson(
        Map<String, dynamic> json) =>
    _$_CartOrderedItemsModel(
      id: json['_id'] ?? "",
      productId: json['productId'] ?? const CartProductItemModel(),
      quantity: json['quantity'] ?? 0,
      userId: json['userId'] ?? "",
      shippingAddress: json['shippingAddress'] ?? "",
      v: json['__v'] ?? 0,
      totalPrice: json['totalPrice'] ?? 0,
    );

Map<String, dynamic> _$$_CartOrderedItemsModelToJson(
        _$_CartOrderedItemsModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'productId': instance.productId,
      'quantity': instance.quantity,
      'userId': instance.userId,
      'shippingAddress': instance.shippingAddress,
      '__v': instance.v,
      'totalPrice': instance.totalPrice,
    };

_$_CartProductItemModel _$$_CartProductItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_CartProductItemModel(
      id: json['_id'] ?? "",
      name: json['name'] ?? "",
      description: json['description'] ?? "",
      category: json['category'] ?? "",
      image: json['image'] ?? "",
      price: json['price'] ?? 0,
      v: json['__v'] ?? 0,
    );

Map<String, dynamic> _$$_CartProductItemModelToJson(
        _$_CartProductItemModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'price': instance.price,
      '__v': instance.v,
    };
