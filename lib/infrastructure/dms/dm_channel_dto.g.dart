// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dm_channel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DMChannelDto _$$_DMChannelDtoFromJson(Map<String, dynamic> json) =>
    _$_DMChannelDto(
      id: json['id'] as String,
      user: DMUserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DMChannelDtoToJson(_$_DMChannelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
    };

_$_DMNotificationDto _$$_DMNotificationDtoFromJson(Map<String, dynamic> json) =>
    _$_DMNotificationDto(
      id: json['id'] as String,
      user: DMUserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DMNotificationDtoToJson(
        _$_DMNotificationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
    };
