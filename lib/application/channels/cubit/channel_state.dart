part of 'channel_cubit.dart';

@freezed
class ChannelState with _$ChannelState {
  const factory ChannelState.initial() = _Initial;
  const factory ChannelState.loadInProgress() = _LoadInProgress;
  const factory ChannelState.loadSuccess(List<Channel> channels) = _LoadSuccess;
  const factory ChannelState.loadFailure(ChannelFailure channelFailure) =
      _LoadFailure;
}
