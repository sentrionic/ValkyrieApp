import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

import 'member_dto.dart';

@LazySingleton(as: IMemberRepository)
class MemberRepository extends IMemberRepository {
  final Dio _dio;

  MemberRepository(this._dio);

  @override
  Future<Either<MemberFailure, List<Member>>> getGuildMembers(
    String guildId,
  ) async {
    try {
      final response = await _dio.get('/guilds/$guildId/members');

      if (response.statusCode == 200) {
        final results = jsonDecode(response.data);
        final List<Member> list = [];
        results.forEach((c) => list.add(MemberDto.fromMap(c).toDomain()));
        return right(list);
      }
      return left(const MemberFailure.unexpected());
    } on DioError catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    }
  }
}
