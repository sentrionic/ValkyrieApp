import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
import 'package:valkyrie_app/infrastructure/core/field_error.dart';
import 'package:valkyrie_app/infrastructure/guilds/guild_dto.dart';

@LazySingleton(as: IGuildRepository)
class GuildRepository extends IGuildRepository {
  final Dio _dio;

  GuildRepository(this._dio);

  @override
  Future<Either<GuildFailure, List<Guild>>> getUserGuilds() async {
    try {
      final response = await _dio.get('/guilds');

      final results = jsonDecode(response.data);
      final List<Guild> list = [];
      results.forEach((g) => list.add(GuildDto.fromMap(g).toDomain()));
      return right(list);
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
      if (err.response?.statusCode == 400) {
        final result = Map<String, dynamic>.from(
          jsonDecode(err.response!.toString()),
        );

        if (result["errors"] != null) {
          final list = List<Map<String, dynamic>>.from(result["errors"]);
          final errors = list.map((e) => FieldError.fromMap(e)).toList();
          if (errors.isNotEmpty) {
            return left(GuildFailure.badRequest(errors[0].message));
          }
        }

        if (result["error"] != null) {
          final error = Map<String, dynamic>.from(result["error"]);
          final fieldError = FieldError.fromMap(error);
          return left(GuildFailure.badRequest(fieldError.message));
        }
      }
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
    String? url,
  ) async {
    try {
      final formData = FormData.fromMap({
        "name": name,
      });

      // User uploaded a new icon
      if (icon != null) {
        formData.files.add(
          MapEntry(
            "image",
            await MultipartFile.fromFile(
              icon.path,
              contentType: MediaType("image", "jpeg"),
            ),
          ),
        );
      } else if (url != null) {
        // Keep the old icon
        formData.fields.add(
          MapEntry("icon", url),
        );
      }

      await _dio.put('/guilds/$guildId', data: formData);
      return right(unit);
    } on DioError catch (err) {
      print(err);
      if (err.response?.statusCode == 400) {
        final errors = FieldError.getErrors(err.response!);
        if (errors.isNotEmpty) {
          return left(GuildFailure.badRequest(errors[0].message));
        }
      }
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
      if (err.response?.statusCode == 400) {
        final error = FieldError.getError(err.response!);
        return left(GuildFailure.badRequest(error.message));
      }
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
