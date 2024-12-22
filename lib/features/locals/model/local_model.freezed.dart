// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalModel _$LocalModelFromJson(Map<String, dynamic> json) {
  return _LocalModel.fromJson(json);
}

/// @nodoc
mixin _$LocalModel {
  int? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool? get isStore => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get telephoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  ProductType? get productType => throw _privateConstructorUsedError;

  /// Serializes this LocalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalModelCopyWith<LocalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalModelCopyWith<$Res> {
  factory $LocalModelCopyWith(
          LocalModel value, $Res Function(LocalModel) then) =
      _$LocalModelCopyWithImpl<$Res, LocalModel>;
  @useResult
  $Res call(
      {int? id,
      String? userId,
      String? name,
      String? imageUrl,
      bool? isStore,
      bool? isVerified,
      String? description,
      String? telephoneNumber,
      String? email,
      String? website,
      String? countryCode,
      String? city,
      String? street,
      DateTime? createdAt,
      DateTime? updatedAt,
      ProductType? productType});

  $ProductTypeCopyWith<$Res>? get productType;
}

/// @nodoc
class _$LocalModelCopyWithImpl<$Res, $Val extends LocalModel>
    implements $LocalModelCopyWith<$Res> {
  _$LocalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? isStore = freezed,
    Object? isVerified = freezed,
    Object? description = freezed,
    Object? telephoneNumber = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? countryCode = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? productType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isStore: freezed == isStore
          ? _value.isStore
          : isStore // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductType?,
    ) as $Val);
  }

  /// Create a copy of LocalModel
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
}

/// @nodoc
abstract class _$$LocalModelImplCopyWith<$Res>
    implements $LocalModelCopyWith<$Res> {
  factory _$$LocalModelImplCopyWith(
          _$LocalModelImpl value, $Res Function(_$LocalModelImpl) then) =
      __$$LocalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? userId,
      String? name,
      String? imageUrl,
      bool? isStore,
      bool? isVerified,
      String? description,
      String? telephoneNumber,
      String? email,
      String? website,
      String? countryCode,
      String? city,
      String? street,
      DateTime? createdAt,
      DateTime? updatedAt,
      ProductType? productType});

  @override
  $ProductTypeCopyWith<$Res>? get productType;
}

/// @nodoc
class __$$LocalModelImplCopyWithImpl<$Res>
    extends _$LocalModelCopyWithImpl<$Res, _$LocalModelImpl>
    implements _$$LocalModelImplCopyWith<$Res> {
  __$$LocalModelImplCopyWithImpl(
      _$LocalModelImpl _value, $Res Function(_$LocalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? isStore = freezed,
    Object? isVerified = freezed,
    Object? description = freezed,
    Object? telephoneNumber = freezed,
    Object? email = freezed,
    Object? website = freezed,
    Object? countryCode = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? productType = freezed,
  }) {
    return _then(_$LocalModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isStore: freezed == isStore
          ? _value.isStore
          : isStore // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalModelImpl implements _LocalModel {
  _$LocalModelImpl(
      {this.id,
      this.userId,
      this.name,
      this.imageUrl,
      this.isStore,
      this.isVerified,
      this.description,
      this.telephoneNumber,
      this.email,
      this.website,
      this.countryCode,
      this.city,
      this.street,
      this.createdAt,
      this.updatedAt,
      this.productType});

  factory _$LocalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? userId;
  @override
  final String? name;
  @override
  final String? imageUrl;
  @override
  final bool? isStore;
  @override
  final bool? isVerified;
  @override
  final String? description;
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
  final String? street;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final ProductType? productType;

  @override
  String toString() {
    return 'LocalModel(id: $id, userId: $userId, name: $name, imageUrl: $imageUrl, isStore: $isStore, isVerified: $isVerified, description: $description, telephoneNumber: $telephoneNumber, email: $email, website: $website, countryCode: $countryCode, city: $city, street: $street, createdAt: $createdAt, updatedAt: $updatedAt, productType: $productType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isStore, isStore) || other.isStore == isStore) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.telephoneNumber, telephoneNumber) ||
                other.telephoneNumber == telephoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.productType, productType) ||
                other.productType == productType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      name,
      imageUrl,
      isStore,
      isVerified,
      description,
      telephoneNumber,
      email,
      website,
      countryCode,
      city,
      street,
      createdAt,
      updatedAt,
      productType);

  /// Create a copy of LocalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalModelImplCopyWith<_$LocalModelImpl> get copyWith =>
      __$$LocalModelImplCopyWithImpl<_$LocalModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalModelImplToJson(
      this,
    );
  }
}

abstract class _LocalModel implements LocalModel {
  factory _LocalModel(
      {final int? id,
      final String? userId,
      final String? name,
      final String? imageUrl,
      final bool? isStore,
      final bool? isVerified,
      final String? description,
      final String? telephoneNumber,
      final String? email,
      final String? website,
      final String? countryCode,
      final String? city,
      final String? street,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final ProductType? productType}) = _$LocalModelImpl;

  factory _LocalModel.fromJson(Map<String, dynamic> json) =
      _$LocalModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get userId;
  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  bool? get isStore;
  @override
  bool? get isVerified;
  @override
  String? get description;
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
  String? get street;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  ProductType? get productType;

  /// Create a copy of LocalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalModelImplCopyWith<_$LocalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
