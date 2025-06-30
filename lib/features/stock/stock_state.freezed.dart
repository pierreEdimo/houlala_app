// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StockState {
  Stock? get stock => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StockStateCopyWith<StockState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockStateCopyWith<$Res> {
  factory $StockStateCopyWith(
          StockState value, $Res Function(StockState) then) =
      _$StockStateCopyWithImpl<$Res, StockState>;
  @useResult
  $Res call({Stock? stock, bool loading, String errorMessage});

  $StockCopyWith<$Res>? get stock;
}

/// @nodoc
class _$StockStateCopyWithImpl<$Res, $Val extends StockState>
    implements $StockStateCopyWith<$Res> {
  _$StockStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = freezed,
    Object? loading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StockCopyWith<$Res>? get stock {
    if (_value.stock == null) {
      return null;
    }

    return $StockCopyWith<$Res>(_value.stock!, (value) {
      return _then(_value.copyWith(stock: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockStateImplCopyWith<$Res>
    implements $StockStateCopyWith<$Res> {
  factory _$$StockStateImplCopyWith(
          _$StockStateImpl value, $Res Function(_$StockStateImpl) then) =
      __$$StockStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Stock? stock, bool loading, String errorMessage});

  @override
  $StockCopyWith<$Res>? get stock;
}

/// @nodoc
class __$$StockStateImplCopyWithImpl<$Res>
    extends _$StockStateCopyWithImpl<$Res, _$StockStateImpl>
    implements _$$StockStateImplCopyWith<$Res> {
  __$$StockStateImplCopyWithImpl(
      _$StockStateImpl _value, $Res Function(_$StockStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stock = freezed,
    Object? loading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$StockStateImpl(
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as Stock?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StockStateImpl implements _StockState {
  _$StockStateImpl(
      {this.stock = null, this.loading = true, this.errorMessage = ''});

  @override
  @JsonKey()
  final Stock? stock;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'StockState(stock: $stock, loading: $loading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockStateImpl &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stock, loading, errorMessage);

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StockStateImplCopyWith<_$StockStateImpl> get copyWith =>
      __$$StockStateImplCopyWithImpl<_$StockStateImpl>(this, _$identity);
}

abstract class _StockState implements StockState {
  factory _StockState(
      {final Stock? stock,
      final bool loading,
      final String errorMessage}) = _$StockStateImpl;

  @override
  Stock? get stock;
  @override
  bool get loading;
  @override
  String get errorMessage;

  /// Create a copy of StockState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StockStateImplCopyWith<_$StockStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
