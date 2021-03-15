import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/infrastructure/user/user_dto.dart';

part 'dm_channel_dto.freezed.dart';

@freezed
class DMChannelDto with _$DMChannelDto {
  const DMChannelDto._();

  const factory DMChannelDto({
    required String id,
    required UserDto user,
  }) = _DMChannelDto;

  DMChannel toDomain() {
    return DMChannel(id: id, user: user.toDomain());
  }

  factory DMChannelDto.fromMap(Map<String, dynamic> map) {
    return DMChannelDto(
      id: map['id'] ?? '',
      user: UserDto.fromMap(map['user'] ?? ''),
    );
  }
}
