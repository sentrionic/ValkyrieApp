part of 'get_private_channel_members_cubit.dart';

@freezed
class GetPrivateChannelMembersState with _$GetPrivateChannelMembersState {
  const factory GetPrivateChannelMembersState.initial() = _Initial;
  const factory GetPrivateChannelMembersState.fetchInProgress() =
      _FetchInProgress;
  const factory GetPrivateChannelMembersState.fetchSuccess(
    List<String> memberIds,
  ) = _FetchSuccess;
  const factory GetPrivateChannelMembersState.fetchFailure(
    ChannelFailure failure,
  ) = _FetchFailure;
}
