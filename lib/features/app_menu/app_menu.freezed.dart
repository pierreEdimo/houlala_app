// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppMenu _$AppMenuFromJson(Map<String, dynamic> json) {
  return _AppMenu.fromJson(json);
}

/// @nodoc
mixin _$AppMenu {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get route => throw _privateConstructorUsedError;

  /// Serializes this AppMenu to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppMenuCopyWith<AppMenu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppMenuCopyWith<$Res> {
  factory $AppMenuCopyWith(AppMenu value, $Res Function(AppMenu) then) =
      _$AppMenuCopyWithImpl<$Res, AppMenu>;
  @useResult
  $Res call({int? id, String? title, String? thumbnail, String? route});
}

/// @nodoc
class _$AppMenuCopyWithImpl<$Res, $Val extends AppMenu>
    implements $AppMenuCopyWith<$Res> {
  _$AppMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppMenu
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
abstract class _$$AppMenuImplCopyWith<$Res> implements $AppMenuCopyWith<$Res> {
  factory _$$AppMenuImplCopyWith(
          _$AppMenuImpl value, $Res Function(_$AppMenuImpl) then) =
      __$$AppMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? thumbnail, String? route});
}

/// @nodoc
class __$$AppMenuImplCopyWithImpl<$Res>
    extends _$AppMenuCopyWithImpl<$Res, _$AppMenuImpl>
    implements _$$AppMenuImplCopyWith<$Res> {
  __$$AppMenuImplCopyWithImpl(
      _$AppMenuImpl _value, $Res Function(_$AppMenuImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppMenu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? thumbnail = freezed,
    Object? route = freezed,
  }) {
    return _then(_$AppMenuImpl(
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
class _$AppMenuImpl implements _AppMenu {
  _$AppMenuImpl({this.id, this.title, this.thumbnail, this.route});

  factory _$AppMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppMenuImplFromJson(json);

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
    return 'AppMenu(id: $id, title: $title, thumbnail: $thumbnail, route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppMenuImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.route, route) || other.route == route));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, thumbnail, route);

  /// Create a copy of AppMenu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppMenuImplCopyWith<_$AppMenuImpl> get copyWith =>
      __$$AppMenuImplCopyWithImpl<_$AppMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppMenuImplToJson(
      this,
    );
  }
}

abstract class _AppMenu implements AppMenu {
  factory _AppMenu(
      {final int? id,
      final String? title,
      final String? thumbnail,
      final String? route}) = _$AppMenuImpl;

  factory _AppMenu.fromJson(Map<String, dynamic> json) = _$AppMenuImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get thumbnail;
  @override
  String? get route;

  /// Create a copy of AppMenu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppMenuImplCopyWith<_$AppMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
