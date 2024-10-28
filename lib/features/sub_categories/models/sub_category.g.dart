// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubCategoryImpl _$$SubCategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      imageUrl: json['imageUrl'] as String?,
      category: json['category'] == null
          ? null
          : Categories.fromJson(json['category'] as Map<String, dynamic>),
      route: json['route'] as String?,
    );

Map<String, dynamic> _$$SubCategoryImplToJson(_$SubCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'category': instance.category,
      'route': instance.route,
    };
