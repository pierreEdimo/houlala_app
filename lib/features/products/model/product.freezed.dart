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
  String? get longDescription => throw _privateConstructorUsedError;
  int? get sellingPrice => throw _privateConstructorUsedError;
  double? get buyingPrice => throw _privateConstructorUsedError;
  int? get availableQuantity => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get availableDate => throw _privateConstructorUsedError;
  Categories? get category => throw _privateConstructorUsedError;
  SubCategory? get subCategory => throw _privateConstructorUsedError;
  Seller? get seller => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      String? longDescription,
      int? sellingPrice,
      double? buyingPrice,
      int? availableQuantity,
      int? quantity,
      String? sku,
      List<String>? images,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? availableDate,
      Categories? category,
      SubCategory? subCategory,
      Seller? seller});

  $CategoriesCopyWith<$Res>? get category;
  $SubCategoryCopyWith<$Res>? get subCategory;
  $SellerCopyWith<$Res>? get seller;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? longDescription = freezed,
    Object? sellingPrice = freezed,
    Object? buyingPrice = freezed,
    Object? availableQuantity = freezed,
    Object? quantity = freezed,
    Object? sku = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? availableDate = freezed,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? seller = freezed,
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
      longDescription: freezed == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      buyingPrice: freezed == buyingPrice
          ? _value.buyingPrice
          : buyingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      availableQuantity: freezed == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as Categories?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as Seller?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoriesCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoriesCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubCategoryCopyWith<$Res>? get subCategory {
    if (_value.subCategory == null) {
      return null;
    }

    return $SubCategoryCopyWith<$Res>(_value.subCategory!, (value) {
      return _then(_value.copyWith(subCategory: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SellerCopyWith<$Res>? get seller {
    if (_value.seller == null) {
      return null;
    }

    return $SellerCopyWith<$Res>(_value.seller!, (value) {
      return _then(_value.copyWith(seller: value) as $Val);
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
      String? longDescription,
      int? sellingPrice,
      double? buyingPrice,
      int? availableQuantity,
      int? quantity,
      String? sku,
      List<String>? images,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? availableDate,
      Categories? category,
      SubCategory? subCategory,
      Seller? seller});

  @override
  $CategoriesCopyWith<$Res>? get category;
  @override
  $SubCategoryCopyWith<$Res>? get subCategory;
  @override
  $SellerCopyWith<$Res>? get seller;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? longDescription = freezed,
    Object? sellingPrice = freezed,
    Object? buyingPrice = freezed,
    Object? availableQuantity = freezed,
    Object? quantity = freezed,
    Object? sku = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? availableDate = freezed,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? seller = freezed,
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
      longDescription: freezed == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      buyingPrice: freezed == buyingPrice
          ? _value.buyingPrice
          : buyingPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      availableQuantity: freezed == availableQuantity
          ? _value.availableQuantity
          : availableQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as Categories?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as Seller?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {this.id,
      this.name,
      this.longDescription,
      this.sellingPrice,
      this.buyingPrice,
      this.availableQuantity,
      this.quantity = 1,
      this.sku,
      final List<String>? images,
      this.createdAt,
      this.updatedAt,
      this.availableDate,
      this.category,
      this.subCategory,
      this.seller})
      : _images = images;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? longDescription;
  @override
  final int? sellingPrice;
  @override
  final double? buyingPrice;
  @override
  final int? availableQuantity;
  @override
  @JsonKey()
  final int? quantity;
  @override
  final String? sku;
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
  final Categories? category;
  @override
  final SubCategory? subCategory;
  @override
  final Seller? seller;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, longDescription: $longDescription, sellingPrice: $sellingPrice, buyingPrice: $buyingPrice, availableQuantity: $availableQuantity, quantity: $quantity, sku: $sku, images: $images, createdAt: $createdAt, updatedAt: $updatedAt, availableDate: $availableDate, category: $category, subCategory: $subCategory, seller: $seller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.longDescription, longDescription) ||
                other.longDescription == longDescription) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.buyingPrice, buyingPrice) ||
                other.buyingPrice == buyingPrice) &&
            (identical(other.availableQuantity, availableQuantity) ||
                other.availableQuantity == availableQuantity) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.availableDate, availableDate) ||
                other.availableDate == availableDate) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.seller, seller) || other.seller == seller));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      longDescription,
      sellingPrice,
      buyingPrice,
      availableQuantity,
      quantity,
      sku,
      const DeepCollectionEquality().hash(_images),
      createdAt,
      updatedAt,
      availableDate,
      category,
      subCategory,
      seller);

  @JsonKey(ignore: true)
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
      final String? longDescription,
      final int? sellingPrice,
      final double? buyingPrice,
      final int? availableQuantity,
      final int? quantity,
      final String? sku,
      final List<String>? images,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? availableDate,
      final Categories? category,
      final SubCategory? subCategory,
      final Seller? seller}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get longDescription;
  @override
  int? get sellingPrice;
  @override
  double? get buyingPrice;
  @override
  int? get availableQuantity;
  @override
  int? get quantity;
  @override
  String? get sku;
  @override
  List<String>? get images;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get availableDate;
  @override
  Categories? get category;
  @override
  SubCategory? get subCategory;
  @override
  Seller? get seller;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
