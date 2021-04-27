import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/infrastructure/dms/dm_user_dto.dart';

part 'dm_channel_dto.freezed.dart';

@freezed
class DMChannelDto with _$DMChannelDto {
  const DMChannelDto._();

  const factory DMChannelDto({
    required String id,
    required DMUserDto user,
  }) = _DMChannelDto;

  DMChannel toDomain() {
    return DMChannel(id: id, user: user.toDomain());
  }

  factory DMChannelDto.fromMap(Map<String, dynamic> map) {
    return DMChannelDto(
      id: map['id'],
      user: DMUserDto.fromMap(map['user']),
    );
  }
}

@freezed
class DMNotificationDto with _$DMNotificationDto {
  const DMNotificationDto._();

  const factory DMNotificationDto({
    required String id,
    required DMUserDto user,
  }) = _DMNotificationDto;

  DMNotification toDomain() {
    return DMNotification(
      id: id,
      count: 1,
      user: user.toDomain(),
    );
  }

  factory DMNotificationDto.fromMap(Map<String, dynamic> map) {
    return DMNotificationDto(
      id: map['id'],
      user: DMUserDto.fromMap(map['user']),
    );
  }
}
