import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';

part 'channel_dto.freezed.dart';

@freezed
class ChannelDto with _$ChannelDto {
  const ChannelDto._();

  const factory ChannelDto({
    required String id,
    required String name,
    required bool isPublic,
    required bool hasNotification,
  }) = _ChannelDto;

  Channel toDomain() {
    return Channel(
      id: id,
      name: ChannelName(name),
      isPublic: isPublic,
      hasNotification: hasNotification,
    );
  }

  factory ChannelDto.fromMap(Map<String, dynamic> map) {
    return ChannelDto(
      id: map['id'],
      name: map['name'],
      isPublic: map['isPublic'],
      hasNotification: map['hasNotification'] ?? false,
    );
  }
}
