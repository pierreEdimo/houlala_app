// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  bool get loading => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  bool get loggedIn => throw _privateConstructorUsedError;
  UserModel? get connectedUser => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  UserModel? get gastUser => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool loading,
      String token,
      bool loggedIn,
      UserModel? connectedUser,
      String errorMessage,
      UserModel? gastUser});

  $UserModelCopyWith<$Res>? get connectedUser;
  $UserModelCopyWith<$Res>? get gastUser;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? token = null,
    Object? loggedIn = null,
    Object? connectedUser = freezed,
    Object? errorMessage = null,
    Object? gastUser = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      connectedUser: freezed == connectedUser
          ? _value.connectedUser
          : connectedUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      gastUser: freezed == gastUser
          ? _value.gastUser
          : gastUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get connectedUser {
    if (_value.connectedUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.connectedUser!, (value) {
      return _then(_value.copyWith(connectedUser: value) as $Val);
    });
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get gastUser {
    if (_value.gastUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.gastUser!, (value) {
      return _then(_value.copyWith(gastUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      String token,
      bool loggedIn,
      UserModel? connectedUser,
      String errorMessage,
      UserModel? gastUser});

  @override
  $UserModelCopyWith<$Res>? get connectedUser;
  @override
  $UserModelCopyWith<$Res>? get gastUser;
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? token = null,
    Object? loggedIn = null,
    Object? connectedUser = freezed,
    Object? errorMessage = null,
    Object? gastUser = freezed,
  }) {
    return _then(_$AuthStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      loggedIn: null == loggedIn
          ? _value.loggedIn
          : loggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      connectedUser: freezed == connectedUser
          ? _value.connectedUser
          : connectedUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      gastUser: freezed == gastUser
          ? _value.gastUser
          : gastUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  _$AuthStateImpl(
      {this.loading = false,
      this.token = '',
      this.loggedIn = false,
      this.connectedUser = null,
      this.errorMessage = '',
      this.gastUser = null});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final bool loggedIn;
  @override
  @JsonKey()
  final UserModel? connectedUser;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final UserModel? gastUser;

  @override
  String toString() {
    return 'AuthState(loading: $loading, token: $token, loggedIn: $loggedIn, connectedUser: $connectedUser, errorMessage: $errorMessage, gastUser: $gastUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.loggedIn, loggedIn) ||
                other.loggedIn == loggedIn) &&
            (identical(other.connectedUser, connectedUser) ||
                other.connectedUser == connectedUser) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.gastUser, gastUser) ||
                other.gastUser == gastUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, token, loggedIn,
      connectedUser, errorMessage, gastUser);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  factory _AuthState(
      {final bool loading,
      final String token,
      final bool loggedIn,
      final UserModel? connectedUser,
      final String errorMessage,
      final UserModel? gastUser}) = _$AuthStateImpl;

  @override
  bool get loading;
  @override
  String get token;
  @override
  bool get loggedIn;
  @override
  UserModel? get connectedUser;
  @override
  String get errorMessage;
  @override
  UserModel? get gastUser;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
