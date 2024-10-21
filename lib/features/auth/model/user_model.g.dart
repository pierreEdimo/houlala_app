// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      email: json['email'] as String?,
      id: json['id'] as String?,
      userName: json['userName'] as String?,
      lastName: json['lastName'] as String?,
      firstName: json['firstName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
      'userName': instance.userName,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'phoneNumber': instance.phoneNumber,
    };
