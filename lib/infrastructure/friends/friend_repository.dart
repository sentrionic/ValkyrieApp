import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';
import 'package:valkyrie_app/infrastructure/friends/friend_dto.dart';

@LazySingleton(as: IFriendRepository)
class FriendRepository extends IFriendRepository {
  final Dio _dio;

  FriendRepository(this._dio);

  @override
  Future<Either<FriendFailure, List<Friend>>> getFriends() async {
    try {
      final response = await _dio.get('/account/me/friends');

      if (response.statusCode == 200) {
        final results = jsonDecode(response.data);
        final List<Friend> list = [];
        results.forEach((f) => list.add(FriendDto.fromMap(f).toDomain()));
        return right(list);
      }
      return left(const FriendFailure.unexpected());
    } on DioError catch (err) {
      print(err);
      return left(const FriendFailure.unexpected());
    } on SocketException catch (err) {
      print(err);
      return left(const FriendFailure.unexpected());
    }
  }
}
