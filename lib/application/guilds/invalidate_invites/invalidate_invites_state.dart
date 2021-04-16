part of 'invalidate_invites_cubit.dart';

@freezed
class InvalidateInvitesState with _$InvalidateInvitesState {
  const factory InvalidateInvitesState.initial() = _Initial;
  const factory InvalidateInvitesState.actionInProgress() = _ActionInProgress;
  const factory InvalidateInvitesState.deleteFailure(GuildFailure failure) =
      _DeleteFailure;
  const factory InvalidateInvitesState.deleteSuccess() = _DeleteSuccess;
}
