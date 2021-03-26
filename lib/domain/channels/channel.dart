import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';

part 'channel.freezed.dart';

@freezed
class Channel with _$Channel {
  const Channel._();

  const factory Channel({
    required String id,
    required ChannelName name,
    required bool isPublic,
    required bool hasNotification,
  }) = _Channel;

  factory Channel.empty() => Channel(
        id: "0",
        name: ChannelName(""),
        isPublic: false,
        hasNotification: false,
      );
}
