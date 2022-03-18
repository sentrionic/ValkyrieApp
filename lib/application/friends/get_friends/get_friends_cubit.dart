import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

part 'get_friends_state.dart';
part 'get_friends_cubit.freezed.dart';

/// GetFriendsCubit manages everything related to the current user's [Friend]s
@injectable
class GetFriendsCubit extends Cubit<GetFriendsState> {
  final IFriendRepository _repository;
  GetFriendsCubit(this._repository) : super(const GetFriendsState.initial());

  /// Fetches the user's friends from the network.
  /// Emits a list of [Friend]s if successful and [FriendFailure] otherwise.
  Future<void> getFriends() async {
    emit(const GetFriendsState.loadInProgress());
    final failureOrFriends = await _repository.getFriends();
    emit(
      failureOrFriends.fold(
        (f) => GetFriendsState.loadFailure(f),
        (friends) => GetFriendsState.loadSuccess(friends),
      ),
    );
  }

  /// Returns a list of the user's [Friend]s that are currently online
  List<Friend> getOnlineFriends() {
    return state.maybeWhen(
      loadSuccess: (friends) => friends.where((f) => f.isOnline).toList(),
      orElse: () => [],
    );
  }

  /// Returns a list of the user's [Friend]s that are currently offline
  List<Friend> getOfflineFriends() {
    return state.maybeWhen(
      loadSuccess: (friends) => friends.where((f) => !f.isOnline).toList(),
      orElse: () => [],
    );
  }

  /// Adds the given friend to the [GetFriendsState]
  void addFriend(Friend friend) {
    state.maybeWhen(
      loadSuccess: (friends) async {
        final data = [...friends, friend];
        data.sort((a, b) => a.username.compareTo(b.username));
        emit(GetFriendsState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  /// Removes the friend for the given id from the [GetFriendsState]
  void removeFriend(String friendId) {
    state.maybeWhen(
      loadSuccess: (friends) async {
        final data = friends.where((e) => e.id != friendId).toList();
        emit(GetFriendsState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  /// Changes the online status of the friend for the given id to the given value
  void toggleOnlineStatus(String friendId, {required bool isOnline}) {
    state.maybeWhen(
      loadSuccess: (friends) async {
        final data = friends.map((e) {
          return e.id == friendId
              ? e.copyWith(
                  isOnline: isOnline,
                )
              : e;
        }).toList();
        emit(GetFriendsState.loadSuccess(data));
      },
      orElse: () {},
    );
  }
}
