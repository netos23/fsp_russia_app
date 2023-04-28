// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      teamId: json['teamId'] as int?,
      name: json['name'] as String,
      rating: json['rating'] as int,
      type: (json['type'] as List<dynamic>).map((e) => e as int).toSet(),
      cityId: json['cityId'] as String?,
      email: json['email'] as String,
      username: json['username'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'name': instance.name,
      'rating': instance.rating,
      'type': instance.type.toList(),
      'cityId': instance.cityId,
      'email': instance.email,
      'username': instance.username,
      'id': instance.id,
    };
