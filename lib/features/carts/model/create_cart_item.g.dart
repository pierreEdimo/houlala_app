// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCartItemImpl _$$CreateCartItemImplFromJson(Map<String, dynamic> json) =>
    _$CreateCartItemImpl(
      userId: json['userId'] as String?,
      productId: (json['productId'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CreateCartItemImplToJson(
        _$CreateCartItemImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'productId': instance.productId,
      'quantity': instance.quantity,
      'price': instance.price,
    };
