import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';

part 'guild_dto.freezed.dart';

@freezed
class GuildDto with _$GuildDto {
  const GuildDto._();

  const factory GuildDto({
    required String id,
    required String name,
    required String defaultChannelId,
    required String ownerId,
    required bool hasNotification,
    String? icon,
  }) = _GuildDto;

  Guild toDomain() {
    return Guild(
      id: id,
      name: GuildName(name),
      defaultChannel: defaultChannelId,
      ownerId: ownerId,
      hasNotification: hasNotification,
      icon: icon,
    );
  }

  factory GuildDto.fromMap(Map<String, dynamic> map) {
    return GuildDto(
      id: map['id'],
      name: map['name'],
      defaultChannelId: map['default_channel_id'],
      ownerId: map['ownerId'],
      hasNotification: map['hasNotification'],
      icon: map['icon'],
    );
  }
}
