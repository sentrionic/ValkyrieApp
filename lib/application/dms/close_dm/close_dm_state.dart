part of 'close_dm_cubit.dart';

@freezed
class CloseDMState with _$CloseDMState {
  const factory CloseDMState.initial() = _Initial;
  const factory CloseDMState.actionInProgress() = _ActionInProgress;
  const factory CloseDMState.closeFailure(
    DMChannelFailure failure,
  ) = _CloseFailure;
  const factory CloseDMState.closeSuccess() = _CloseSuccess;
}
