// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_type_map.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductTypeMapState {
  bool get loading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Map<int, List<ProductType>>? get productTypeMap =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductTypeMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductTypeMapStateCopyWith<ProductTypeMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductTypeMapStateCopyWith<$Res> {
  factory $ProductTypeMapStateCopyWith(
          ProductTypeMapState value, $Res Function(ProductTypeMapState) then) =
      _$ProductTypeMapStateCopyWithImpl<$Res, ProductTypeMapState>;
  @useResult
  $Res call(
      {bool loading,
      String errorMessage,
      Map<int, List<ProductType>>? productTypeMap});
}

/// @nodoc
class _$ProductTypeMapStateCopyWithImpl<$Res, $Val extends ProductTypeMapState>
    implements $ProductTypeMapStateCopyWith<$Res> {
  _$ProductTypeMapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductTypeMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? errorMessage = null,
    Object? productTypeMap = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      productTypeMap: freezed == productTypeMap
          ? _value.productTypeMap
          : productTypeMap // ignore: cast_nullable_to_non_nullable
              as Map<int, List<ProductType>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductTypeMapStateImplCopyWith<$Res>
    implements $ProductTypeMapStateCopyWith<$Res> {
  factory _$$ProductTypeMapStateImplCopyWith(_$ProductTypeMapStateImpl value,
          $Res Function(_$ProductTypeMapStateImpl) then) =
      __$$ProductTypeMapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      String errorMessage,
      Map<int, List<ProductType>>? productTypeMap});
}

/// @nodoc
class __$$ProductTypeMapStateImplCopyWithImpl<$Res>
    extends _$ProductTypeMapStateCopyWithImpl<$Res, _$ProductTypeMapStateImpl>
    implements _$$ProductTypeMapStateImplCopyWith<$Res> {
  __$$ProductTypeMapStateImplCopyWithImpl(_$ProductTypeMapStateImpl _value,
      $Res Function(_$ProductTypeMapStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductTypeMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? errorMessage = null,
    Object? productTypeMap = freezed,
  }) {
    return _then(_$ProductTypeMapStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      productTypeMap: freezed == productTypeMap
          ? _value._productTypeMap
          : productTypeMap // ignore: cast_nullable_to_non_nullable
              as Map<int, List<ProductType>>?,
    ));
  }
}

/// @nodoc

class _$ProductTypeMapStateImpl implements _ProductTypeMapState {
  _$ProductTypeMapStateImpl(
      {this.loading = true,
      this.errorMessage = '',
      final Map<int, List<ProductType>>? productTypeMap = const {}})
      : _productTypeMap = productTypeMap;

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final String errorMessage;
  final Map<int, List<ProductType>>? _productTypeMap;
  @override
  @JsonKey()
  Map<int, List<ProductType>>? get productTypeMap {
    final value = _productTypeMap;
    if (value == null) return null;
    if (_productTypeMap is EqualUnmodifiableMapView) return _productTypeMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ProductTypeMapState(loading: $loading, errorMessage: $errorMessage, productTypeMap: $productTypeMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTypeMapStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._productTypeMap, _productTypeMap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, errorMessage,
      const DeepCollectionEquality().hash(_productTypeMap));

  /// Create a copy of ProductTypeMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTypeMapStateImplCopyWith<_$ProductTypeMapStateImpl> get copyWith =>
      __$$ProductTypeMapStateImplCopyWithImpl<_$ProductTypeMapStateImpl>(
          this, _$identity);
}

abstract class _ProductTypeMapState implements ProductTypeMapState {
  factory _ProductTypeMapState(
          {final bool loading,
          final String errorMessage,
          final Map<int, List<ProductType>>? productTypeMap}) =
      _$ProductTypeMapStateImpl;

  @override
  bool get loading;
  @override
  String get errorMessage;
  @override
  Map<int, List<ProductType>>? get productTypeMap;

  /// Create a copy of ProductTypeMapState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductTypeMapStateImplCopyWith<_$ProductTypeMapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
