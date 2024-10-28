// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'seller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Seller _$SellerFromJson(Map<String, dynamic> json) {
  return _Seller.fromJson(json);
}

/// @nodoc
mixin _$Seller {
  int? get id => throw _privateConstructorUsedError;
  String? get sellerName => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool? get isStore => throw _privateConstructorUsedError;
  String? get longDescription => throw _privateConstructorUsedError;
  String? get telephoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get adress => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  SubCategory? get subCategory => throw _privateConstructorUsedError;

  /// Serializes this Seller to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Seller
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SellerCopyWith<Seller> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerCopyWith<$Res> {
  factory $SellerCopyWith(Seller value, $Res Function(Seller) then) =
      _$SellerCopyWithImpl<$Res, Seller>;
  @useResult
  $Res call(
      {int? id,
      String? sellerName,
      String? imageUrl,
      bool? isStore,
      String? longDescription,
      String? telephoneNumber,
      String? email,
      String? website,
      String? countryCode,
      String? city,
      String? adress,
      DateTime? createdAt,
      DateTime? updatedAt,
      SubCategory? subCategory});

  $SubCategoryCopyWith<$Res>? get subCategory;
}

/// @nodoc
class _$SellerCopyWithImpl<$Res, $Val extends Seller>
    implements $SellerCopyWith<$Res> {
  _$SellerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Seller
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sellerName = freezed,
    Object? imageUrl = freezed,
    Object? isStore = freezed,
    Object? longDescription = freezed,
    Object? telephoneNumber = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? countryCode = freezed,
    Object? city = freezed,
    Object? adress = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? subCategory = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sellerName: freezed == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isStore: freezed == isStore
          ? _value.isStore
          : isStore // ignore: cast_nullable_to_non_nullable
              as bool?,
      longDescription: freezed == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      telephoneNumber: freezed == telephoneNumber
          ? _value.telephoneNumber
          : telephoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
    ) as $Val);
  }

  /// Create a copy of Seller
  /// with the given fields replaced by the non-null parameter values.
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
}

/// @nodoc
abstract class _$$SellerImplCopyWith<$Res> implements $SellerCopyWith<$Res> {
  factory _$$SellerImplCopyWith(
          _$SellerImpl value, $Res Function(_$SellerImpl) then) =
      __$$SellerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? sellerName,
      String? imageUrl,
      bool? isStore,
      String? longDescription,
      String? telephoneNumber,
      String? email,
      String? website,
      String? countryCode,
      String? city,
      String? adress,
      DateTime? createdAt,
      DateTime? updatedAt,
      SubCategory? subCategory});

  @override
  $SubCategoryCopyWith<$Res>? get subCategory;
}

/// @nodoc
class __$$SellerImplCopyWithImpl<$Res>
    extends _$SellerCopyWithImpl<$Res, _$SellerImpl>
    implements _$$SellerImplCopyWith<$Res> {
  __$$SellerImplCopyWithImpl(
      _$SellerImpl _value, $Res Function(_$SellerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Seller
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sellerName = freezed,
    Object? imageUrl = freezed,
    Object? isStore = freezed,
    Object? longDescription = freezed,
    Object? telephoneNumber = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? countryCode = freezed,
    Object? city = freezed,
    Object? adress = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? subCategory = freezed,
  }) {
    return _then(_$SellerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sellerName: freezed == sellerName
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isStore: freezed == isStore
          ? _value.isStore
          : isStore // ignore: cast_nullable_to_non_nullable
              as bool?,
      longDescription: freezed == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      telephoneNumber: freezed == telephoneNumber
          ? _value.telephoneNumber
          : telephoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      adress: freezed == adress
          ? _value.adress
          : adress // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SellerImpl implements _Seller {
  _$SellerImpl(
      {this.id,
      this.sellerName,
      this.imageUrl,
      this.isStore,
      this.longDescription,
      this.telephoneNumber,
      this.email,
      this.website,
      this.countryCode,
      this.city,
      this.adress,
      this.createdAt,
      this.updatedAt,
      this.subCategory});

  factory _$SellerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SellerImplFromJson(json);

  @override
  final int? id;
  @override
  final String? sellerName;
  @override
  final String? imageUrl;
  @override
  final bool? isStore;
  @override
  final String? longDescription;
  @override
  final String? telephoneNumber;
  @override
  final String? email;
  @override
  final String? website;
  @override
  final String? countryCode;
  @override
  final String? city;
  @override
  final String? adress;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final SubCategory? subCategory;

  @override
  String toString() {
    return 'Seller(id: $id, sellerName: $sellerName, imageUrl: $imageUrl, isStore: $isStore, longDescription: $longDescription, telephoneNumber: $telephoneNumber, email: $email, website: $website, countryCode: $countryCode, city: $city, adress: $adress, createdAt: $createdAt, updatedAt: $updatedAt, subCategory: $subCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SellerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isStore, isStore) || other.isStore == isStore) &&
            (identical(other.longDescription, longDescription) ||
                other.longDescription == longDescription) &&
            (identical(other.telephoneNumber, telephoneNumber) ||
                other.telephoneNumber == telephoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.adress, adress) || other.adress == adress) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sellerName,
      imageUrl,
      isStore,
      longDescription,
      telephoneNumber,
      email,
      website,
      countryCode,
      city,
      adress,
      createdAt,
      updatedAt,
      subCategory);

  /// Create a copy of Seller
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SellerImplCopyWith<_$SellerImpl> get copyWith =>
      __$$SellerImplCopyWithImpl<_$SellerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SellerImplToJson(
      this,
    );
  }
}

abstract class _Seller implements Seller {
  factory _Seller(
      {final int? id,
      final String? sellerName,
      final String? imageUrl,
      final bool? isStore,
      final String? longDescription,
      final String? telephoneNumber,
      final String? email,
      final String? website,
      final String? countryCode,
      final String? city,
      final String? adress,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final SubCategory? subCategory}) = _$SellerImpl;

  factory _Seller.fromJson(Map<String, dynamic> json) = _$SellerImpl.fromJson;

  @override
  int? get id;
  @override
  String? get sellerName;
  @override
  String? get imageUrl;
  @override
  bool? get isStore;
  @override
  String? get longDescription;
  @override
  String? get telephoneNumber;
  @override
  String? get email;
  @override
  String? get website;
  @override
  String? get countryCode;
  @override
  String? get city;
  @override
  String? get adress;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  SubCategory? get subCategory;

  /// Create a copy of Seller
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SellerImplCopyWith<_$SellerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
