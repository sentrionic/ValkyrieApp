part of 'get_friends_cubit.dart';

@freezed
class GetFriendsState with _$GetFriendsState {
  const factory GetFriendsState.initial() = _Initial;
  const factory GetFriendsState.loadInProgress() = _LoadInProgress;
  const factory GetFriendsState.loadSuccess(List<Friend> friends) =
      _LoadSuccess;
  const factory GetFriendsState.loadFailure(FriendFailure failure) =
      _LoadFailure;
}
