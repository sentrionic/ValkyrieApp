import 'package:dartz/dartz.dart';

import 'channel.dart';
import 'channel_failure.dart';

abstract class IChannelRepository {
  Future<Either<ChannelFailure, List<Channel>>> getGuildChannels(
    String guildId,
  );

  Future<Either<ChannelFailure, Unit>> createChannel(
    String guildId,
    String name, {
    bool isPublic = true,
    List<String> members = const [],
  });

  Future<Either<ChannelFailure, Unit>> editChannel(
    String guildId,
    String channelId,
    String name, {
    bool isPublic = true,
    List<String> members = const [],
  });

  Future<Either<ChannelFailure, Unit>> deleteChannel(
    String guildId,
    String channelId,
  );

  Future<Either<ChannelFailure, List<String>>> getPrivateChannelMembers(
    String channelId,
  );
}
