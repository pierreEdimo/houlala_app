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
  @HiveField(0)
  @JsonKey(name: 'id')
  int? get dbId => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  double? get unitSellingPrice => throw _privateConstructorUsedError;
  @HiveField(4)
  double? get unitBuyingPrice => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get quantity => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get defaultQuantity => throw _privateConstructorUsedError;
  @HiveField(7)
  List<String>? get images => throw _privateConstructorUsedError;
  @HiveField(8)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(9)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(10)
  DateTime? get availableDate => throw _privateConstructorUsedError;
  @HiveField(11)
  CategoryModel? get category => throw _privateConstructorUsedError;
  @HiveField(12)
  ProductType? get productType => throw _privateConstructorUsedError;
  @HiveField(13)
  LocalModel? get local => throw _privateConstructorUsedError;
  @HiveField(14)
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
      {@HiveField(0) @JsonKey(name: 'id') int? dbId,
      @HiveField(1) String? name,
      @HiveField(2) String? description,
      @HiveField(3) double? unitSellingPrice,
      @HiveField(4) double? unitBuyingPrice,
      @HiveField(5) int? quantity,
      @HiveField(6) int? defaultQuantity,
      @HiveField(7) List<String>? images,
      @HiveField(8) DateTime? createdAt,
      @HiveField(9) DateTime? updatedAt,
      @HiveField(10) DateTime? availableDate,
      @HiveField(11) CategoryModel? category,
      @HiveField(12) ProductType? productType,
      @HiveField(13) LocalModel? local,
      @HiveField(14) bool? isFavorite});

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
    Object? dbId = freezed,
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
      dbId: freezed == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
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
      {@HiveField(0) @JsonKey(name: 'id') int? dbId,
      @HiveField(1) String? name,
      @HiveField(2) String? description,
      @HiveField(3) double? unitSellingPrice,
      @HiveField(4) double? unitBuyingPrice,
      @HiveField(5) int? quantity,
      @HiveField(6) int? defaultQuantity,
      @HiveField(7) List<String>? images,
      @HiveField(8) DateTime? createdAt,
      @HiveField(9) DateTime? updatedAt,
      @HiveField(10) DateTime? availableDate,
      @HiveField(11) CategoryModel? category,
      @HiveField(12) ProductType? productType,
      @HiveField(13) LocalModel? local,
      @HiveField(14) bool? isFavorite});

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
    Object? dbId = freezed,
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
      dbId: freezed == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
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
class _$ProductImpl extends _Product {
  _$ProductImpl(
      {@HiveField(0) @JsonKey(name: 'id') this.dbId,
      @HiveField(1) this.name,
      @HiveField(2) this.description,
      @HiveField(3) this.unitSellingPrice,
      @HiveField(4) this.unitBuyingPrice,
      @HiveField(5) this.quantity = 1,
      @HiveField(6) this.defaultQuantity = 1,
      @HiveField(7) final List<String>? images,
      @HiveField(8) this.createdAt,
      @HiveField(9) this.updatedAt,
      @HiveField(10) this.availableDate,
      @HiveField(11) this.category,
      @HiveField(12) this.productType,
      @HiveField(13) this.local,
      @HiveField(14) this.isFavorite})
      : _images = images,
        super._();

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  final int? dbId;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final String? description;
  @override
  @HiveField(3)
  final double? unitSellingPrice;
  @override
  @HiveField(4)
  final double? unitBuyingPrice;
  @override
  @JsonKey()
  @HiveField(5)
  final int? quantity;
  @override
  @JsonKey()
  @HiveField(6)
  final int? defaultQuantity;
  final List<String>? _images;
  @override
  @HiveField(7)
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(8)
  final DateTime? createdAt;
  @override
  @HiveField(9)
  final DateTime? updatedAt;
  @override
  @HiveField(10)
  final DateTime? availableDate;
  @override
  @HiveField(11)
  final CategoryModel? category;
  @override
  @HiveField(12)
  final ProductType? productType;
  @override
  @HiveField(13)
  final LocalModel? local;
  @override
  @HiveField(14)
  final bool? isFavorite;

  @override
  String toString() {
    return 'Product(dbId: $dbId, name: $name, description: $description, unitSellingPrice: $unitSellingPrice, unitBuyingPrice: $unitBuyingPrice, quantity: $quantity, defaultQuantity: $defaultQuantity, images: $images, createdAt: $createdAt, updatedAt: $updatedAt, availableDate: $availableDate, category: $category, productType: $productType, local: $local, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.dbId, dbId) || other.dbId == dbId) &&
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
      dbId,
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

abstract class _Product extends Product {
  factory _Product(
      {@HiveField(0) @JsonKey(name: 'id') final int? dbId,
      @HiveField(1) final String? name,
      @HiveField(2) final String? description,
      @HiveField(3) final double? unitSellingPrice,
      @HiveField(4) final double? unitBuyingPrice,
      @HiveField(5) final int? quantity,
      @HiveField(6) final int? defaultQuantity,
      @HiveField(7) final List<String>? images,
      @HiveField(8) final DateTime? createdAt,
      @HiveField(9) final DateTime? updatedAt,
      @HiveField(10) final DateTime? availableDate,
      @HiveField(11) final CategoryModel? category,
      @HiveField(12) final ProductType? productType,
      @HiveField(13) final LocalModel? local,
      @HiveField(14) final bool? isFavorite}) = _$ProductImpl;
  _Product._() : super._();

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

// ignore: invalid_annotation_target
  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  int? get dbId;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  double? get unitSellingPrice;
  @override
  @HiveField(4)
  double? get unitBuyingPrice;
  @override
  @HiveField(5)
  int? get quantity;
  @override
  @HiveField(6)
  int? get defaultQuantity;
  @override
  @HiveField(7)
  List<String>? get images;
  @override
  @HiveField(8)
  DateTime? get createdAt;
  @override
  @HiveField(9)
  DateTime? get updatedAt;
  @override
  @HiveField(10)
  DateTime? get availableDate;
  @override
  @HiveField(11)
  CategoryModel? get category;
  @override
  @HiveField(12)
  ProductType? get productType;
  @override
  @HiveField(13)
  LocalModel? get local;
  @override
  @HiveField(14)
  bool? get isFavorite;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
