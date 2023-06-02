// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  dynamic get status => throw _privateConstructorUsedError;
  List<ProductDataModel> get data => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call({dynamic status, List<ProductDataModel> data, dynamic message});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductModelCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$_ProductModelCopyWith(
          _$_ProductModel value, $Res Function(_$_ProductModel) then) =
      __$$_ProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic status, List<ProductDataModel> data, dynamic message});
}

/// @nodoc
class __$$_ProductModelCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$_ProductModel>
    implements _$$_ProductModelCopyWith<$Res> {
  __$$_ProductModelCopyWithImpl(
      _$_ProductModel _value, $Res Function(_$_ProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$_ProductModel(
      status: freezed == status ? _value.status! : status,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductDataModel>,
      message: freezed == message ? _value.message! : message,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductModel with DiagnosticableTreeMixin implements _ProductModel {
  const _$_ProductModel(
      {this.status = false,
      final List<ProductDataModel> data = const [],
      this.message = ""})
      : _data = data;

  factory _$_ProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductModelFromJson(json);

  @override
  @JsonKey()
  final dynamic status;
  final List<ProductDataModel> _data;
  @override
  @JsonKey()
  List<ProductDataModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final dynamic message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductModel(status: $status, data: $data, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductModel'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      __$$_ProductModelCopyWithImpl<_$_ProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductModelToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {final dynamic status,
      final List<ProductDataModel> data,
      final dynamic message}) = _$_ProductModel;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$_ProductModel.fromJson;

  @override
  dynamic get status;
  @override
  List<ProductDataModel> get data;
  @override
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$_ProductModelCopyWith<_$_ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDataModel _$ProductDataModelFromJson(Map<String, dynamic> json) {
  return _ProductDataModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDataModel {
  dynamic get category => throw _privateConstructorUsedError;
  dynamic get href => throw _privateConstructorUsedError;
  List<CategoryDataModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDataModelCopyWith<ProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataModelCopyWith<$Res> {
  factory $ProductDataModelCopyWith(
          ProductDataModel value, $Res Function(ProductDataModel) then) =
      _$ProductDataModelCopyWithImpl<$Res, ProductDataModel>;
  @useResult
  $Res call({dynamic category, dynamic href, List<CategoryDataModel> data});
}

/// @nodoc
class _$ProductDataModelCopyWithImpl<$Res, $Val extends ProductDataModel>
    implements $ProductDataModelCopyWith<$Res> {
  _$ProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? href = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as dynamic,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryDataModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDataModelCopyWith<$Res>
    implements $ProductDataModelCopyWith<$Res> {
  factory _$$_ProductDataModelCopyWith(
          _$_ProductDataModel value, $Res Function(_$_ProductDataModel) then) =
      __$$_ProductDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic category, dynamic href, List<CategoryDataModel> data});
}

/// @nodoc
class __$$_ProductDataModelCopyWithImpl<$Res>
    extends _$ProductDataModelCopyWithImpl<$Res, _$_ProductDataModel>
    implements _$$_ProductDataModelCopyWith<$Res> {
  __$$_ProductDataModelCopyWithImpl(
      _$_ProductDataModel _value, $Res Function(_$_ProductDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
    Object? href = freezed,
    Object? data = null,
  }) {
    return _then(_$_ProductDataModel(
      category: freezed == category ? _value.category! : category,
      href: freezed == href ? _value.href! : href,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDataModel
    with DiagnosticableTreeMixin
    implements _ProductDataModel {
  const _$_ProductDataModel(
      {this.category = "",
      this.href = "",
      final List<CategoryDataModel> data = const []})
      : _data = data;

  factory _$_ProductDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDataModelFromJson(json);

  @override
  @JsonKey()
  final dynamic category;
  @override
  @JsonKey()
  final dynamic href;
  final List<CategoryDataModel> _data;
  @override
  @JsonKey()
  List<CategoryDataModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductDataModel(category: $category, href: $href, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductDataModel'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('href', href))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDataModel &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.href, href) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(href),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDataModelCopyWith<_$_ProductDataModel> get copyWith =>
      __$$_ProductDataModelCopyWithImpl<_$_ProductDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDataModelToJson(
      this,
    );
  }
}

abstract class _ProductDataModel implements ProductDataModel {
  const factory _ProductDataModel(
      {final dynamic category,
      final dynamic href,
      final List<CategoryDataModel> data}) = _$_ProductDataModel;

  factory _ProductDataModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDataModel.fromJson;

  @override
  dynamic get category;
  @override
  dynamic get href;
  @override
  List<CategoryDataModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDataModelCopyWith<_$_ProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryDataModel _$CategoryDataModelFromJson(Map<String, dynamic> json) {
  return _CategoryDataModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryDataModel {
  @JsonKey(name: "_id")
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get category => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  @JsonKey(name: "__v")
  dynamic get v => throw _privateConstructorUsedError;
  dynamic get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDataModelCopyWith<CategoryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDataModelCopyWith<$Res> {
  factory $CategoryDataModelCopyWith(
          CategoryDataModel value, $Res Function(CategoryDataModel) then) =
      _$CategoryDataModelCopyWithImpl<$Res, CategoryDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") dynamic id,
      dynamic name,
      dynamic description,
      dynamic category,
      dynamic image,
      @JsonKey(name: "__v") dynamic v,
      dynamic price});
}

/// @nodoc
class _$CategoryDataModelCopyWithImpl<$Res, $Val extends CategoryDataModel>
    implements $CategoryDataModelCopyWith<$Res> {
  _$CategoryDataModelCopyWithImpl(this._value, this._then);

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
    Object? v = freezed,
    Object? price = freezed,
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
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryDataModelCopyWith<$Res>
    implements $CategoryDataModelCopyWith<$Res> {
  factory _$$_CategoryDataModelCopyWith(_$_CategoryDataModel value,
          $Res Function(_$_CategoryDataModel) then) =
      __$$_CategoryDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") dynamic id,
      dynamic name,
      dynamic description,
      dynamic category,
      dynamic image,
      @JsonKey(name: "__v") dynamic v,
      dynamic price});
}

/// @nodoc
class __$$_CategoryDataModelCopyWithImpl<$Res>
    extends _$CategoryDataModelCopyWithImpl<$Res, _$_CategoryDataModel>
    implements _$$_CategoryDataModelCopyWith<$Res> {
  __$$_CategoryDataModelCopyWithImpl(
      _$_CategoryDataModel _value, $Res Function(_$_CategoryDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? v = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_CategoryDataModel(
      id: freezed == id ? _value.id! : id,
      name: freezed == name ? _value.name! : name,
      description: freezed == description ? _value.description! : description,
      category: freezed == category ? _value.category! : category,
      image: freezed == image ? _value.image! : image,
      v: freezed == v ? _value.v! : v,
      price: freezed == price ? _value.price! : price,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryDataModel
    with DiagnosticableTreeMixin
    implements _CategoryDataModel {
  const _$_CategoryDataModel(
      {@JsonKey(name: "_id") this.id = "",
      this.name = "",
      this.description = "",
      this.category = "",
      this.image = "",
      @JsonKey(name: "__v") this.v = 0,
      this.price = 0});

  factory _$_CategoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryDataModelFromJson(json);

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
  @JsonKey(name: "__v")
  final dynamic v;
  @override
  @JsonKey()
  final dynamic price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryDataModel(id: $id, name: $name, description: $description, category: $category, image: $image, v: $v, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryDataModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('v', v))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.v, v) &&
            const DeepCollectionEquality().equals(other.price, price));
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
      const DeepCollectionEquality().hash(v),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryDataModelCopyWith<_$_CategoryDataModel> get copyWith =>
      __$$_CategoryDataModelCopyWithImpl<_$_CategoryDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryDataModelToJson(
      this,
    );
  }
}

abstract class _CategoryDataModel implements CategoryDataModel {
  const factory _CategoryDataModel(
      {@JsonKey(name: "_id") final dynamic id,
      final dynamic name,
      final dynamic description,
      final dynamic category,
      final dynamic image,
      @JsonKey(name: "__v") final dynamic v,
      final dynamic price}) = _$_CategoryDataModel;

  factory _CategoryDataModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryDataModel.fromJson;

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
  @JsonKey(name: "__v")
  dynamic get v;
  @override
  dynamic get price;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryDataModelCopyWith<_$_CategoryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
