// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductType _$ProductTypeFromJson(Map<String, dynamic> json) {
  return _ProductType.fromJson(json);
}

/// @nodoc
mixin _$ProductType {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get route => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;

  /// Serializes this ProductType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductTypeCopyWith<ProductType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTypeCopyWith<$Res> {
  factory $ProductTypeCopyWith(
          ProductType value, $Res Function(ProductType) then) =
      _$ProductTypeCopyWithImpl<$Res, ProductType>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? imageUrl,
      String? route,
      CategoryModel? category});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductTypeCopyWithImpl<$Res, $Val extends ProductType>
    implements $ProductTypeCopyWith<$Res> {
  _$ProductTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? route = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ) as $Val);
  }

  /// Create a copy of ProductType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductTypeImplCopyWith<$Res>
    implements $ProductTypeCopyWith<$Res> {
  factory _$$ProductTypeImplCopyWith(
          _$ProductTypeImpl value, $Res Function(_$ProductTypeImpl) then) =
      __$$ProductTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? imageUrl,
      String? route,
      CategoryModel? category});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ProductTypeImplCopyWithImpl<$Res>
    extends _$ProductTypeCopyWithImpl<$Res, _$ProductTypeImpl>
    implements _$$ProductTypeImplCopyWith<$Res> {
  __$$ProductTypeImplCopyWithImpl(
      _$ProductTypeImpl _value, $Res Function(_$ProductTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? route = freezed,
    Object? category = freezed,
  }) {
    return _then(_$ProductTypeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductTypeImpl implements _ProductType {
  _$ProductTypeImpl(
      {this.id, this.name, this.imageUrl, this.route, this.category});

  factory _$ProductTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductTypeImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? imageUrl;
  @override
  final String? route;
  @override
  final CategoryModel? category;

  @override
  String toString() {
    return 'ProductType(id: $id, name: $name, imageUrl: $imageUrl, route: $route, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, imageUrl, route, category);

  /// Create a copy of ProductType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTypeImplCopyWith<_$ProductTypeImpl> get copyWith =>
      __$$ProductTypeImplCopyWithImpl<_$ProductTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductTypeImplToJson(
      this,
    );
  }
}

abstract class _ProductType implements ProductType {
  factory _ProductType(
      {final int? id,
      final String? name,
      final String? imageUrl,
      final String? route,
      final CategoryModel? category}) = _$ProductTypeImpl;

  factory _ProductType.fromJson(Map<String, dynamic> json) =
      _$ProductTypeImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  String? get route;
  @override
  CategoryModel? get category;

  /// Create a copy of ProductType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductTypeImplCopyWith<_$ProductTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
