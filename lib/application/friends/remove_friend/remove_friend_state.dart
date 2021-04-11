part of 'remove_friend_cubit.dart';

@freezed
class RemoveFriendState with _$RemoveFriendState {
  const factory RemoveFriendState.initial() = _Initial;
  const factory RemoveFriendState.actionInProgress() = _ActionInProgress;
  const factory RemoveFriendState.actionFailure(FriendFailure friendFailure) =
      _ActionFailure;
  const factory RemoveFriendState.actionSuccess() = _ActionSuccess;
}
