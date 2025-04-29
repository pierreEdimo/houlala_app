// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppMenuImpl _$$AppMenuImplFromJson(Map<String, dynamic> json) =>
    _$AppMenuImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      thumbnail: json['thumbnail'] as String?,
      route: json['route'] as String?,
    );

Map<String, dynamic> _$$AppMenuImplToJson(_$AppMenuImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'route': instance.route,
    };
