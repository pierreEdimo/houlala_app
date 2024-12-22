// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapped_cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MappedCartItemImpl _$$MappedCartItemImplFromJson(Map<String, dynamic> json) =>
    _$MappedCartItemImpl(
      local: json['local'] == null
          ? null
          : LocalModel.fromJson(json['local'] as Map<String, dynamic>),
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MappedCartItemImplToJson(
        _$MappedCartItemImpl instance) =>
    <String, dynamic>{
      'local': instance.local,
      'cartItems': instance.cartItems,
    };
