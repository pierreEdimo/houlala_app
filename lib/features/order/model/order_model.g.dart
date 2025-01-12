// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      local: json['local'] == null
          ? null
          : LocalModel.fromJson(json['local'] as Map<String, dynamic>),
      totalQuantity: (json['totalQuantity'] as num?)?.toInt(),
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryStatus: json['deliveryStatus'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'local': instance.local,
      'totalQuantity': instance.totalQuantity,
      'totalPrice': instance.totalPrice,
      'cartItems': instance.cartItems,
      'deliveryStatus': instance.deliveryStatus,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
