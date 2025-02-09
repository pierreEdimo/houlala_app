// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'policy_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PolicyState {
  bool get loading => throw _privateConstructorUsedError;
  String get htmlContent => throw _privateConstructorUsedError;

  /// Create a copy of PolicyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PolicyStateCopyWith<PolicyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyStateCopyWith<$Res> {
  factory $PolicyStateCopyWith(
          PolicyState value, $Res Function(PolicyState) then) =
      _$PolicyStateCopyWithImpl<$Res, PolicyState>;
  @useResult
  $Res call({bool loading, String htmlContent});
}

/// @nodoc
class _$PolicyStateCopyWithImpl<$Res, $Val extends PolicyState>
    implements $PolicyStateCopyWith<$Res> {
  _$PolicyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PolicyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? htmlContent = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      htmlContent: null == htmlContent
          ? _value.htmlContent
          : htmlContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolicyStateImplCopyWith<$Res>
    implements $PolicyStateCopyWith<$Res> {
  factory _$$PolicyStateImplCopyWith(
          _$PolicyStateImpl value, $Res Function(_$PolicyStateImpl) then) =
      __$$PolicyStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String htmlContent});
}

/// @nodoc
class __$$PolicyStateImplCopyWithImpl<$Res>
    extends _$PolicyStateCopyWithImpl<$Res, _$PolicyStateImpl>
    implements _$$PolicyStateImplCopyWith<$Res> {
  __$$PolicyStateImplCopyWithImpl(
      _$PolicyStateImpl _value, $Res Function(_$PolicyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PolicyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? htmlContent = null,
  }) {
    return _then(_$PolicyStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      htmlContent: null == htmlContent
          ? _value.htmlContent
          : htmlContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PolicyStateImpl implements _PolicyState {
  _$PolicyStateImpl({this.loading = true, this.htmlContent = ''});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String htmlContent;

  @override
  String toString() {
    return 'PolicyState(loading: $loading, htmlContent: $htmlContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.htmlContent, htmlContent) ||
                other.htmlContent == htmlContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, htmlContent);

  /// Create a copy of PolicyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicyStateImplCopyWith<_$PolicyStateImpl> get copyWith =>
      __$$PolicyStateImplCopyWithImpl<_$PolicyStateImpl>(this, _$identity);
}

abstract class _PolicyState implements PolicyState {
  factory _PolicyState({final bool loading, final String htmlContent}) =
      _$PolicyStateImpl;

  @override
  bool get loading;
  @override
  String get htmlContent;

  /// Create a copy of PolicyState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PolicyStateImplCopyWith<_$PolicyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
