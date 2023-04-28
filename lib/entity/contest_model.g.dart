// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContestModel _$$_ContestModelFromJson(Map<String, dynamic> json) =>
    _$_ContestModel(
      active: json['active'] as bool,
      employer: json['employer'] as String,
      organizerId: json['organizer_id'] as int,
      name: json['name'] as String,
      datetimeStart: json['datetime_start'] as String,
      imagePath: json['image_path'] as String,
      datetimeEnd: json['datetime_end'] as String,
      cityId: json['city_id'] as String,
      feeding: json['feeding'] as bool,
      description: json['description'] as String,
      difficulty: json['difficulty'] as int,
    );

Map<String, dynamic> _$$_ContestModelToJson(_$_ContestModel instance) =>
    <String, dynamic>{
      'active': instance.active,
      'employer': instance.employer,
      'organizer_id': instance.organizerId,
      'name': instance.name,
      'datetime_start': instance.datetimeStart,
      'image_path': instance.imagePath,
      'datetime_end': instance.datetimeEnd,
      'city_id': instance.cityId,
      'feeding': instance.feeding,
      'description': instance.description,
      'difficulty': instance.difficulty,
    };
