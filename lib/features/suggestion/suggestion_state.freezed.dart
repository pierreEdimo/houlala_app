// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SuggestionState {
  SuggestionResult? get usersResult => throw _privateConstructorUsedError;
  SuggestionResult? get localsResult => throw _privateConstructorUsedError;
  SuggestionResult? get searchResult => throw _privateConstructorUsedError;

  /// Create a copy of SuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SuggestionStateCopyWith<SuggestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionStateCopyWith<$Res> {
  factory $SuggestionStateCopyWith(
          SuggestionState value, $Res Function(SuggestionState) then) =
      _$SuggestionStateCopyWithImpl<$Res, SuggestionState>;
  @useResult
  $Res call(
      {SuggestionResult? usersResult,
      SuggestionResult? localsResult,
      SuggestionResult? searchResult});

  $SuggestionResultCopyWith<$Res>? get usersResult;
  $SuggestionResultCopyWith<$Res>? get localsResult;
  $SuggestionResultCopyWith<$Res>? get searchResult;
}

/// @nodoc
class _$SuggestionStateCopyWithImpl<$Res, $Val extends SuggestionState>
    implements $SuggestionStateCopyWith<$Res> {
  _$SuggestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersResult = freezed,
    Object? localsResult = freezed,
    Object? searchResult = freezed,
  }) {
    return _then(_value.copyWith(
      usersResult: freezed == usersResult
          ? _value.usersResult
          : usersResult // ignore: cast_nullable_to_non_nullable
              as SuggestionResult?,
      localsResult: freezed == localsResult
          ? _value.localsResult
          : localsResult // ignore: cast_nullable_to_non_nullable
              as SuggestionResult?,
      searchResult: freezed == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SuggestionResult?,
    ) as $Val);
  }

  /// Create a copy of SuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuggestionResultCopyWith<$Res>? get usersResult {
    if (_value.usersResult == null) {
      return null;
    }

    return $SuggestionResultCopyWith<$Res>(_value.usersResult!, (value) {
      return _then(_value.copyWith(usersResult: value) as $Val);
    });
  }

  /// Create a copy of SuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuggestionResultCopyWith<$Res>? get localsResult {
    if (_value.localsResult == null) {
      return null;
    }

    return $SuggestionResultCopyWith<$Res>(_value.localsResult!, (value) {
      return _then(_value.copyWith(localsResult: value) as $Val);
    });
  }

  /// Create a copy of SuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SuggestionResultCopyWith<$Res>? get searchResult {
    if (_value.searchResult == null) {
      return null;
    }

    return $SuggestionResultCopyWith<$Res>(_value.searchResult!, (value) {
      return _then(_value.copyWith(searchResult: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SuggestionStateImplCopyWith<$Res>
    implements $SuggestionStateCopyWith<$Res> {
  factory _$$SuggestionStateImplCopyWith(_$SuggestionStateImpl value,
          $Res Function(_$SuggestionStateImpl) then) =
      __$$SuggestionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SuggestionResult? usersResult,
      SuggestionResult? localsResult,
      SuggestionResult? searchResult});

  @override
  $SuggestionResultCopyWith<$Res>? get usersResult;
  @override
  $SuggestionResultCopyWith<$Res>? get localsResult;
  @override
  $SuggestionResultCopyWith<$Res>? get searchResult;
}

/// @nodoc
class __$$SuggestionStateImplCopyWithImpl<$Res>
    extends _$SuggestionStateCopyWithImpl<$Res, _$SuggestionStateImpl>
    implements _$$SuggestionStateImplCopyWith<$Res> {
  __$$SuggestionStateImplCopyWithImpl(
      _$SuggestionStateImpl _value, $Res Function(_$SuggestionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersResult = freezed,
    Object? localsResult = freezed,
    Object? searchResult = freezed,
  }) {
    return _then(_$SuggestionStateImpl(
      usersResult: freezed == usersResult
          ? _value.usersResult
          : usersResult // ignore: cast_nullable_to_non_nullable
              as SuggestionResult?,
      localsResult: freezed == localsResult
          ? _value.localsResult
          : localsResult // ignore: cast_nullable_to_non_nullable
              as SuggestionResult?,
      searchResult: freezed == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as SuggestionResult?,
    ));
  }
}

/// @nodoc

class _$SuggestionStateImpl implements _SuggestionState {
  _$SuggestionStateImpl(
      {this.usersResult = null,
      this.localsResult = null,
      this.searchResult = null});

  @override
  @JsonKey()
  final SuggestionResult? usersResult;
  @override
  @JsonKey()
  final SuggestionResult? localsResult;
  @override
  @JsonKey()
  final SuggestionResult? searchResult;

  @override
  String toString() {
    return 'SuggestionState(usersResult: $usersResult, localsResult: $localsResult, searchResult: $searchResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestionStateImpl &&
            (identical(other.usersResult, usersResult) ||
                other.usersResult == usersResult) &&
            (identical(other.localsResult, localsResult) ||
                other.localsResult == localsResult) &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, usersResult, localsResult, searchResult);

  /// Create a copy of SuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestionStateImplCopyWith<_$SuggestionStateImpl> get copyWith =>
      __$$SuggestionStateImplCopyWithImpl<_$SuggestionStateImpl>(
          this, _$identity);
}

abstract class _SuggestionState implements SuggestionState {
  factory _SuggestionState(
      {final SuggestionResult? usersResult,
      final SuggestionResult? localsResult,
      final SuggestionResult? searchResult}) = _$SuggestionStateImpl;

  @override
  SuggestionResult? get usersResult;
  @override
  SuggestionResult? get localsResult;
  @override
  SuggestionResult? get searchResult;

  /// Create a copy of SuggestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuggestionStateImplCopyWith<_$SuggestionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
