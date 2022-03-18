import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/domain/dms/dm_failure.dart';
import 'package:valkyrie_app/domain/dms/i_dm_repository.dart';

import 'package:valkyrie_app/infrastructure/dms/dm_channel_dto.dart';

@LazySingleton(as: IDMRepository)
class DMRepository extends IDMRepository {
  final Dio _dio;

  DMRepository(this._dio);

  @override
  Future<Either<DMChannelFailure, List<DMChannel>>> getUserDMs() async {
    try {
      final response = await _dio.get('/channels/me/dm');

      final results = jsonDecode(response.data);
      final List<DMChannel> list = [];
      results.forEach((c) => list.add(DMChannelDto.fromMap(c).toDomain()));
      return right(list);
    } on DioError catch (err) {
      print(err);
      return left(const DMChannelFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const DMChannelFailure.unexpected());
    }
  }

  @override
  Future<Either<DMChannelFailure, DMChannel>> getOrCreateDirectMessage(
    String userId,
  ) async {
    try {
      final response = await _dio.post('/channels/$userId/dm');
      final results = jsonDecode(response.data);
      final channel = DMChannelDto.fromMap(results).toDomain();
      return right(channel);
    } on DioError catch (err) {
      print(err);
      if (err.response?.statusCode == 404) {
        return left(const DMChannelFailure.notFound());
      }
      return left(const DMChannelFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const DMChannelFailure.unexpected());
    }
  }

  @override
  Future<Either<DMChannelFailure, Unit>> closeDM(String channelId) async {
    try {
      await _dio.delete('/channels/$channelId/dm');
      return right(unit);
    } on DioError catch (err) {
      print(err);
      return left(const DMChannelFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const DMChannelFailure.unexpected());
    }
  }
}
