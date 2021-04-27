import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/domain/friends/friend_failure.dart';
import 'package:valkyrie_app/domain/friends/i_friend_repository.dart';

part 'get_friends_state.dart';
part 'get_friends_cubit.freezed.dart';

@injectable
class GetFriendsCubit extends Cubit<GetFriendsState> {
  final IFriendRepository _repository;
  GetFriendsCubit(this._repository) : super(const GetFriendsState.initial());

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

  List<Friend> getOnlineFriends() {
    return state.maybeWhen(
      loadSuccess: (friends) => friends.where((f) => f.isOnline).toList(),
      orElse: () => [],
    );
  }

  List<Friend> getOfflineFriends() {
    return state.maybeWhen(
      loadSuccess: (friends) => friends.where((f) => !f.isOnline).toList(),
      orElse: () => [],
    );
  }

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

  void removeFriend(String friendId) {
    state.maybeWhen(
      loadSuccess: (friends) async {
        final data = friends.where((e) => e.id != friendId).toList();
        emit(GetFriendsState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

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
