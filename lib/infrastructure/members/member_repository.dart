import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';
import 'package:valkyrie_app/domain/member/banned_member.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';
import 'package:valkyrie_app/infrastructure/core/field_error.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_appearance_dto.dart';
import 'package:valkyrie_app/infrastructure/members/banned_member_dto.dart';

import 'package:valkyrie_app/infrastructure/members/member_dto.dart';

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
      final results = jsonDecode(response.data);
      final List<Member> list = [];
      results.forEach((c) => list.add(MemberDto.fromMap(c).toDomain()));
      return right(list);
    } on DioError catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    }
  }

  @override
  Future<Either<MemberFailure, GuildAppearance>> getGuildAppearance(
    String guildId,
  ) async {
    try {
      final response = await _dio.get('/guilds/$guildId/member');

      final results = jsonDecode(response.data);
      final settings = GuildAppearanceDto.fromMap(results).toDomain();
      return right(settings);
    } on DioError catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    }
  }

  @override
  Future<Either<MemberFailure, Unit>> changeAppearance({
    required String guildId,
    String? nickname,
    String? color,
  }) async {
    try {
      await _dio.put(
        '/guilds/$guildId/member',
        data: {
          "nickname": nickname,
          "color": color,
        },
      );

      return right(unit);
    } on DioError catch (err) {
      print(err);
      if (err.response?.statusCode == 400) {
        final error = FieldError.getError(err.response!);
        return left(MemberFailure.badRequest(error.message));
      }
      return left(const MemberFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    }
  }

  @override
  Future<Either<MemberFailure, Unit>> kickMember(
    String guildId,
    String memberId,
  ) async {
    try {
      await _dio.post(
        '/guilds/$guildId/kick',
        data: {
          "memberId": memberId,
        },
      );

      return right(unit);
    } on DioError catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    }
  }

  @override
  Future<Either<MemberFailure, Unit>> banMember(
    String guildId,
    String memberId,
  ) async {
    try {
      await _dio.post(
        '/guilds/$guildId/bans',
        data: {
          "memberId": memberId,
        },
      );

      return right(unit);
    } on DioError catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    }
  }

  @override
  Future<Either<MemberFailure, List<BannedMember>>> getBanList(
    String guildId,
  ) async {
    try {
      final response = await _dio.get('/guilds/$guildId/bans');
      final results = jsonDecode(response.data);
      final List<BannedMember> list = [];
      results.forEach((m) => list.add(BannedMemberDto.fromMap(m).toDomain()));
      return right(list);
    } on DioError catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    }
  }

  @override
  Future<Either<MemberFailure, Unit>> unbanMember(
    String guildId,
    String memberId,
  ) async {
    try {
      await _dio.delete(
        '/guilds/$guildId/bans',
        data: {
          "memberId": memberId,
        },
      );

      return right(unit);
    } on DioError catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const MemberFailure.unexpected());
    }
  }
}
