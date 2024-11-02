// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_menu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserMenuState {
  List<UserMenu> get menuItems => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of UserMenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserMenuStateCopyWith<UserMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMenuStateCopyWith<$Res> {
  factory $UserMenuStateCopyWith(
          UserMenuState value, $Res Function(UserMenuState) then) =
      _$UserMenuStateCopyWithImpl<$Res, UserMenuState>;
  @useResult
  $Res call({List<UserMenu> menuItems, String errorMessage});
}

/// @nodoc
class _$UserMenuStateCopyWithImpl<$Res, $Val extends UserMenuState>
    implements $UserMenuStateCopyWith<$Res> {
  _$UserMenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserMenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuItems = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      menuItems: null == menuItems
          ? _value.menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<UserMenu>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserMenuStateImplCopyWith<$Res>
    implements $UserMenuStateCopyWith<$Res> {
  factory _$$UserMenuStateImplCopyWith(
          _$UserMenuStateImpl value, $Res Function(_$UserMenuStateImpl) then) =
      __$$UserMenuStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserMenu> menuItems, String errorMessage});
}

/// @nodoc
class __$$UserMenuStateImplCopyWithImpl<$Res>
    extends _$UserMenuStateCopyWithImpl<$Res, _$UserMenuStateImpl>
    implements _$$UserMenuStateImplCopyWith<$Res> {
  __$$UserMenuStateImplCopyWithImpl(
      _$UserMenuStateImpl _value, $Res Function(_$UserMenuStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuItems = null,
    Object? errorMessage = null,
  }) {
    return _then(_$UserMenuStateImpl(
      menuItems: null == menuItems
          ? _value._menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<UserMenu>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserMenuStateImpl implements _UserMenuState {
  _$UserMenuStateImpl(
      {final List<UserMenu> menuItems = const [], this.errorMessage = ''})
      : _menuItems = menuItems;

  final List<UserMenu> _menuItems;
  @override
  @JsonKey()
  List<UserMenu> get menuItems {
    if (_menuItems is EqualUnmodifiableListView) return _menuItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuItems);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'UserMenuState(menuItems: $menuItems, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMenuStateImpl &&
            const DeepCollectionEquality()
                .equals(other._menuItems, _menuItems) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_menuItems), errorMessage);

  /// Create a copy of UserMenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMenuStateImplCopyWith<_$UserMenuStateImpl> get copyWith =>
      __$$UserMenuStateImplCopyWithImpl<_$UserMenuStateImpl>(this, _$identity);
}

abstract class _UserMenuState implements UserMenuState {
  factory _UserMenuState(
      {final List<UserMenu> menuItems,
      final String errorMessage}) = _$UserMenuStateImpl;

  @override
  List<UserMenu> get menuItems;
  @override
  String get errorMessage;

  /// Create a copy of UserMenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserMenuStateImplCopyWith<_$UserMenuStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
