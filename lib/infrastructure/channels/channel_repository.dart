import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';
import 'package:valkyrie_app/infrastructure/channels/channel_dto.dart';
import 'package:valkyrie_app/infrastructure/core/field_error.dart';

@LazySingleton(as: IChannelRepository)
class ChannelRepository extends IChannelRepository {
  final Dio _dio;

  ChannelRepository(this._dio);

  @override
  Future<Either<ChannelFailure, List<Channel>>> getGuildChannels(
    String guildId,
  ) async {
    try {
      final response = await _dio.get('/channels/$guildId');

      final results = jsonDecode(response.data);
      final List<Channel> list = [];
      results.forEach((c) => list.add(ChannelDto.fromMap(c).toDomain()));
      return right(list);
    } on DioError catch (err) {
      print(err);
      if (err.response?.statusCode == 404) {
        return left(const ChannelFailure.notFound());
      }
      return left(const ChannelFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const ChannelFailure.unexpected());
    }
  }

  @override
  Future<Either<ChannelFailure, Channel>> createChannel(
    String guildId,
    String name, {
    bool isPublic = true,
    List<String> members = const [],
  }) async {
    try {
      final response = await _dio.post(
        '/channels/$guildId',
        data: {
          "name": name,
          "isPublic": isPublic,
          "members": members,
        },
      );
      final result = jsonDecode(response.data);
      return right(ChannelDto.fromMap(result).toDomain());
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
            return left(ChannelFailure.badRequest(errors[0].message));
          }
        }

        if (result["error"] != null) {
          final error = Map<String, dynamic>.from(result["error"]);
          final fieldError = FieldError.fromMap(error);
          return left(ChannelFailure.badRequest(fieldError.message));
        }
      }
      return left(const ChannelFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const ChannelFailure.unexpected());
    }
  }

  @override
  Future<Either<ChannelFailure, Unit>> editChannel(
    String channelId,
    String name, {
    bool isPublic = true,
    List<String> members = const [],
  }) async {
    try {
      await _dio.put(
        '/channels/$channelId',
        data: {
          "name": name,
          "isPublic": isPublic,
          "members": members,
        },
      );

      return right(unit);
    } on DioError catch (err) {
      print(err);
      if (err.response?.statusCode == 400) {
        final errors = FieldError.getErrors(err.response!);
        if (errors.isNotEmpty) {
          return left(ChannelFailure.badRequest(errors[0].message));
        }
      }
      return left(const ChannelFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const ChannelFailure.unexpected());
    }
  }

  @override
  Future<Either<ChannelFailure, Unit>> deleteChannel(
    String channelId,
  ) async {
    try {
      await _dio.delete(
        '/channels/$channelId',
      );

      return right(unit);
    } on DioError catch (err) {
      print(err);
      if (err.response?.statusCode == 400) {
        final error = FieldError.getError(err.response!);
        return left(ChannelFailure.badRequest(error.message));
      }
      return left(const ChannelFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const ChannelFailure.unexpected());
    }
  }

  @override
  Future<Either<ChannelFailure, List<String>>> getPrivateChannelMembers(
    String channelId,
  ) async {
    try {
      final response = await _dio.get(
        '/channels/$channelId/members',
      );

      final results = jsonDecode(response.data);
      final List<String> list = [];
      results.forEach((m) => list.add(m));
      return right(list);
    } on DioError catch (err) {
      print(err);
      return left(const ChannelFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const ChannelFailure.unexpected());
    }
  }
}
