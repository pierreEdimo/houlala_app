// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductTypeImpl _$$ProductTypeImplFromJson(Map<String, dynamic> json) =>
    _$ProductTypeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      route: json['route'] as String?,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductTypeImplToJson(_$ProductTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'route': instance.route,
      'category': instance.category,
    };
