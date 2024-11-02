// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserMenu _$UserMenuFromJson(Map<String, dynamic> json) {
  return _UserMenu.fromJson(json);
}

/// @nodoc
mixin _$UserMenu {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get route => throw _privateConstructorUsedError;

  /// Serializes this UserMenu to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserMenuCopyWith<UserMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMenuCopyWith<$Res> {
  factory $UserMenuCopyWith(UserMenu value, $Res Function(UserMenu) then) =
      _$UserMenuCopyWithImpl<$Res, UserMenu>;
  @useResult
  $Res call({int? id, String? title, String? thumbnail, String? route});
}

/// @nodoc
class _$UserMenuCopyWithImpl<$Res, $Val extends UserMenu>
    implements $UserMenuCopyWith<$Res> {
  _$UserMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserMenu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? route = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserMenuImplCopyWith<$Res>
    implements $UserMenuCopyWith<$Res> {
  factory _$$UserMenuImplCopyWith(
          _$UserMenuImpl value, $Res Function(_$UserMenuImpl) then) =
      __$$UserMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? thumbnail, String? route});
}

/// @nodoc
class __$$UserMenuImplCopyWithImpl<$Res>
    extends _$UserMenuCopyWithImpl<$Res, _$UserMenuImpl>
    implements _$$UserMenuImplCopyWith<$Res> {
  __$$UserMenuImplCopyWithImpl(
      _$UserMenuImpl _value, $Res Function(_$UserMenuImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserMenu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? route = freezed,
  }) {
    return _then(_$UserMenuImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      route: freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserMenuImpl implements _UserMenu {
  _$UserMenuImpl({this.id, this.title, this.thumbnail, this.route});

  factory _$UserMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserMenuImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? thumbnail;
  @override
  final String? route;

  @override
  String toString() {
    return 'UserMenu(id: $id, title: $title, thumbnail: $thumbnail, route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMenuImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.route, route) || other.route == route));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, thumbnail, route);

  /// Create a copy of UserMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMenuImplCopyWith<_$UserMenuImpl> get copyWith =>
      __$$UserMenuImplCopyWithImpl<_$UserMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMenuImplToJson(
      this,
    );
  }
}

abstract class _UserMenu implements UserMenu {
  factory _UserMenu(
      {final int? id,
      final String? title,
      final String? thumbnail,
      final String? route}) = _$UserMenuImpl;

  factory _UserMenu.fromJson(Map<String, dynamic> json) =
      _$UserMenuImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get thumbnail;
  @override
  String? get route;

  /// Create a copy of UserMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserMenuImplCopyWith<_$UserMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
