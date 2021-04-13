import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

import 'channel_dto.dart';

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

      if (response.statusCode == 200) {
        final results = jsonDecode(response.data);
        final List<Channel> list = [];
        results.forEach((c) => list.add(ChannelDto.fromMap(c).toDomain()));
        return right(list);
      }
      return left(const ChannelFailure.unexpected());
    } on DioError catch (err) {
      print(err);
      return left(const ChannelFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const ChannelFailure.unexpected());
    }
  }

  @override
  Future<Either<ChannelFailure, Unit>> createChannel(
    String guildId,
    String name, {
    bool isPublic = true,
    List<String> members = const [],
  }) async {
    try {
      await _dio.post(
        '/channels/$guildId',
        data: {
          "name": name,
          "isPublic": isPublic,
          "members": members,
        },
      );

      return right(unit);
    } on DioError catch (err) {
      print(err);
      return left(const ChannelFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const ChannelFailure.unexpected());
    }
  }

  @override
  Future<Either<ChannelFailure, Unit>> editChannel(
    String guildId,
    String channelId,
    String name, {
    bool isPublic = true,
    List<String> members = const [],
  }) async {
    try {
      await _dio.put(
        '/channels/$guildId/$channelId',
        data: {
          "name": name,
          "isPublic": isPublic,
          "members": members,
        },
      );

      return right(unit);
    } on DioError catch (err) {
      print(err);
      return left(const ChannelFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const ChannelFailure.unexpected());
    }
  }

  @override
  Future<Either<ChannelFailure, Unit>> deleteChannel(
    String guildId,
    String channelId,
  ) async {
    try {
      await _dio.delete(
        '/channels/$channelId',
      );

      return right(unit);
    } on DioError catch (err) {
      print(err);
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
