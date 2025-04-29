// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalModelAdapter extends TypeAdapter<LocalModel> {
  @override
  final int typeId = 4;

  @override
  LocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalModel(
      dbId: (fields[0] as num?)?.toInt(),
      userId: fields[1] as String?,
      name: fields[2] as String?,
      imageUrl: fields[3] as String?,
      isStore: fields[4] as bool?,
      isVerified: fields[5] as bool?,
      description: fields[6] as String?,
      telephoneNumber: fields[7] as String?,
      email: fields[8] as String?,
      website: fields[9] as String?,
      countryCode: fields[10] as String?,
      city: fields[11] as String?,
      street: fields[12] as String?,
      createdAt: fields[13] as DateTime?,
      updatedAt: fields[14] as DateTime?,
      productType: fields[15] as ProductType?,
    );
  }

  @override
  void write(BinaryWriter writer, LocalModel obj) {
    writer
      ..writeByte(16)
      ..writeByte(0)
      ..write(obj.dbId)
      ..writeByte(1)
      ..write(obj.userId)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.imageUrl)
      ..writeByte(4)
      ..write(obj.isStore)
      ..writeByte(5)
      ..write(obj.isVerified)
      ..writeByte(6)
      ..write(obj.description)
      ..writeByte(7)
      ..write(obj.telephoneNumber)
      ..writeByte(8)
      ..write(obj.email)
      ..writeByte(9)
      ..write(obj.website)
      ..writeByte(10)
      ..write(obj.countryCode)
      ..writeByte(11)
      ..write(obj.city)
      ..writeByte(12)
      ..write(obj.street)
      ..writeByte(13)
      ..write(obj.createdAt)
      ..writeByte(14)
      ..write(obj.updatedAt)
      ..writeByte(15)
      ..write(obj.productType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalModelImpl _$$LocalModelImplFromJson(Map<String, dynamic> json) =>
    _$LocalModelImpl(
      dbId: (json['id'] as num?)?.toInt(),
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
      'id': instance.dbId,
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
