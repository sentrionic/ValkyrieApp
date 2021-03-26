import 'package:dartz/dartz.dart';

import 'channel.dart';
import 'channel_failure.dart';

abstract class IChannelRepository {
  Future<Either<ChannelFailure, List<Channel>>> getGuildChannels(
    String guildId,
  );
}
