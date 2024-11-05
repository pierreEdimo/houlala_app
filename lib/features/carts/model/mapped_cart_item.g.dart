// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapped_cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MappedCartItemImpl _$$MappedCartItemImplFromJson(Map<String, dynamic> json) =>
    _$MappedCartItemImpl(
      seller: json['seller'] == null
          ? null
          : Seller.fromJson(json['seller'] as Map<String, dynamic>),
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MappedCartItemImplToJson(
        _$MappedCartItemImpl instance) =>
    <String, dynamic>{
      'seller': instance.seller,
      'cartItems': instance.cartItems,
    };

_$CartItemImpl _$$CartItemImplFromJson(Map<String, dynamic> json) =>
    _$CartItemImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: json['userId'] as String?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CartItemImplToJson(_$CartItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'product': instance.product,
      'quantity': instance.quantity,
      'price': instance.price,
    };
