part of 'channel_list_cubit.dart';

@freezed
class ChannelListState with _$ChannelListState {
  const factory ChannelListState.initial() = _Initial;
  const factory ChannelListState.loadInProgress() = _LoadInProgress;
  const factory ChannelListState.loadSuccess(List<Channel> channels) =
      _LoadSuccess;
  const factory ChannelListState.loadFailure(ChannelFailure channelFailure) =
      _LoadFailure;
}
