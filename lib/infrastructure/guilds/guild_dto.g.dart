// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guild_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuildDto _$$_GuildDtoFromJson(Map<String, dynamic> json) => _$_GuildDto(
      id: json['id'] as String,
      name: json['name'] as String,
      defaultChannelId: json['default_channel_id'] as String,
      ownerId: json['ownerId'] as String,
      hasNotification: json['hasNotification'] as bool,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$_GuildDtoToJson(_$_GuildDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'default_channel_id': instance.defaultChannelId,
      'ownerId': instance.ownerId,
      'hasNotification': instance.hasNotification,
      'icon': instance.icon,
    };
