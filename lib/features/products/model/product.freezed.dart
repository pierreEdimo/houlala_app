// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get unitSellingPrice => throw _privateConstructorUsedError;
  double? get unitBuyingPrice => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get defaultQuantity => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get availableDate => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  ProductType? get productType => throw _privateConstructorUsedError;
  LocalModel? get local => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      double? unitSellingPrice,
      double? unitBuyingPrice,
      int? quantity,
      int? defaultQuantity,
      List<String>? images,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? availableDate,
      CategoryModel? category,
      ProductType? productType,
      LocalModel? local,
      bool? isFavorite});

  $CategoryModelCopyWith<$Res>? get category;
  $ProductTypeCopyWith<$Res>? get productType;
  $LocalModelCopyWith<$Res>? get local;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? unitSellingPrice = freezed,
    Object? unitBuyingPrice = freezed,
    Object? quantity = freezed,
    Object? defaultQuantity = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? availableDate = freezed,
    Object? category = freezed,
    Object? productType = freezed,
    Object? local = freezed,
    Object? isFavorite = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      unitSellingPrice: freezed == unitSellingPrice
          ? _value.unitSellingPrice
          : unitSellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      unitBuyingPrice: freezed == unitBuyingPrice
          ? _value.unitBuyingPrice
          : unitBuyingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultQuantity: freezed == defaultQuantity
          ? _value.defaultQuantity
          : defaultQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableDate: freezed == availableDate
          ? _value.availableDate
          : availableDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductType?,
      local: freezed == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as LocalModel?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of Product
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

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductTypeCopyWith<$Res>? get productType {
    if (_value.productType == null) {
      return null;
    }

    return $ProductTypeCopyWith<$Res>(_value.productType!, (value) {
      return _then(_value.copyWith(productType: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalModelCopyWith<$Res>? get local {
    if (_value.local == null) {
      return null;
    }

    return $LocalModelCopyWith<$Res>(_value.local!, (value) {
      return _then(_value.copyWith(local: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      double? unitSellingPrice,
      double? unitBuyingPrice,
      int? quantity,
      int? defaultQuantity,
      List<String>? images,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? availableDate,
      CategoryModel? category,
      ProductType? productType,
      LocalModel? local,
      bool? isFavorite});

  @override
  $CategoryModelCopyWith<$Res>? get category;
  @override
  $ProductTypeCopyWith<$Res>? get productType;
  @override
  $LocalModelCopyWith<$Res>? get local;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? unitSellingPrice = freezed,
    Object? unitBuyingPrice = freezed,
    Object? quantity = freezed,
    Object? defaultQuantity = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? availableDate = freezed,
    Object? category = freezed,
    Object? productType = freezed,
    Object? local = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      unitSellingPrice: freezed == unitSellingPrice
          ? _value.unitSellingPrice
          : unitSellingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      unitBuyingPrice: freezed == unitBuyingPrice
          ? _value.unitBuyingPrice
          : unitBuyingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      defaultQuantity: freezed == defaultQuantity
          ? _value.defaultQuantity
          : defaultQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availableDate: freezed == availableDate
          ? _value.availableDate
          : availableDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductType?,
      local: freezed == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as LocalModel?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {this.id,
      this.name,
      this.description,
      this.unitSellingPrice,
      this.unitBuyingPrice,
      this.quantity = 1,
      this.defaultQuantity = 1,
      final List<String>? images,
      this.createdAt,
      this.updatedAt,
      this.availableDate,
      this.category,
      this.productType,
      this.local,
      this.isFavorite})
      : _images = images;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? unitSellingPrice;
  @override
  final double? unitBuyingPrice;
  @override
  @JsonKey()
  final int? quantity;
  @override
  @JsonKey()
  final int? defaultQuantity;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? availableDate;
  @override
  final CategoryModel? category;
  @override
  final ProductType? productType;
  @override
  final LocalModel? local;
  @override
  final bool? isFavorite;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, description: $description, unitSellingPrice: $unitSellingPrice, unitBuyingPrice: $unitBuyingPrice, quantity: $quantity, defaultQuantity: $defaultQuantity, images: $images, createdAt: $createdAt, updatedAt: $updatedAt, availableDate: $availableDate, category: $category, productType: $productType, local: $local, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.unitSellingPrice, unitSellingPrice) ||
                other.unitSellingPrice == unitSellingPrice) &&
            (identical(other.unitBuyingPrice, unitBuyingPrice) ||
                other.unitBuyingPrice == unitBuyingPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.defaultQuantity, defaultQuantity) ||
                other.defaultQuantity == defaultQuantity) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.availableDate, availableDate) ||
                other.availableDate == availableDate) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.local, local) || other.local == local) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      unitSellingPrice,
      unitBuyingPrice,
      quantity,
      defaultQuantity,
      const DeepCollectionEquality().hash(_images),
      createdAt,
      updatedAt,
      availableDate,
      category,
      productType,
      local,
      isFavorite);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
      {final int? id,
      final String? name,
      final String? description,
      final double? unitSellingPrice,
      final double? unitBuyingPrice,
      final int? quantity,
      final int? defaultQuantity,
      final List<String>? images,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? availableDate,
      final CategoryModel? category,
      final ProductType? productType,
      final LocalModel? local,
      final bool? isFavorite}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  double? get unitSellingPrice;
  @override
  double? get unitBuyingPrice;
  @override
  int? get quantity;
  @override
  int? get defaultQuantity;
  @override
  List<String>? get images;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get availableDate;
  @override
  CategoryModel? get category;
  @override
  ProductType? get productType;
  @override
  LocalModel? get local;
  @override
  bool? get isFavorite;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
