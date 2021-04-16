import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_appearance_dto.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_dto.dart';
import 'package:valkyrie_app/infrastructure/members/member_dto.dart';

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
  Future<Either<GuildFailure, Guild>> createGuild(String name) async {
    try {
      final response = await _dio.post(
        '/guilds/create',
        data: {
          "name": name,
        },
      );
      final result = jsonDecode(response.data);
      return right(GuildDto.fromMap(result).toDomain());
    } on DioError catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    }
  }

  @override
  Future<Either<GuildFailure, Unit>> deleteGuild(String guildId) async {
    try {
      await _dio.delete(
        '/guilds/$guildId/delete',
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
  Future<Either<GuildFailure, Unit>> editGuild(
    String guildId,
    String name,
    File? icon,
  ) async {
    try {
      final formData = FormData.fromMap({
        "name": name,
      });

      if (icon != null) {
        formData.files.add(MapEntry(
          "image",
          await MultipartFile.fromFile(icon.path),
        ));
      }

      await _dio.put('/guilds/$guildId', data: formData);
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
  Future<Either<GuildFailure, List<Member>>> getBanList(String guildId) async {
    try {
      final response = await _dio.get('/guilds/$guildId/bans');

      if (response.statusCode == 200) {
        final results = jsonDecode(response.data);
        final List<Member> list = [];
        results.forEach((m) => list.add(MemberDto.fromMap(m).toDomain()));
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
  Future<Either<GuildFailure, Unit>> unbanMember(
    String guildId,
    String memberId,
  ) async {
    try {
      await _dio.delete('/guilds/$guildId/bans', data: {
        "memberId": memberId,
      });

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

  @override
  Future<Either<GuildFailure, Unit>> invalidateInviteLink(
    String guildId,
  ) async {
    try {
      await _dio.delete('/guilds/$guildId/invite');
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
  Future<Either<GuildFailure, Guild>> joinGuild(String inviteLink) async {
    try {
      final response = await _dio.post(
        '/guilds/join',
        data: {
          "link": inviteLink,
        },
      );

      final result = jsonDecode(response.data);
      return right(GuildDto.fromMap(result).toDomain());
    } on DioError catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    }
  }

  @override
  Future<Either<GuildFailure, Unit>> leaveGuild(String guildId) async {
    try {
      await _dio.delete('/guilds/$guildId');
      return right(unit);
    } on DioError catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const GuildFailure.unexpected());
    }
  }
}
