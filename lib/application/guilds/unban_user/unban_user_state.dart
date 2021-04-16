part of 'unban_user_cubit.dart';

@freezed
class UnbanUserState with _$UnbanUserState {
  const factory UnbanUserState.initial() = _Initial;
  const factory UnbanUserState.actionInProgress() = _ActionInProgress;
  const factory UnbanUserState.unbanFailure(GuildFailure failure) =
      _UnbanFailure;
  const factory UnbanUserState.unbanSuccess() = _UnbanSuccess;
}
