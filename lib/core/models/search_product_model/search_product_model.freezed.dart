// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchProductModel _$SearchProductModelFromJson(Map<String, dynamic> json) {
  return _SearchProductModel.fromJson(json);
}

/// @nodoc
mixin _$SearchProductModel {
  dynamic get status => throw _privateConstructorUsedError;
  List<SearchCategoryDataModel> get data => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchProductModelCopyWith<SearchProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductModelCopyWith<$Res> {
  factory $SearchProductModelCopyWith(
          SearchProductModel value, $Res Function(SearchProductModel) then) =
      _$SearchProductModelCopyWithImpl<$Res, SearchProductModel>;
  @useResult
  $Res call(
      {dynamic status, List<SearchCategoryDataModel> data, dynamic message});
}

/// @nodoc
class _$SearchProductModelCopyWithImpl<$Res, $Val extends SearchProductModel>
    implements $SearchProductModelCopyWith<$Res> {
  _$SearchProductModelCopyWithImpl(this._value, this._then);

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
              as List<SearchCategoryDataModel>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchProductModelCopyWith<$Res>
    implements $SearchProductModelCopyWith<$Res> {
  factory _$$_SearchProductModelCopyWith(_$_SearchProductModel value,
          $Res Function(_$_SearchProductModel) then) =
      __$$_SearchProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic status, List<SearchCategoryDataModel> data, dynamic message});
}

/// @nodoc
class __$$_SearchProductModelCopyWithImpl<$Res>
    extends _$SearchProductModelCopyWithImpl<$Res, _$_SearchProductModel>
    implements _$$_SearchProductModelCopyWith<$Res> {
  __$$_SearchProductModelCopyWithImpl(
      _$_SearchProductModel _value, $Res Function(_$_SearchProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = null,
    Object? message = freezed,
  }) {
    return _then(_$_SearchProductModel(
      status: freezed == status ? _value.status! : status,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SearchCategoryDataModel>,
      message: freezed == message ? _value.message! : message,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchProductModel implements _SearchProductModel {
  const _$_SearchProductModel(
      {this.status = false,
      final List<SearchCategoryDataModel> data = const [],
      this.message = ""})
      : _data = data;

  factory _$_SearchProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchProductModelFromJson(json);

  @override
  @JsonKey()
  final dynamic status;
  final List<SearchCategoryDataModel> _data;
  @override
  @JsonKey()
  List<SearchCategoryDataModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final dynamic message;

  @override
  String toString() {
    return 'SearchProductModel(status: $status, data: $data, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchProductModel &&
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
  _$$_SearchProductModelCopyWith<_$_SearchProductModel> get copyWith =>
      __$$_SearchProductModelCopyWithImpl<_$_SearchProductModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchProductModelToJson(
      this,
    );
  }
}

abstract class _SearchProductModel implements SearchProductModel {
  const factory _SearchProductModel(
      {final dynamic status,
      final List<SearchCategoryDataModel> data,
      final dynamic message}) = _$_SearchProductModel;

  factory _SearchProductModel.fromJson(Map<String, dynamic> json) =
      _$_SearchProductModel.fromJson;

  @override
  dynamic get status;
  @override
  List<SearchCategoryDataModel> get data;
  @override
  dynamic get message;
  @override
  @JsonKey(ignore: true)
  _$$_SearchProductModelCopyWith<_$_SearchProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchCategoryDataModel _$SearchCategoryDataModelFromJson(
    Map<String, dynamic> json) {
  return _SearchCategoryDataModel.fromJson(json);
}

/// @nodoc
mixin _$SearchCategoryDataModel {
  dynamic get id => throw _privateConstructorUsedError;
  dynamic get name => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get category => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  dynamic get v => throw _privateConstructorUsedError;
  dynamic get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchCategoryDataModelCopyWith<SearchCategoryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchCategoryDataModelCopyWith<$Res> {
  factory $SearchCategoryDataModelCopyWith(SearchCategoryDataModel value,
          $Res Function(SearchCategoryDataModel) then) =
      _$SearchCategoryDataModelCopyWithImpl<$Res, SearchCategoryDataModel>;
  @useResult
  $Res call(
      {dynamic id,
      dynamic name,
      dynamic description,
      dynamic category,
      dynamic image,
      dynamic v,
      dynamic price});
}

/// @nodoc
class _$SearchCategoryDataModelCopyWithImpl<$Res,
        $Val extends SearchCategoryDataModel>
    implements $SearchCategoryDataModelCopyWith<$Res> {
  _$SearchCategoryDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_SearchCategoryDataModelCopyWith<$Res>
    implements $SearchCategoryDataModelCopyWith<$Res> {
  factory _$$_SearchCategoryDataModelCopyWith(_$_SearchCategoryDataModel value,
          $Res Function(_$_SearchCategoryDataModel) then) =
      __$$_SearchCategoryDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      dynamic name,
      dynamic description,
      dynamic category,
      dynamic image,
      dynamic v,
      dynamic price});
}

/// @nodoc
class __$$_SearchCategoryDataModelCopyWithImpl<$Res>
    extends _$SearchCategoryDataModelCopyWithImpl<$Res,
        _$_SearchCategoryDataModel>
    implements _$$_SearchCategoryDataModelCopyWith<$Res> {
  __$$_SearchCategoryDataModelCopyWithImpl(_$_SearchCategoryDataModel _value,
      $Res Function(_$_SearchCategoryDataModel) _then)
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
    return _then(_$_SearchCategoryDataModel(
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
class _$_SearchCategoryDataModel implements _SearchCategoryDataModel {
  const _$_SearchCategoryDataModel(
      {this.id = "",
      this.name = "",
      this.description = "",
      this.category = "",
      this.image = "",
      this.v = 0,
      this.price = 0});

  factory _$_SearchCategoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchCategoryDataModelFromJson(json);

  @override
  @JsonKey()
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
  final dynamic v;
  @override
  @JsonKey()
  final dynamic price;

  @override
  String toString() {
    return 'SearchCategoryDataModel(id: $id, name: $name, description: $description, category: $category, image: $image, v: $v, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchCategoryDataModel &&
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
  _$$_SearchCategoryDataModelCopyWith<_$_SearchCategoryDataModel>
      get copyWith =>
          __$$_SearchCategoryDataModelCopyWithImpl<_$_SearchCategoryDataModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchCategoryDataModelToJson(
      this,
    );
  }
}

abstract class _SearchCategoryDataModel implements SearchCategoryDataModel {
  const factory _SearchCategoryDataModel(
      {final dynamic id,
      final dynamic name,
      final dynamic description,
      final dynamic category,
      final dynamic image,
      final dynamic v,
      final dynamic price}) = _$_SearchCategoryDataModel;

  factory _SearchCategoryDataModel.fromJson(Map<String, dynamic> json) =
      _$_SearchCategoryDataModel.fromJson;

  @override
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
  dynamic get v;
  @override
  dynamic get price;
  @override
  @JsonKey(ignore: true)
  _$$_SearchCategoryDataModelCopyWith<_$_SearchCategoryDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
