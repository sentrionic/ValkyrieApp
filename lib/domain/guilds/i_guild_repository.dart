import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';

abstract class IGuildRepository {
  Future<Either<GuildFailure, List<Guild>>> getUserGuilds();

  Future<Either<GuildFailure, Guild>> createGuild(String name);

  Future<Either<GuildFailure, Guild>> joinGuild(String inviteLink);

  Future<Either<GuildFailure, Unit>> deleteGuild(String guildId);

  Future<Either<GuildFailure, Unit>> editGuild(
    String guildId,
    String name,
    File? icon,
    String? url,
  );

  Future<Either<GuildFailure, Unit>> leaveGuild(String guildId);

  Future<Either<GuildFailure, String>> getInviteLink(
    String guildId, {
    bool isPermanent = false,
  });

  Future<Either<GuildFailure, Unit>> invalidateInviteLink(String guildId);
}
