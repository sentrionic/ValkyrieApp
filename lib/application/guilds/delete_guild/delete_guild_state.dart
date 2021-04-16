part of 'delete_guild_cubit.dart';

@freezed
class DeleteGuildState with _$DeleteGuildState {
  const factory DeleteGuildState.initial() = _Initial;
  const factory DeleteGuildState.actionInProgress() = _ActionInProgress;
  const factory DeleteGuildState.deleteFailure(GuildFailure failure) =
      _DeleteFailure;
  const factory DeleteGuildState.deleteSuccess() = _DeleteSuccess;
}
