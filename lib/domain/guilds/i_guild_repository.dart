import 'package:dartz/dartz.dart';

import 'guild.dart';
import 'guild_failure.dart';

abstract class IGuildRepository {
  Future<Either<GuildFailure, List<Guild>>> getUserGuilds();
}
