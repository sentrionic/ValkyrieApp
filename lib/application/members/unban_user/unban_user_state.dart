part of 'unban_user_cubit.dart';

@freezed
class UnbanUserState with _$UnbanUserState {
  const factory UnbanUserState.initial() = _Initial;
  const factory UnbanUserState.actionInProgress() = _ActionInProgress;
  const factory UnbanUserState.unbanFailure(MemberFailure failure) =
      _UnbanFailure;
  const factory UnbanUserState.unbanSuccess(String memberId) = _UnbanSuccess;
}
