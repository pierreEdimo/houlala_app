// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'term_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TermState {
  bool get loading => throw _privateConstructorUsedError;
  String get htmlContent => throw _privateConstructorUsedError;

  /// Create a copy of TermState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TermStateCopyWith<TermState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermStateCopyWith<$Res> {
  factory $TermStateCopyWith(TermState value, $Res Function(TermState) then) =
      _$TermStateCopyWithImpl<$Res, TermState>;
  @useResult
  $Res call({bool loading, String htmlContent});
}

/// @nodoc
class _$TermStateCopyWithImpl<$Res, $Val extends TermState>
    implements $TermStateCopyWith<$Res> {
  _$TermStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TermState
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
abstract class _$$TermStateImplCopyWith<$Res>
    implements $TermStateCopyWith<$Res> {
  factory _$$TermStateImplCopyWith(
          _$TermStateImpl value, $Res Function(_$TermStateImpl) then) =
      __$$TermStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, String htmlContent});
}

/// @nodoc
class __$$TermStateImplCopyWithImpl<$Res>
    extends _$TermStateCopyWithImpl<$Res, _$TermStateImpl>
    implements _$$TermStateImplCopyWith<$Res> {
  __$$TermStateImplCopyWithImpl(
      _$TermStateImpl _value, $Res Function(_$TermStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TermState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? htmlContent = null,
  }) {
    return _then(_$TermStateImpl(
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

class _$TermStateImpl implements _TermState {
  _$TermStateImpl({this.loading = true, this.htmlContent = ''});

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String htmlContent;

  @override
  String toString() {
    return 'TermState(loading: $loading, htmlContent: $htmlContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TermStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.htmlContent, htmlContent) ||
                other.htmlContent == htmlContent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, htmlContent);

  /// Create a copy of TermState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TermStateImplCopyWith<_$TermStateImpl> get copyWith =>
      __$$TermStateImplCopyWithImpl<_$TermStateImpl>(this, _$identity);
}

abstract class _TermState implements TermState {
  factory _TermState({final bool loading, final String htmlContent}) =
      _$TermStateImpl;

  @override
  bool get loading;
  @override
  String get htmlContent;

  /// Create a copy of TermState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TermStateImplCopyWith<_$TermStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
