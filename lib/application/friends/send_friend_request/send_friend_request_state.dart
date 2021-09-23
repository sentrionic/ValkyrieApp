part of 'send_friend_request_cubit.dart';

@freezed
class SendFriendRequestState with _$SendFriendRequestState {
  const factory SendFriendRequestState.initial() = _Initial;
  const factory SendFriendRequestState.actionInProgress() = _ActionInProgress;
  const factory SendFriendRequestState.actionFailure(
    FriendFailure friendFailure,
  ) = _ActionFailure;
  const factory SendFriendRequestState.actionSuccess() = _ActionSuccess;
}
