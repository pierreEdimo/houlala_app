// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalModelImpl _$$LocalModelImplFromJson(Map<String, dynamic> json) =>
    _$LocalModelImpl(
      id: (json['id'] as num?)?.toInt(),
      userId: json['userId'] as String?,
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isStore: json['isStore'] as bool?,
      isVerified: json['isVerified'] as bool?,
      description: json['description'] as String?,
      telephoneNumber: json['telephoneNumber'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      countryCode: json['countryCode'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      productType: json['productType'] == null
          ? null
          : ProductType.fromJson(json['productType'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LocalModelImplToJson(_$LocalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'isStore': instance.isStore,
      'isVerified': instance.isVerified,
      'description': instance.description,
      'telephoneNumber': instance.telephoneNumber,
      'email': instance.email,
      'website': instance.website,
      'countryCode': instance.countryCode,
      'city': instance.city,
      'street': instance.street,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'productType': instance.productType,
    };
