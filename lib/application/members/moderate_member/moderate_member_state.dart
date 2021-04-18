part of 'moderate_member_cubit.dart';

@freezed
class ModerateMemberState with _$ModerateMemberState {
  const factory ModerateMemberState.initial() = _Initial;
  const factory ModerateMemberState.actionInProgress() = _ActionInProgress;
  const factory ModerateMemberState.actionFailure(MemberFailure actionFailure) =
      _ActionFailure;
  const factory ModerateMemberState.actionSuccess() = _ActionSuccess;
}
