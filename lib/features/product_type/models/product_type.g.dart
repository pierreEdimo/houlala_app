// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductTypeAdapter extends TypeAdapter<ProductType> {
  @override
  final int typeId = 2;

  @override
  ProductType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductType(
      dbId: (fields[0] as num?)?.toInt(),
      name: fields[1] as String?,
      imageUrl: fields[2] as String?,
      route: fields[3] as String?,
      category: fields[4] as CategoryModel?,
    );
  }

  @override
  void write(BinaryWriter writer, ProductType obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.dbId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.imageUrl)
      ..writeByte(3)
      ..write(obj.route)
      ..writeByte(4)
      ..write(obj.category);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductTypeImpl _$$ProductTypeImplFromJson(Map<String, dynamic> json) =>
    _$ProductTypeImpl(
      dbId: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      route: json['route'] as String?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductTypeImplToJson(_$ProductTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.dbId,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'route': instance.route,
      'category': instance.category,
    };
