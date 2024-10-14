// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      longDescription: json['longDescription'] as String?,
      sellingPrice: (json['sellingPrice'] as num?)?.toInt(),
      buyingPrice: (json['buyingPrice'] as num?)?.toDouble(),
      availableQuantity: (json['availableQuantity'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      sku: json['sku'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      availableDate: json['availableDate'] == null
          ? null
          : DateTime.parse(json['availableDate'] as String),
      category: json['category'] == null
          ? null
          : Categories.fromJson(json['category'] as Map<String, dynamic>),
      subCategory: json['subCategory'] == null
          ? null
          : SubCategory.fromJson(json['subCategory'] as Map<String, dynamic>),
      seller: json['seller'] == null
          ? null
          : Seller.fromJson(json['seller'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'longDescription': instance.longDescription,
      'sellingPrice': instance.sellingPrice,
      'buyingPrice': instance.buyingPrice,
      'availableQuantity': instance.availableQuantity,
      'quantity': instance.quantity,
      'sku': instance.sku,
      'images': instance.images,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'availableDate': instance.availableDate?.toIso8601String(),
      'category': instance.category,
      'subCategory': instance.subCategory,
      'seller': instance.seller,
    };
