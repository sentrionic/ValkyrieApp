part of 'decline_request_cubit.dart';

@freezed
class DeclineRequestState with _$DeclineRequestState {
  const factory DeclineRequestState.initial() = _Initial;
  const factory DeclineRequestState.actionInProgress() = _ActionInProgress;
  const factory DeclineRequestState.actionFailure(FriendFailure friendFailure) =
      _ActionFailure;
  const factory DeclineRequestState.actionSuccess(String requestId) =
      _ActionSuccess;
}
