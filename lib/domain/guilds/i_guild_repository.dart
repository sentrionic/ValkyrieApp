import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';

import 'guild.dart';
import 'guild_failure.dart';

abstract class IGuildRepository {
  Future<Either<GuildFailure, List<Guild>>> getUserGuilds();

  Future<Either<GuildFailure, GuildAppearance>> getGuildAppearance(
    String guildId,
  );

  Future<Either<GuildFailure, Unit>> changeAppearance({
    required String guildId,
    String? nickname,
    String? color,
  });

  Future<Either<GuildFailure, Unit>> kickMember(
    String guildId,
    String memberId,
  );

  Future<Either<GuildFailure, Unit>> banMember(
    String guildId,
    String memberId,
  );

  Future<Either<GuildFailure, String>> getInviteLink(
    String guildId, {
    bool isPermanent = false,
  });
}
