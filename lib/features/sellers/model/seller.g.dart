// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SellerImpl _$$SellerImplFromJson(Map<String, dynamic> json) => _$SellerImpl(
      id: (json['id'] as num?)?.toInt(),
      sellerName: json['sellerName'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isStore: json['isStore'] as bool?,
      longDescription: json['longDescription'] as String?,
      telephoneNumber: json['telephoneNumber'] as String?,
      email: json['email'] as String?,
      website: json['website'] as String?,
      countryCode: json['countryCode'] as String?,
      city: json['city'] as String?,
      adress: json['adress'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      subCategory: json['subCategory'] == null
          ? null
          : SubCategory.fromJson(json['subCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SellerImplToJson(_$SellerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sellerName': instance.sellerName,
      'imageUrl': instance.imageUrl,
      'isStore': instance.isStore,
      'longDescription': instance.longDescription,
      'telephoneNumber': instance.telephoneNumber,
      'email': instance.email,
      'website': instance.website,
      'countryCode': instance.countryCode,
      'city': instance.city,
      'adress': instance.adress,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'subCategory': instance.subCategory,
    };
