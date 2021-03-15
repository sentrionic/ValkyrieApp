import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
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
}
