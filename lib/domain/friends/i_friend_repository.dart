import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';

abstract class IFriendRepository {
  Future<Either<FriendFailure, List<Friend>>> getFriends();
  Future<Either<FriendFailure, Unit>> sendFriendRequest(String userId);
  Future<Either<FriendFailure, Unit>> removeFriend(String userId);
}
