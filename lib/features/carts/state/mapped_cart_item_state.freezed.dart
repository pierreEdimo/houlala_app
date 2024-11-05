// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mapped_cart_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MappedCartItemState {
  List<MappedCartItem> get cartItemList => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  /// Create a copy of MappedCartItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MappedCartItemStateCopyWith<MappedCartItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MappedCartItemStateCopyWith<$Res> {
  factory $MappedCartItemStateCopyWith(
          MappedCartItemState value, $Res Function(MappedCartItemState) then) =
      _$MappedCartItemStateCopyWithImpl<$Res, MappedCartItemState>;
  @useResult
  $Res call(
      {List<MappedCartItem> cartItemList, String errorMessage, bool loading});
}

/// @nodoc
class _$MappedCartItemStateCopyWithImpl<$Res, $Val extends MappedCartItemState>
    implements $MappedCartItemStateCopyWith<$Res> {
  _$MappedCartItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MappedCartItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItemList = null,
    Object? errorMessage = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      cartItemList: null == cartItemList
          ? _value.cartItemList
          : cartItemList // ignore: cast_nullable_to_non_nullable
              as List<MappedCartItem>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MappedCartItemStateImplCopyWith<$Res>
    implements $MappedCartItemStateCopyWith<$Res> {
  factory _$$MappedCartItemStateImplCopyWith(_$MappedCartItemStateImpl value,
          $Res Function(_$MappedCartItemStateImpl) then) =
      __$$MappedCartItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MappedCartItem> cartItemList, String errorMessage, bool loading});
}

/// @nodoc
class __$$MappedCartItemStateImplCopyWithImpl<$Res>
    extends _$MappedCartItemStateCopyWithImpl<$Res, _$MappedCartItemStateImpl>
    implements _$$MappedCartItemStateImplCopyWith<$Res> {
  __$$MappedCartItemStateImplCopyWithImpl(_$MappedCartItemStateImpl _value,
      $Res Function(_$MappedCartItemStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MappedCartItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItemList = null,
    Object? errorMessage = null,
    Object? loading = null,
  }) {
    return _then(_$MappedCartItemStateImpl(
      cartItemList: null == cartItemList
          ? _value._cartItemList
          : cartItemList // ignore: cast_nullable_to_non_nullable
              as List<MappedCartItem>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MappedCartItemStateImpl implements _MappedCartItemState {
  _$MappedCartItemStateImpl(
      {final List<MappedCartItem> cartItemList = const [],
      this.errorMessage = '',
      this.loading = false})
      : _cartItemList = cartItemList;

  final List<MappedCartItem> _cartItemList;
  @override
  @JsonKey()
  List<MappedCartItem> get cartItemList {
    if (_cartItemList is EqualUnmodifiableListView) return _cartItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItemList);
  }

  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool loading;

  @override
  String toString() {
    return 'MappedCartItemState(cartItemList: $cartItemList, errorMessage: $errorMessage, loading: $loading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MappedCartItemStateImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItemList, _cartItemList) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartItemList),
      errorMessage,
      loading);

  /// Create a copy of MappedCartItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MappedCartItemStateImplCopyWith<_$MappedCartItemStateImpl> get copyWith =>
      __$$MappedCartItemStateImplCopyWithImpl<_$MappedCartItemStateImpl>(
          this, _$identity);
}

abstract class _MappedCartItemState implements MappedCartItemState {
  factory _MappedCartItemState(
      {final List<MappedCartItem> cartItemList,
      final String errorMessage,
      final bool loading}) = _$MappedCartItemStateImpl;

  @override
  List<MappedCartItem> get cartItemList;
  @override
  String get errorMessage;
  @override
  bool get loading;

  /// Create a copy of MappedCartItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MappedCartItemStateImplCopyWith<_$MappedCartItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
