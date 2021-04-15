import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_appearance_dto.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_dto.dart';

@LazySingleton(as: IGuildRepository)
class GuildRepository extends IGuildRepository {
  final Dio _dio;

  GuildRepository(this._dio);

  @override
  Future<Either<GuildFailure, List<Guild>>> getUserGuilds() async {
    try {
      final response = await _dio.get('/guilds');

      if (response.statusCode == 200) {
        final results = jsonDecode(response.data);
        final List<Guild> list = [];
        results.forEach((g) => list.add(GuildDto.fromMap(g).toDomain()));
        return right(list);
      }
      return left(const GuildFailure.unexpected());
    } on DioError catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    }
  }

  @override
  Future<Either<GuildFailure, GuildAppearance>> getGuildAppearance(
    String guildId,
  ) async {
    try {
      final response = await _dio.get('/guilds/$guildId/member');

      if (response.statusCode == 200) {
        final results = jsonDecode(response.data);
        final settings = GuildAppearanceDto.fromMap(results).toDomain();
        return right(settings);
      }
      return left(const GuildFailure.unexpected());
    } on DioError catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    }
  }

  @override
  Future<Either<GuildFailure, Unit>> changeAppearance({
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
      return left(const GuildFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    }
  }

  @override
  Future<Either<GuildFailure, Unit>> kickMember(
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
      return left(const GuildFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    }
  }

  @override
  Future<Either<GuildFailure, Unit>> banMember(
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
      return left(const GuildFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    }
  }

  @override
  Future<Either<GuildFailure, String>> getInviteLink(
    String guildId, {
    bool isPermanent = false,
  }) async {
    try {
      final query = isPermanent ? "?isPermanent=true" : "";
      final response = await _dio.get('/guilds/$guildId/invite$query');
      return right(response.toString());
    } on DioError catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    }
  }
}
