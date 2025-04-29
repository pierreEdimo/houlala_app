// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_menu_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppMenuState {
  List<AppMenu> get menuItems => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AppMenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppMenuStateCopyWith<AppMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppMenuStateCopyWith<$Res> {
  factory $AppMenuStateCopyWith(
          AppMenuState value, $Res Function(AppMenuState) then) =
      _$AppMenuStateCopyWithImpl<$Res, AppMenuState>;
  @useResult
  $Res call({List<AppMenu> menuItems, String errorMessage});
}

/// @nodoc
class _$AppMenuStateCopyWithImpl<$Res, $Val extends AppMenuState>
    implements $AppMenuStateCopyWith<$Res> {
  _$AppMenuStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppMenuState
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
              as List<AppMenu>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppMenuStateImplCopyWith<$Res>
    implements $AppMenuStateCopyWith<$Res> {
  factory _$$AppMenuStateImplCopyWith(
          _$AppMenuStateImpl value, $Res Function(_$AppMenuStateImpl) then) =
      __$$AppMenuStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AppMenu> menuItems, String errorMessage});
}

/// @nodoc
class __$$AppMenuStateImplCopyWithImpl<$Res>
    extends _$AppMenuStateCopyWithImpl<$Res, _$AppMenuStateImpl>
    implements _$$AppMenuStateImplCopyWith<$Res> {
  __$$AppMenuStateImplCopyWithImpl(
      _$AppMenuStateImpl _value, $Res Function(_$AppMenuStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppMenuState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menuItems = null,
    Object? errorMessage = null,
  }) {
    return _then(_$AppMenuStateImpl(
      menuItems: null == menuItems
          ? _value._menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<AppMenu>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppMenuStateImpl implements _AppMenuState {
  _$AppMenuStateImpl(
      {final List<AppMenu> menuItems = const [], this.errorMessage = ''})
      : _menuItems = menuItems;

  final List<AppMenu> _menuItems;
  @override
  @JsonKey()
  List<AppMenu> get menuItems {
    if (_menuItems is EqualUnmodifiableListView) return _menuItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuItems);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'AppMenuState(menuItems: $menuItems, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppMenuStateImpl &&
            const DeepCollectionEquality()
                .equals(other._menuItems, _menuItems) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_menuItems), errorMessage);

  /// Create a copy of AppMenuState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppMenuStateImplCopyWith<_$AppMenuStateImpl> get copyWith =>
      __$$AppMenuStateImplCopyWithImpl<_$AppMenuStateImpl>(this, _$identity);
}

abstract class _AppMenuState implements AppMenuState {
  factory _AppMenuState(
      {final List<AppMenu> menuItems,
      final String errorMessage}) = _$AppMenuStateImpl;

  @override
  List<AppMenu> get menuItems;
  @override
  String get errorMessage;

  /// Create a copy of AppMenuState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppMenuStateImplCopyWith<_$AppMenuStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
