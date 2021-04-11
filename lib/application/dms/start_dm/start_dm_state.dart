part of 'start_dm_cubit.dart';

@freezed
class StartDMState with _$StartDMState {
  const factory StartDMState.initial() = _Initial;
  const factory StartDMState.fetchInProgress() = _FetchInProgress;
  const factory StartDMState.fetchSuccess(DMChannel channel) = _FetchSuccess;
  const factory StartDMState.fetchFailure(DMChannelFailure channelFailure) =
      _FetchFailure;
}
