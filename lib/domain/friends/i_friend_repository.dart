import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/friend_request.dart';

abstract class IFriendRepository {
  Future<Either<FriendFailure, List<Friend>>> getFriends();

  Future<Either<FriendFailure, Unit>> sendFriendRequest(String userId);

  Future<Either<FriendFailure, List<FriendRequest>>> getPendingRequests();

  Future<Either<FriendFailure, Unit>> removeFriend(String userId);

  Future<Either<FriendFailure, Unit>> acceptRequest(String userId);

  Future<Either<FriendFailure, Unit>> declineRequest(String userId);
}
