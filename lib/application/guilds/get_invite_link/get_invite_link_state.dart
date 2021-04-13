part of 'get_invite_link_cubit.dart';

@freezed
class GetInviteLinkState with _$GetInviteLinkState {
  const factory GetInviteLinkState.initial() = _Initial;
  const factory GetInviteLinkState.fetchInProgress() = _FetchInProgress;
  const factory GetInviteLinkState.fetchSuccess(String inviteLink) =
      _FetchSuccess;
  const factory GetInviteLinkState.fetchFailure(GuildFailure failure) =
      _FetchFailure;
}
