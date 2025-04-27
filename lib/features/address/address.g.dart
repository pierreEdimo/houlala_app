// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      id: (json['id'] as num?)?.toInt(),
      lastName: json['lastName'] as String?,
      firstName: json['firstName'] as String?,
      street: json['street'] as String?,
      country: json['country'] as String?,
      poBox: json['poBox'] as String?,
      city: json['city'] as String?,
      houseNumber: json['houseNumber'] as String?,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'street': instance.street,
      'country': instance.country,
      'poBox': instance.poBox,
      'city': instance.city,
      'houseNumber': instance.houseNumber,
    };
