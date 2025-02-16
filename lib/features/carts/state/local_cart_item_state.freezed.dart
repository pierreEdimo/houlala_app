// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_cart_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalCartItemState {
  List<CartItem> get cartItemList => throw _privateConstructorUsedError;
  bool get isCartLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of LocalCartItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalCartItemStateCopyWith<LocalCartItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalCartItemStateCopyWith<$Res> {
  factory $LocalCartItemStateCopyWith(
          LocalCartItemState value, $Res Function(LocalCartItemState) then) =
      _$LocalCartItemStateCopyWithImpl<$Res, LocalCartItemState>;
  @useResult
  $Res call(
      {List<CartItem> cartItemList, bool isCartLoading, String errorMessage});
}

/// @nodoc
class _$LocalCartItemStateCopyWithImpl<$Res, $Val extends LocalCartItemState>
    implements $LocalCartItemStateCopyWith<$Res> {
  _$LocalCartItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalCartItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItemList = null,
    Object? isCartLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      cartItemList: null == cartItemList
          ? _value.cartItemList
          : cartItemList // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      isCartLoading: null == isCartLoading
          ? _value.isCartLoading
          : isCartLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalCartItemStateImplCopyWith<$Res>
    implements $LocalCartItemStateCopyWith<$Res> {
  factory _$$LocalCartItemStateImplCopyWith(_$LocalCartItemStateImpl value,
          $Res Function(_$LocalCartItemStateImpl) then) =
      __$$LocalCartItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartItem> cartItemList, bool isCartLoading, String errorMessage});
}

/// @nodoc
class __$$LocalCartItemStateImplCopyWithImpl<$Res>
    extends _$LocalCartItemStateCopyWithImpl<$Res, _$LocalCartItemStateImpl>
    implements _$$LocalCartItemStateImplCopyWith<$Res> {
  __$$LocalCartItemStateImplCopyWithImpl(_$LocalCartItemStateImpl _value,
      $Res Function(_$LocalCartItemStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalCartItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItemList = null,
    Object? isCartLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$LocalCartItemStateImpl(
      cartItemList: null == cartItemList
          ? _value._cartItemList
          : cartItemList // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      isCartLoading: null == isCartLoading
          ? _value.isCartLoading
          : isCartLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocalCartItemStateImpl implements _LocalCartItemState {
  _$LocalCartItemStateImpl(
      {final List<CartItem> cartItemList = const [],
      this.isCartLoading = true,
      this.errorMessage = ''})
      : _cartItemList = cartItemList;

  final List<CartItem> _cartItemList;
  @override
  @JsonKey()
  List<CartItem> get cartItemList {
    if (_cartItemList is EqualUnmodifiableListView) return _cartItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItemList);
  }

  @override
  @JsonKey()
  final bool isCartLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'LocalCartItemState(cartItemList: $cartItemList, isCartLoading: $isCartLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalCartItemStateImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItemList, _cartItemList) &&
            (identical(other.isCartLoading, isCartLoading) ||
                other.isCartLoading == isCartLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartItemList),
      isCartLoading,
      errorMessage);

  /// Create a copy of LocalCartItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalCartItemStateImplCopyWith<_$LocalCartItemStateImpl> get copyWith =>
      __$$LocalCartItemStateImplCopyWithImpl<_$LocalCartItemStateImpl>(
          this, _$identity);
}

abstract class _LocalCartItemState implements LocalCartItemState {
  factory _LocalCartItemState(
      {final List<CartItem> cartItemList,
      final bool isCartLoading,
      final String errorMessage}) = _$LocalCartItemStateImpl;

  @override
  List<CartItem> get cartItemList;
  @override
  bool get isCartLoading;
  @override
  String get errorMessage;

  /// Create a copy of LocalCartItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalCartItemStateImplCopyWith<_$LocalCartItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
