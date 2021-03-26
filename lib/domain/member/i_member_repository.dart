import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

import 'member.dart';

abstract class IMemberRepository {
  Future<Either<MemberFailure, List<Member>>> getGuildMembers(String guildId);
}
