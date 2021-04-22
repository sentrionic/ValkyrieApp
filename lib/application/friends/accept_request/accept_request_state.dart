part of 'accept_request_cubit.dart';

@freezed
class AcceptRequestState with _$AcceptRequestState {
  const factory AcceptRequestState.initial() = _Initial;
  const factory AcceptRequestState.actionInProgress() = _ActionInProgress;
  const factory AcceptRequestState.actionFailure(FriendFailure friendFailure) =
      _ActionFailure;
  const factory AcceptRequestState.actionSuccess(String requestId) =
      _ActionSuccess;
}
