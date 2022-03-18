import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';
import 'package:valkyrie_app/domain/member/banned_member.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

abstract class IMemberRepository {
  Future<Either<MemberFailure, List<Member>>> getGuildMembers(String guildId);

  Future<Either<MemberFailure, GuildAppearance>> getGuildAppearance(
    String guildId,
  );

  Future<Either<MemberFailure, Unit>> changeAppearance({
    required String guildId,
    String? nickname,
    String? color,
  });

  Future<Either<MemberFailure, Unit>> kickMember(
    String guildId,
    String memberId,
  );

  Future<Either<MemberFailure, Unit>> banMember(
    String guildId,
    String memberId,
  );

  Future<Either<MemberFailure, List<BannedMember>>> getBanList(String guildId);

  Future<Either<MemberFailure, Unit>> unbanMember(
    String guildId,
    String memberId,
  );
}
