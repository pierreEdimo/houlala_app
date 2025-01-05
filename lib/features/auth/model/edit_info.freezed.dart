// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditInfo _$EditInfoFromJson(Map<String, dynamic> json) {
  return _EditInfo.fromJson(json);
}

/// @nodoc
mixin _$EditInfo {
  String? get userName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this EditInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditInfoCopyWith<EditInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditInfoCopyWith<$Res> {
  factory $EditInfoCopyWith(EditInfo value, $Res Function(EditInfo) then) =
      _$EditInfoCopyWithImpl<$Res, EditInfo>;
  @useResult
  $Res call(
      {String? userName,
      String? email,
      String? lastName,
      String? firstName,
      String? phoneNumber});
}

/// @nodoc
class _$EditInfoCopyWithImpl<$Res, $Val extends EditInfo>
    implements $EditInfoCopyWith<$Res> {
  _$EditInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? email = freezed,
    Object? lastName = freezed,
    Object? firstName = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditInfoImplCopyWith<$Res>
    implements $EditInfoCopyWith<$Res> {
  factory _$$EditInfoImplCopyWith(
          _$EditInfoImpl value, $Res Function(_$EditInfoImpl) then) =
      __$$EditInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userName,
      String? email,
      String? lastName,
      String? firstName,
      String? phoneNumber});
}

/// @nodoc
class __$$EditInfoImplCopyWithImpl<$Res>
    extends _$EditInfoCopyWithImpl<$Res, _$EditInfoImpl>
    implements _$$EditInfoImplCopyWith<$Res> {
  __$$EditInfoImplCopyWithImpl(
      _$EditInfoImpl _value, $Res Function(_$EditInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? email = freezed,
    Object? lastName = freezed,
    Object? firstName = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$EditInfoImpl(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditInfoImpl implements _EditInfo {
  _$EditInfoImpl(
      {this.userName,
      this.email,
      this.lastName,
      this.firstName,
      this.phoneNumber});

  factory _$EditInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditInfoImplFromJson(json);

  @override
  final String? userName;
  @override
  final String? email;
  @override
  final String? lastName;
  @override
  final String? firstName;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'EditInfo(userName: $userName, email: $email, lastName: $lastName, firstName: $firstName, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditInfoImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, userName, email, lastName, firstName, phoneNumber);

  /// Create a copy of EditInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditInfoImplCopyWith<_$EditInfoImpl> get copyWith =>
      __$$EditInfoImplCopyWithImpl<_$EditInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditInfoImplToJson(
      this,
    );
  }
}

abstract class _EditInfo implements EditInfo {
  factory _EditInfo(
      {final String? userName,
      final String? email,
      final String? lastName,
      final String? firstName,
      final String? phoneNumber}) = _$EditInfoImpl;

  factory _EditInfo.fromJson(Map<String, dynamic> json) =
      _$EditInfoImpl.fromJson;

  @override
  String? get userName;
  @override
  String? get email;
  @override
  String? get lastName;
  @override
  String? get firstName;
  @override
  String? get phoneNumber;

  /// Create a copy of EditInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditInfoImplCopyWith<_$EditInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
