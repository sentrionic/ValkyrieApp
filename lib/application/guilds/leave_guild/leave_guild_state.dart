part of 'leave_guild_cubit.dart';

@freezed
class LeaveGuildState with _$LeaveGuildState {
  const factory LeaveGuildState.initial() = _Initial;
  const factory LeaveGuildState.actionInProgress() = _ActionInProgress;
  const factory LeaveGuildState.leaveFailure(GuildFailure failure) =
      _LeaveFailure;
  const factory LeaveGuildState.leaveSuccess() = _LeaveSuccess;
}
