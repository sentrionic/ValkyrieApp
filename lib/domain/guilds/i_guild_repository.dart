import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';
import 'package:valkyrie_app/domain/member/member.dart';

import 'guild.dart';
import 'guild_failure.dart';

abstract class IGuildRepository {
  Future<Either<GuildFailure, List<Guild>>> getUserGuilds();

  Future<Either<GuildFailure, Guild>> createGuild(String name);

  Future<Either<GuildFailure, Guild>> joinGuild(String inviteLink);

  Future<Either<GuildFailure, Unit>> deleteGuild(String guildId);

  Future<Either<GuildFailure, Unit>> editGuild(
    String guildId,
    String name,
    File? icon,
  );

  Future<Either<GuildFailure, Unit>> leaveGuild(String guildId);

  Future<Either<GuildFailure, String>> getInviteLink(
    String guildId, {
    bool isPermanent = false,
  });

  Future<Either<GuildFailure, Unit>> invalidateInviteLink(String guildId);

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

  Future<Either<GuildFailure, List<Member>>> getBanList(String guildId);

  Future<Either<GuildFailure, Unit>> unbanMember(
    String guildId,
    String memberId,
  );
}
