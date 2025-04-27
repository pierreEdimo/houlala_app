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
// ignore: invalid_annotation_target
  @HiveField(0)
  @JsonKey(name: 'id')
  int? get dbId => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get userId => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get imageUrl => throw _privateConstructorUsedError;
  @HiveField(4)
  bool? get isStore => throw _privateConstructorUsedError;
  @HiveField(5)
  bool? get isVerified => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get telephoneNumber => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get website => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get countryCode => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get city => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get street => throw _privateConstructorUsedError;
  @HiveField(13)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(14)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(15)
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
      {@HiveField(0) @JsonKey(name: 'id') int? dbId,
      @HiveField(1) String? userId,
      @HiveField(2) String? name,
      @HiveField(3) String? imageUrl,
      @HiveField(4) bool? isStore,
      @HiveField(5) bool? isVerified,
      @HiveField(6) String? description,
      @HiveField(7) String? telephoneNumber,
      @HiveField(8) String? email,
      @HiveField(9) String? website,
      @HiveField(10) String? countryCode,
      @HiveField(11) String? city,
      @HiveField(12) String? street,
      @HiveField(13) DateTime? createdAt,
      @HiveField(14) DateTime? updatedAt,
      @HiveField(15) ProductType? productType});

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
    Object? dbId = freezed,
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
      dbId: freezed == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
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
      {@HiveField(0) @JsonKey(name: 'id') int? dbId,
      @HiveField(1) String? userId,
      @HiveField(2) String? name,
      @HiveField(3) String? imageUrl,
      @HiveField(4) bool? isStore,
      @HiveField(5) bool? isVerified,
      @HiveField(6) String? description,
      @HiveField(7) String? telephoneNumber,
      @HiveField(8) String? email,
      @HiveField(9) String? website,
      @HiveField(10) String? countryCode,
      @HiveField(11) String? city,
      @HiveField(12) String? street,
      @HiveField(13) DateTime? createdAt,
      @HiveField(14) DateTime? updatedAt,
      @HiveField(15) ProductType? productType});

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
    Object? dbId = freezed,
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
      dbId: freezed == dbId
          ? _value.dbId
          : dbId // ignore: cast_nullable_to_non_nullable
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
class _$LocalModelImpl extends _LocalModel {
  _$LocalModelImpl(
      {@HiveField(0) @JsonKey(name: 'id') this.dbId,
      @HiveField(1) this.userId,
      @HiveField(2) this.name,
      @HiveField(3) this.imageUrl,
      @HiveField(4) this.isStore,
      @HiveField(5) this.isVerified,
      @HiveField(6) this.description,
      @HiveField(7) this.telephoneNumber,
      @HiveField(8) this.email,
      @HiveField(9) this.website,
      @HiveField(10) this.countryCode,
      @HiveField(11) this.city,
      @HiveField(12) this.street,
      @HiveField(13) this.createdAt,
      @HiveField(14) this.updatedAt,
      @HiveField(15) this.productType})
      : super._();

  factory _$LocalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalModelImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  final int? dbId;
  @override
  @HiveField(1)
  final String? userId;
  @override
  @HiveField(2)
  final String? name;
  @override
  @HiveField(3)
  final String? imageUrl;
  @override
  @HiveField(4)
  final bool? isStore;
  @override
  @HiveField(5)
  final bool? isVerified;
  @override
  @HiveField(6)
  final String? description;
  @override
  @HiveField(7)
  final String? telephoneNumber;
  @override
  @HiveField(8)
  final String? email;
  @override
  @HiveField(9)
  final String? website;
  @override
  @HiveField(10)
  final String? countryCode;
  @override
  @HiveField(11)
  final String? city;
  @override
  @HiveField(12)
  final String? street;
  @override
  @HiveField(13)
  final DateTime? createdAt;
  @override
  @HiveField(14)
  final DateTime? updatedAt;
  @override
  @HiveField(15)
  final ProductType? productType;

  @override
  String toString() {
    return 'LocalModel(dbId: $dbId, userId: $userId, name: $name, imageUrl: $imageUrl, isStore: $isStore, isVerified: $isVerified, description: $description, telephoneNumber: $telephoneNumber, email: $email, website: $website, countryCode: $countryCode, city: $city, street: $street, createdAt: $createdAt, updatedAt: $updatedAt, productType: $productType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalModelImpl &&
            (identical(other.dbId, dbId) || other.dbId == dbId) &&
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
      dbId,
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

abstract class _LocalModel extends LocalModel {
  factory _LocalModel(
      {@HiveField(0) @JsonKey(name: 'id') final int? dbId,
      @HiveField(1) final String? userId,
      @HiveField(2) final String? name,
      @HiveField(3) final String? imageUrl,
      @HiveField(4) final bool? isStore,
      @HiveField(5) final bool? isVerified,
      @HiveField(6) final String? description,
      @HiveField(7) final String? telephoneNumber,
      @HiveField(8) final String? email,
      @HiveField(9) final String? website,
      @HiveField(10) final String? countryCode,
      @HiveField(11) final String? city,
      @HiveField(12) final String? street,
      @HiveField(13) final DateTime? createdAt,
      @HiveField(14) final DateTime? updatedAt,
      @HiveField(15) final ProductType? productType}) = _$LocalModelImpl;
  _LocalModel._() : super._();

  factory _LocalModel.fromJson(Map<String, dynamic> json) =
      _$LocalModelImpl.fromJson;

// ignore: invalid_annotation_target
  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  int? get dbId;
  @override
  @HiveField(1)
  String? get userId;
  @override
  @HiveField(2)
  String? get name;
  @override
  @HiveField(3)
  String? get imageUrl;
  @override
  @HiveField(4)
  bool? get isStore;
  @override
  @HiveField(5)
  bool? get isVerified;
  @override
  @HiveField(6)
  String? get description;
  @override
  @HiveField(7)
  String? get telephoneNumber;
  @override
  @HiveField(8)
  String? get email;
  @override
  @HiveField(9)
  String? get website;
  @override
  @HiveField(10)
  String? get countryCode;
  @override
  @HiveField(11)
  String? get city;
  @override
  @HiveField(12)
  String? get street;
  @override
  @HiveField(13)
  DateTime? get createdAt;
  @override
  @HiveField(14)
  DateTime? get updatedAt;
  @override
  @HiveField(15)
  ProductType? get productType;

  /// Create a copy of LocalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalModelImplCopyWith<_$LocalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
