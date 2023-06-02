// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  dynamic get status => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call({dynamic status, dynamic data, dynamic message});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$$_CartModelCopyWith(
          _$_CartModel value, $Res Function(_$_CartModel) then) =
      __$$_CartModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic status, dynamic data, dynamic message});
}

/// @nodoc
class __$$_CartModelCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$_CartModel>
    implements _$$_CartModelCopyWith<$Res> {
  __$$_CartModelCopyWithImpl(
      _$_CartModel _value, $Res Function(_$_CartModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_CartModel(
      status: freezed == status ? _value.status! : status,
      data: freezed == data ? _value.data! : data,
      message: freezed == message ? _value.message! : message,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartModel implements _CartModel {
  const _$_CartModel(
      {this.status = false,
      this.data = const CartDataModel(),
      this.message = ""});

  factory _$_CartModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartModelFromJson(json);

  @override
  @JsonKey()
  final dynamic status;
  @override
  @JsonKey()
  final dynamic data;
  @override
  @JsonKey()
  final dynamic message;

  @override
  String toString() {
    return 'CartModel(status: $status, data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      __$$_CartModelCopyWithImpl<_$_CartModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartModelToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  const factory _CartModel(
      {final dynamic status,
      final dynamic data,
      final dynamic message}) = _$_CartModel;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$_CartModel.fromJson;

  @override
  dynamic get status;
  @override
  dynamic get data;
  @override
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$_CartModelCopyWith<_$_CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CartDataModel _$CartDataModelFromJson(Map<String, dynamic> json) {
  return _CartDataModel.fromJson(json);
}

/// @nodoc
mixin _$CartDataModel {
  List<CartOrderedItemsModel> get orderedItems =>
      throw _privateConstructorUsedError;
  dynamic get orderTotalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartDataModelCopyWith<CartDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDataModelCopyWith<$Res> {
  factory $CartDataModelCopyWith(
          CartDataModel value, $Res Function(CartDataModel) then) =
      _$CartDataModelCopyWithImpl<$Res, CartDataModel>;
  @useResult
  $Res call(
      {List<CartOrderedItemsModel> orderedItems, dynamic orderTotalPrice});
}

/// @nodoc
class _$CartDataModelCopyWithImpl<$Res, $Val extends CartDataModel>
    implements $CartDataModelCopyWith<$Res> {
  _$CartDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderedItems = null,
    Object? orderTotalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      orderedItems: null == orderedItems
          ? _value.orderedItems
          : orderedItems // ignore: cast_nullable_to_non_nullable
              as List<CartOrderedItemsModel>,
      orderTotalPrice: freezed == orderTotalPrice
          ? _value.orderTotalPrice
          : orderTotalPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartDataModelCopyWith<$Res>
    implements $CartDataModelCopyWith<$Res> {
  factory _$$_CartDataModelCopyWith(
          _$_CartDataModel value, $Res Function(_$_CartDataModel) then) =
      __$$_CartDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartOrderedItemsModel> orderedItems, dynamic orderTotalPrice});
}

/// @nodoc
class __$$_CartDataModelCopyWithImpl<$Res>
    extends _$CartDataModelCopyWithImpl<$Res, _$_CartDataModel>
    implements _$$_CartDataModelCopyWith<$Res> {
  __$$_CartDataModelCopyWithImpl(
      _$_CartDataModel _value, $Res Function(_$_CartDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderedItems = null,
    Object? orderTotalPrice = freezed,
  }) {
    return _then(_$_CartDataModel(
      orderedItems: null == orderedItems
          ? _value._orderedItems
          : orderedItems // ignore: cast_nullable_to_non_nullable
              as List<CartOrderedItemsModel>,
      orderTotalPrice: freezed == orderTotalPrice
          ? _value.orderTotalPrice!
          : orderTotalPrice,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartDataModel implements _CartDataModel {
  const _$_CartDataModel(
      {final List<CartOrderedItemsModel> orderedItems = const [],
      this.orderTotalPrice = 0})
      : _orderedItems = orderedItems;

  factory _$_CartDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartDataModelFromJson(json);

  final List<CartOrderedItemsModel> _orderedItems;
  @override
  @JsonKey()
  List<CartOrderedItemsModel> get orderedItems {
    if (_orderedItems is EqualUnmodifiableListView) return _orderedItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderedItems);
  }

  @override
  @JsonKey()
  final dynamic orderTotalPrice;

  @override
  String toString() {
    return 'CartDataModel(orderedItems: $orderedItems, orderTotalPrice: $orderTotalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartDataModel &&
            const DeepCollectionEquality()
                .equals(other._orderedItems, _orderedItems) &&
            const DeepCollectionEquality()
                .equals(other.orderTotalPrice, orderTotalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_orderedItems),
      const DeepCollectionEquality().hash(orderTotalPrice));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartDataModelCopyWith<_$_CartDataModel> get copyWith =>
      __$$_CartDataModelCopyWithImpl<_$_CartDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartDataModelToJson(
      this,
    );
  }
}

abstract class _CartDataModel implements CartDataModel {
  const factory _CartDataModel(
      {final List<CartOrderedItemsModel> orderedItems,
      final dynamic orderTotalPrice}) = _$_CartDataModel;

  factory _CartDataModel.fromJson(Map<String, dynamic> json) =
      _$_CartDataModel.fromJson;

  @override
  List<CartOrderedItemsModel> get orderedItems;
  @override
  dynamic get orderTotalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_CartDataModelCopyWith<_$_CartDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CartOrderedItemsModel _$CartOrderedItemsModelFromJson(
    Map<String, dynamic> json) {
  return _CartOrderedItemsModel.fromJson(json);
}

/// @nodoc
mixin _$CartOrderedItemsModel {
  @JsonKey(name: "_id")
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get productId => throw _privateConstructorUsedError;
  dynamic get quantity => throw _privateConstructorUsedError;
  dynamic get userId => throw _privateConstructorUsedError;
  dynamic get shippingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  dynamic get v => throw _privateConstructorUsedError;
  dynamic get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartOrderedItemsModelCopyWith<CartOrderedItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartOrderedItemsModelCopyWith<$Res> {
  factory $CartOrderedItemsModelCopyWith(CartOrderedItemsModel value,
          $Res Function(CartOrderedItemsModel) then) =
      _$CartOrderedItemsModelCopyWithImpl<$Res, CartOrderedItemsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") dynamic id,
      dynamic productId,
      dynamic quantity,
      dynamic userId,
      dynamic shippingAddress,
      @JsonKey(name: "__v") dynamic v,
      dynamic totalPrice});
}

/// @nodoc
class _$CartOrderedItemsModelCopyWithImpl<$Res,
        $Val extends CartOrderedItemsModel>
    implements $CartOrderedItemsModelCopyWith<$Res> {
  _$CartOrderedItemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? userId = freezed,
    Object? shippingAddress = freezed,
    Object? v = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as dynamic,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartOrderedItemsModelCopyWith<$Res>
    implements $CartOrderedItemsModelCopyWith<$Res> {
  factory _$$_CartOrderedItemsModelCopyWith(_$_CartOrderedItemsModel value,
          $Res Function(_$_CartOrderedItemsModel) then) =
      __$$_CartOrderedItemsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") dynamic id,
      dynamic productId,
      dynamic quantity,
      dynamic userId,
      dynamic shippingAddress,
      @JsonKey(name: "__v") dynamic v,
      dynamic totalPrice});
}

/// @nodoc
class __$$_CartOrderedItemsModelCopyWithImpl<$Res>
    extends _$CartOrderedItemsModelCopyWithImpl<$Res, _$_CartOrderedItemsModel>
    implements _$$_CartOrderedItemsModelCopyWith<$Res> {
  __$$_CartOrderedItemsModelCopyWithImpl(_$_CartOrderedItemsModel _value,
      $Res Function(_$_CartOrderedItemsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? quantity = freezed,
    Object? userId = freezed,
    Object? shippingAddress = freezed,
    Object? v = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$_CartOrderedItemsModel(
      id: freezed == id ? _value.id! : id,
      productId: freezed == productId ? _value.productId! : productId,
      quantity: freezed == quantity ? _value.quantity! : quantity,
      userId: freezed == userId ? _value.userId! : userId,
      shippingAddress: freezed == shippingAddress
          ? _value.shippingAddress!
          : shippingAddress,
      v: freezed == v ? _value.v! : v,
      totalPrice: freezed == totalPrice ? _value.totalPrice! : totalPrice,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartOrderedItemsModel implements _CartOrderedItemsModel {
  const _$_CartOrderedItemsModel(
      {@JsonKey(name: "_id") this.id = "",
      this.productId = const CartProductItemModel(),
      this.quantity = 0,
      this.userId = "",
      this.shippingAddress = "",
      @JsonKey(name: "__v") this.v = 0,
      this.totalPrice = 0});

  factory _$_CartOrderedItemsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartOrderedItemsModelFromJson(json);

  @override
  @JsonKey(name: "_id")
  final dynamic id;
  @override
  @JsonKey()
  final dynamic productId;
  @override
  @JsonKey()
  final dynamic quantity;
  @override
  @JsonKey()
  final dynamic userId;
  @override
  @JsonKey()
  final dynamic shippingAddress;
  @override
  @JsonKey(name: "__v")
  final dynamic v;
  @override
  @JsonKey()
  final dynamic totalPrice;

  @override
  String toString() {
    return 'CartOrderedItemsModel(id: $id, productId: $productId, quantity: $quantity, userId: $userId, shippingAddress: $shippingAddress, v: $v, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartOrderedItemsModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.shippingAddress, shippingAddress) &&
            const DeepCollectionEquality().equals(other.v, v) &&
            const DeepCollectionEquality()
                .equals(other.totalPrice, totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(shippingAddress),
      const DeepCollectionEquality().hash(v),
      const DeepCollectionEquality().hash(totalPrice));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartOrderedItemsModelCopyWith<_$_CartOrderedItemsModel> get copyWith =>
      __$$_CartOrderedItemsModelCopyWithImpl<_$_CartOrderedItemsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartOrderedItemsModelToJson(
      this,
    );
  }
}

abstract class _CartOrderedItemsModel implements CartOrderedItemsModel {
  const factory _CartOrderedItemsModel(
      {@JsonKey(name: "_id") final dynamic id,
      final dynamic productId,
      final dynamic quantity,
      final dynamic userId,
      final dynamic shippingAddress,
      @JsonKey(name: "__v") final dynamic v,
      final dynamic totalPrice}) = _$_CartOrderedItemsModel;

  factory _CartOrderedItemsModel.fromJson(Map<String, dynamic> json) =
      _$_CartOrderedItemsModel.fromJson;

  @override
  @JsonKey(name: "_id")
  dynamic get id;
  @override
  dynamic get productId;
  @override
  dynamic get quantity;
  @override
  dynamic get userId;
  @override
  dynamic get shippingAddress;
  @override
  @JsonKey(name: "__v")
  dynamic get v;
  @override
  dynamic get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_CartOrderedItemsModelCopyWith<_$_CartOrderedItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CartProductItemModel _$CartProductItemModelFromJson(Map<String, dynamic> json) {
  return _CartProductItemModel.fromJson(json);
}

/// @nodoc
mixin _$CartProductItemModel {
  @JsonKey(name: "_id")
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get category => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  dynamic get price => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  dynamic get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductItemModelCopyWith<CartProductItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductItemModelCopyWith<$Res> {
  factory $CartProductItemModelCopyWith(CartProductItemModel value,
          $Res Function(CartProductItemModel) then) =
      _$CartProductItemModelCopyWithImpl<$Res, CartProductItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") dynamic id,
      dynamic name,
      dynamic description,
      dynamic category,
      dynamic image,
      dynamic price,
      @JsonKey(name: "__v") dynamic v});
}

/// @nodoc
class _$CartProductItemModelCopyWithImpl<$Res,
        $Val extends CartProductItemModel>
    implements $CartProductItemModelCopyWith<$Res> {
  _$CartProductItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartProductItemModelCopyWith<$Res>
    implements $CartProductItemModelCopyWith<$Res> {
  factory _$$_CartProductItemModelCopyWith(_$_CartProductItemModel value,
          $Res Function(_$_CartProductItemModel) then) =
      __$$_CartProductItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") dynamic id,
      dynamic name,
      dynamic description,
      dynamic category,
      dynamic image,
      dynamic price,
      @JsonKey(name: "__v") dynamic v});
}

/// @nodoc
class __$$_CartProductItemModelCopyWithImpl<$Res>
    extends _$CartProductItemModelCopyWithImpl<$Res, _$_CartProductItemModel>
    implements _$$_CartProductItemModelCopyWith<$Res> {
  __$$_CartProductItemModelCopyWithImpl(_$_CartProductItemModel _value,
      $Res Function(_$_CartProductItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? v = freezed,
  }) {
    return _then(_$_CartProductItemModel(
      id: freezed == id ? _value.id! : id,
      name: freezed == name ? _value.name! : name,
      description: freezed == description ? _value.description! : description,
      category: freezed == category ? _value.category! : category,
      image: freezed == image ? _value.image! : image,
      price: freezed == price ? _value.price! : price,
      v: freezed == v ? _value.v! : v,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartProductItemModel implements _CartProductItemModel {
  const _$_CartProductItemModel(
      {@JsonKey(name: "_id") this.id = "",
      this.name = "",
      this.description = "",
      this.category = "",
      this.image = "",
      this.price = 0,
      @JsonKey(name: "__v") this.v = 0});

  factory _$_CartProductItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartProductItemModelFromJson(json);

  @override
  @JsonKey(name: "_id")
  final dynamic id;
  @override
  @JsonKey()
  final dynamic name;
  @override
  @JsonKey()
  final dynamic description;
  @override
  @JsonKey()
  final dynamic category;
  @override
  @JsonKey()
  final dynamic image;
  @override
  @JsonKey()
  final dynamic price;
  @override
  @JsonKey(name: "__v")
  final dynamic v;

  @override
  String toString() {
    return 'CartProductItemModel(id: $id, name: $name, description: $description, category: $category, image: $image, price: $price, v: $v)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartProductItemModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.v, v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(v));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartProductItemModelCopyWith<_$_CartProductItemModel> get copyWith =>
      __$$_CartProductItemModelCopyWithImpl<_$_CartProductItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartProductItemModelToJson(
      this,
    );
  }
}

abstract class _CartProductItemModel implements CartProductItemModel {
  const factory _CartProductItemModel(
      {@JsonKey(name: "_id") final dynamic id,
      final dynamic name,
      final dynamic description,
      final dynamic category,
      final dynamic image,
      final dynamic price,
      @JsonKey(name: "__v") final dynamic v}) = _$_CartProductItemModel;

  factory _CartProductItemModel.fromJson(Map<String, dynamic> json) =
      _$_CartProductItemModel.fromJson;

  @override
  @JsonKey(name: "_id")
  dynamic get id;
  @override
  dynamic get name;
  @override
  dynamic get description;
  @override
  dynamic get category;
  @override
  dynamic get image;
  @override
  dynamic get price;
  @override
  @JsonKey(name: "__v")
  dynamic get v;
  @override
  @JsonKey(ignore: true)
  _$$_CartProductItemModelCopyWith<_$_CartProductItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
