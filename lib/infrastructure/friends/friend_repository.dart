import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/friend_request.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';
import 'package:valkyrie_app/infrastructure/core/field_error.dart';
import 'package:valkyrie_app/infrastructure/friends/friend_dto.dart';
import 'package:valkyrie_app/infrastructure/friends/friend_request_dto.dart';

@LazySingleton(as: IFriendRepository)
class FriendRepository extends IFriendRepository {
  final Dio _dio;

  FriendRepository(this._dio);

  @override
  Future<Either<FriendFailure, List<Friend>>> getFriends() async {
    try {
      final response = await _dio.get('/account/me/friends');

      final results = jsonDecode(response.data);
      final List<Friend> list = [];
      results.forEach((f) => list.add(FriendDto.fromMap(f).toDomain()));
      return right(list);
    } on DioError catch (err) {
      print(err);
      return left(const FriendFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const FriendFailure.unexpected());
    }
  }

  @override
  Future<Either<FriendFailure, Unit>> sendFriendRequest(String userId) async {
    try {
      await _dio.post('/account/$userId/friend');
      return right(unit);
    } on DioError catch (err) {
      print(err);
      if (err.response?.statusCode == 400) {
        final error = FieldError.getError(err.response!);
        return left(FriendFailure.badRequest(error.message));
      }
      if (err.response?.statusCode == 404) {
        return left(
          const FriendFailure.badRequest("No user with that ID found"),
        );
      }
      return left(const FriendFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const FriendFailure.unexpected());
    }
  }

  @override
  Future<Either<FriendFailure, Unit>> removeFriend(String userId) async {
    try {
      await _dio.delete('/account/$userId/friend');
      return right(unit);
    } on DioError catch (err) {
      print(err);
      if (err.response?.statusCode == 400) {
        final error = FieldError.getError(err.response!);
        return left(FriendFailure.badRequest(error.message));
      }
      return left(const FriendFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const FriendFailure.unexpected());
    }
  }

  @override
  Future<Either<FriendFailure, Unit>> acceptRequest(String userId) async {
    try {
      await _dio.post('/account/$userId/friend/accept');
      return right(unit);
    } on DioError catch (err) {
      print(err);
      if (err.response?.statusCode == 400) {
        final error = FieldError.getError(err.response!);
        return left(FriendFailure.badRequest(error.message));
      }
      return left(const FriendFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const FriendFailure.unexpected());
    }
  }

  @override
  Future<Either<FriendFailure, Unit>> declineRequest(String userId) async {
    try {
      await _dio.post('/account/$userId/friend/cancel');
      return right(unit);
    } on DioError catch (err) {
      print(err);
      if (err.response?.statusCode == 400) {
        final error = FieldError.getError(err.response!);
        return left(FriendFailure.badRequest(error.message));
      }
      return left(const FriendFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const FriendFailure.unexpected());
    }
  }

  @override
  Future<Either<FriendFailure, List<FriendRequest>>>
      getPendingRequests() async {
    try {
      final response = await _dio.get('/account/me/pending');

      final results = jsonDecode(response.data);
      final List<FriendRequest> list = [];
      results.forEach((f) => list.add(FriendRequestDto.fromMap(f).toDomain()));
      return right(list);
    } on DioError catch (err) {
      print(err);
      return left(const FriendFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const FriendFailure.unexpected());
    }
  }
}
