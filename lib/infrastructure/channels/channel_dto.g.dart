// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelDto _$$_ChannelDtoFromJson(Map<String, dynamic> json) =>
    _$_ChannelDto(
      id: json['id'] as String,
      name: json['name'] as String,
      isPublic: json['isPublic'] as bool,
      hasNotification: json['hasNotification'] as bool,
    );

Map<String, dynamic> _$$_ChannelDtoToJson(_$_ChannelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isPublic': instance.isPublic,
      'hasNotification': instance.hasNotification,
    };
