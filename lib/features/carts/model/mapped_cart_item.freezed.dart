// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mapped_cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MappedCartItem _$MappedCartItemFromJson(Map<String, dynamic> json) {
  return _MappedCartItem.fromJson(json);
}

/// @nodoc
mixin _$MappedCartItem {
  LocalModel? get local => throw _privateConstructorUsedError;
  List<CartItem>? get cartItems => throw _privateConstructorUsedError;

  /// Serializes this MappedCartItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MappedCartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MappedCartItemCopyWith<MappedCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MappedCartItemCopyWith<$Res> {
  factory $MappedCartItemCopyWith(
          MappedCartItem value, $Res Function(MappedCartItem) then) =
      _$MappedCartItemCopyWithImpl<$Res, MappedCartItem>;
  @useResult
  $Res call({LocalModel? local, List<CartItem>? cartItems});

  $LocalModelCopyWith<$Res>? get local;
}

/// @nodoc
class _$MappedCartItemCopyWithImpl<$Res, $Val extends MappedCartItem>
    implements $MappedCartItemCopyWith<$Res> {
  _$MappedCartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MappedCartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? local = freezed,
    Object? cartItems = freezed,
  }) {
    return _then(_value.copyWith(
      local: freezed == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as LocalModel?,
      cartItems: freezed == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
    ) as $Val);
  }

  /// Create a copy of MappedCartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocalModelCopyWith<$Res>? get local {
    if (_value.local == null) {
      return null;
    }

    return $LocalModelCopyWith<$Res>(_value.local!, (value) {
      return _then(_value.copyWith(local: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MappedCartItemImplCopyWith<$Res>
    implements $MappedCartItemCopyWith<$Res> {
  factory _$$MappedCartItemImplCopyWith(_$MappedCartItemImpl value,
          $Res Function(_$MappedCartItemImpl) then) =
      __$$MappedCartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalModel? local, List<CartItem>? cartItems});

  @override
  $LocalModelCopyWith<$Res>? get local;
}

/// @nodoc
class __$$MappedCartItemImplCopyWithImpl<$Res>
    extends _$MappedCartItemCopyWithImpl<$Res, _$MappedCartItemImpl>
    implements _$$MappedCartItemImplCopyWith<$Res> {
  __$$MappedCartItemImplCopyWithImpl(
      _$MappedCartItemImpl _value, $Res Function(_$MappedCartItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of MappedCartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? local = freezed,
    Object? cartItems = freezed,
  }) {
    return _then(_$MappedCartItemImpl(
      local: freezed == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as LocalModel?,
      cartItems: freezed == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MappedCartItemImpl implements _MappedCartItem {
  _$MappedCartItemImpl({this.local, final List<CartItem>? cartItems})
      : _cartItems = cartItems;

  factory _$MappedCartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MappedCartItemImplFromJson(json);

  @override
  final LocalModel? local;
  final List<CartItem>? _cartItems;
  @override
  List<CartItem>? get cartItems {
    final value = _cartItems;
    if (value == null) return null;
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MappedCartItem(local: $local, cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MappedCartItemImpl &&
            (identical(other.local, local) || other.local == local) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, local, const DeepCollectionEquality().hash(_cartItems));

  /// Create a copy of MappedCartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MappedCartItemImplCopyWith<_$MappedCartItemImpl> get copyWith =>
      __$$MappedCartItemImplCopyWithImpl<_$MappedCartItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MappedCartItemImplToJson(
      this,
    );
  }
}

abstract class _MappedCartItem implements MappedCartItem {
  factory _MappedCartItem(
      {final LocalModel? local,
      final List<CartItem>? cartItems}) = _$MappedCartItemImpl;

  factory _MappedCartItem.fromJson(Map<String, dynamic> json) =
      _$MappedCartItemImpl.fromJson;

  @override
  LocalModel? get local;
  @override
  List<CartItem>? get cartItems;

  /// Create a copy of MappedCartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MappedCartItemImplCopyWith<_$MappedCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
