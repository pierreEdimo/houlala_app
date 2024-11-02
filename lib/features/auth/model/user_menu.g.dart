// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserMenuImpl _$$UserMenuImplFromJson(Map<String, dynamic> json) =>
    _$UserMenuImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      thumbnail: json['thumbnail'] as String?,
      route: json['route'] as String?,
    );

Map<String, dynamic> _$$UserMenuImplToJson(_$UserMenuImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'route': instance.route,
    };
