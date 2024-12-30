// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      unitSellingPrice: (json['unitSellingPrice'] as num?)?.toDouble(),
      unitBuyingPrice: (json['unitBuyingPrice'] as num?)?.toDouble(),
      availableQuantity: (json['availableQuantity'] as num?)?.toInt() ?? 10,
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      defaultQuantity: (json['defaultQuantity'] as num?)?.toInt() ?? 1,
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
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      productType: json['productType'] == null
          ? null
          : ProductType.fromJson(json['productType'] as Map<String, dynamic>),
      local: json['local'] == null
          ? null
          : LocalModel.fromJson(json['local'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'unitSellingPrice': instance.unitSellingPrice,
      'unitBuyingPrice': instance.unitBuyingPrice,
      'availableQuantity': instance.availableQuantity,
      'quantity': instance.quantity,
      'defaultQuantity': instance.defaultQuantity,
      'images': instance.images,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'availableDate': instance.availableDate?.toIso8601String(),
      'category': instance.category,
      'productType': instance.productType,
      'local': instance.local,
    };
