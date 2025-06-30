// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StockImpl _$$StockImplFromJson(Map<String, dynamic> json) => _$StockImpl(
      productId: (json['productId'] as num?)?.toInt(),
      initialQuantity: (json['initialQuantity'] as num?)?.toInt(),
      availableQuantity: (json['availableQuantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StockImplToJson(_$StockImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'initialQuantity': instance.initialQuantity,
      'availableQuantity': instance.availableQuantity,
    };
