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
  Seller? get seller => throw _privateConstructorUsedError;
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
  $Res call({Seller? seller, List<CartItem>? cartItems});

  $SellerCopyWith<$Res>? get seller;
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
    Object? seller = freezed,
    Object? cartItems = freezed,
  }) {
    return _then(_value.copyWith(
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as Seller?,
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
  $SellerCopyWith<$Res>? get seller {
    if (_value.seller == null) {
      return null;
    }

    return $SellerCopyWith<$Res>(_value.seller!, (value) {
      return _then(_value.copyWith(seller: value) as $Val);
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
  $Res call({Seller? seller, List<CartItem>? cartItems});

  @override
  $SellerCopyWith<$Res>? get seller;
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
    Object? seller = freezed,
    Object? cartItems = freezed,
  }) {
    return _then(_$MappedCartItemImpl(
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as Seller?,
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
  _$MappedCartItemImpl({this.seller, final List<CartItem>? cartItems})
      : _cartItems = cartItems;

  factory _$MappedCartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MappedCartItemImplFromJson(json);

  @override
  final Seller? seller;
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
    return 'MappedCartItem(seller: $seller, cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MappedCartItemImpl &&
            (identical(other.seller, seller) || other.seller == seller) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, seller, const DeepCollectionEquality().hash(_cartItems));

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
      {final Seller? seller,
      final List<CartItem>? cartItems}) = _$MappedCartItemImpl;

  factory _MappedCartItem.fromJson(Map<String, dynamic> json) =
      _$MappedCartItemImpl.fromJson;

  @override
  Seller? get seller;
  @override
  List<CartItem>? get cartItems;

  /// Create a copy of MappedCartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MappedCartItemImplCopyWith<_$MappedCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return _CartItem.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  int? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  /// Serializes this CartItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res, CartItem>;
  @useResult
  $Res call(
      {int? id, String? userId, Product? product, int? quantity, int? price});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res, $Val extends CartItem>
    implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? product = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartItemImplCopyWith<$Res>
    implements $CartItemCopyWith<$Res> {
  factory _$$CartItemImplCopyWith(
          _$CartItemImpl value, $Res Function(_$CartItemImpl) then) =
      __$$CartItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? userId, Product? product, int? quantity, int? price});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$CartItemImplCopyWithImpl<$Res>
    extends _$CartItemCopyWithImpl<$Res, _$CartItemImpl>
    implements _$$CartItemImplCopyWith<$Res> {
  __$$CartItemImplCopyWithImpl(
      _$CartItemImpl _value, $Res Function(_$CartItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? product = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
  }) {
    return _then(_$CartItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemImpl implements _CartItem {
  _$CartItemImpl(
      {this.id, this.userId, this.product, this.quantity, this.price});

  factory _$CartItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemImplFromJson(json);

  @override
  final int? id;
  @override
  final String? userId;
  @override
  final Product? product;
  @override
  final int? quantity;
  @override
  final int? price;

  @override
  String toString() {
    return 'CartItem(id: $id, userId: $userId, product: $product, quantity: $quantity, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, product, quantity, price);

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      __$$CartItemImplCopyWithImpl<_$CartItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemImplToJson(
      this,
    );
  }
}

abstract class _CartItem implements CartItem {
  factory _CartItem(
      {final int? id,
      final String? userId,
      final Product? product,
      final int? quantity,
      final int? price}) = _$CartItemImpl;

  factory _CartItem.fromJson(Map<String, dynamic> json) =
      _$CartItemImpl.fromJson;

  @override
  int? get id;
  @override
  String? get userId;
  @override
  Product? get product;
  @override
  int? get quantity;
  @override
  int? get price;

  /// Create a copy of CartItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartItemImplCopyWith<_$CartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
