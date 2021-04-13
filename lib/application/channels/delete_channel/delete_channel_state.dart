part of 'delete_channel_cubit.dart';

@freezed
class DeleteChannelState with _$DeleteChannelState {
  const factory DeleteChannelState.initial() = _Initial;
  const factory DeleteChannelState.actionInProgress() = _ActionInProgress;
  const factory DeleteChannelState.deleteFailure(ChannelFailure failure) =
      _DeleteFailure;
  const factory DeleteChannelState.deleteSuccess() = _DeleteSuccess;
}
