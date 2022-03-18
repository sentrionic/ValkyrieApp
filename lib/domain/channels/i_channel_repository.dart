import 'package:dartz/dartz.dart';

import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';

abstract class IChannelRepository {
  Future<Either<ChannelFailure, List<Channel>>> getGuildChannels(
    String guildId,
  );

  Future<Either<ChannelFailure, Channel>> createChannel(
    String guildId,
    String name, {
    bool isPublic = true,
    List<String> members = const [],
  });

  Future<Either<ChannelFailure, Unit>> editChannel(
    String channelId,
    String name, {
    bool isPublic = true,
    List<String> members = const [],
  });

  Future<Either<ChannelFailure, Unit>> deleteChannel(
    String channelId,
  );

  Future<Either<ChannelFailure, List<String>>> getPrivateChannelMembers(
    String channelId,
  );
}
