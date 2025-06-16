// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestion_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuggestionResult _$SuggestionResultFromJson(Map<String, dynamic> json) {
  return _SuggestionResult.fromJson(json);
}

/// @nodoc
mixin _$SuggestionResult {
  String? get query => throw _privateConstructorUsedError;
  List<String>? get suggestions => throw _privateConstructorUsedError;

  /// Serializes this SuggestionResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SuggestionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuggestionResultCopyWith<SuggestionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionResultCopyWith<$Res> {
  factory $SuggestionResultCopyWith(
          SuggestionResult value, $Res Function(SuggestionResult) then) =
      _$SuggestionResultCopyWithImpl<$Res, SuggestionResult>;
  @useResult
  $Res call({String? query, List<String>? suggestions});
}

/// @nodoc
class _$SuggestionResultCopyWithImpl<$Res, $Val extends SuggestionResult>
    implements $SuggestionResultCopyWith<$Res> {
  _$SuggestionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuggestionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? suggestions = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestions: freezed == suggestions
          ? _value.suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuggestionResultImplCopyWith<$Res>
    implements $SuggestionResultCopyWith<$Res> {
  factory _$$SuggestionResultImplCopyWith(_$SuggestionResultImpl value,
          $Res Function(_$SuggestionResultImpl) then) =
      __$$SuggestionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query, List<String>? suggestions});
}

/// @nodoc
class __$$SuggestionResultImplCopyWithImpl<$Res>
    extends _$SuggestionResultCopyWithImpl<$Res, _$SuggestionResultImpl>
    implements _$$SuggestionResultImplCopyWith<$Res> {
  __$$SuggestionResultImplCopyWithImpl(_$SuggestionResultImpl _value,
      $Res Function(_$SuggestionResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuggestionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? suggestions = freezed,
  }) {
    return _then(_$SuggestionResultImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      suggestions: freezed == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuggestionResultImpl extends _SuggestionResult {
  _$SuggestionResultImpl({this.query, final List<String>? suggestions})
      : _suggestions = suggestions,
        super._();

  factory _$SuggestionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuggestionResultImplFromJson(json);

  @override
  final String? query;
  final List<String>? _suggestions;
  @override
  List<String>? get suggestions {
    final value = _suggestions;
    if (value == null) return null;
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SuggestionResult(query: $query, suggestions: $suggestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestionResultImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_suggestions));

  /// Create a copy of SuggestionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestionResultImplCopyWith<_$SuggestionResultImpl> get copyWith =>
      __$$SuggestionResultImplCopyWithImpl<_$SuggestionResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuggestionResultImplToJson(
      this,
    );
  }
}

abstract class _SuggestionResult extends SuggestionResult {
  factory _SuggestionResult(
      {final String? query,
      final List<String>? suggestions}) = _$SuggestionResultImpl;
  _SuggestionResult._() : super._();

  factory _SuggestionResult.fromJson(Map<String, dynamic> json) =
      _$SuggestionResultImpl.fromJson;

  @override
  String? get query;
  @override
  List<String>? get suggestions;

  /// Create a copy of SuggestionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuggestionResultImplCopyWith<_$SuggestionResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
