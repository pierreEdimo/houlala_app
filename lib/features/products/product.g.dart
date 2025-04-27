// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 3;

  @override
  Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product(
      dbId: (fields[0] as num?)?.toInt(),
      name: fields[1] as String?,
      description: fields[2] as String?,
      unitSellingPrice: (fields[3] as num?)?.toDouble(),
      unitBuyingPrice: (fields[4] as num?)?.toDouble(),
      quantity: (fields[5] as num?)?.toInt(),
      defaultQuantity: (fields[6] as num?)?.toInt(),
      images: (fields[7] as List?)?.cast<String>(),
      createdAt: fields[8] as DateTime?,
      updatedAt: fields[9] as DateTime?,
      availableDate: fields[10] as DateTime?,
      category: fields[11] as CategoryModel?,
      productType: fields[12] as ProductType?,
      local: fields[13] as LocalModel?,
      isFavorite: fields[14] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.dbId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.unitSellingPrice)
      ..writeByte(4)
      ..write(obj.unitBuyingPrice)
      ..writeByte(5)
      ..write(obj.quantity)
      ..writeByte(6)
      ..write(obj.defaultQuantity)
      ..writeByte(7)
      ..write(obj.images)
      ..writeByte(8)
      ..write(obj.createdAt)
      ..writeByte(9)
      ..write(obj.updatedAt)
      ..writeByte(10)
      ..write(obj.availableDate)
      ..writeByte(11)
      ..write(obj.category)
      ..writeByte(12)
      ..write(obj.productType)
      ..writeByte(13)
      ..write(obj.local)
      ..writeByte(14)
      ..write(obj.isFavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      dbId: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      unitSellingPrice: (json['unitSellingPrice'] as num?)?.toDouble(),
      unitBuyingPrice: (json['unitBuyingPrice'] as num?)?.toDouble(),
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
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.dbId,
      'name': instance.name,
      'description': instance.description,
      'unitSellingPrice': instance.unitSellingPrice,
      'unitBuyingPrice': instance.unitBuyingPrice,
      'quantity': instance.quantity,
      'defaultQuantity': instance.defaultQuantity,
      'images': instance.images,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'availableDate': instance.availableDate?.toIso8601String(),
      'category': instance.category,
      'productType': instance.productType,
      'local': instance.local,
      'isFavorite': instance.isFavorite,
    };
