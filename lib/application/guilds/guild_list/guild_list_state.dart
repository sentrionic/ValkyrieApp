part of 'guild_list_cubit.dart';

@freezed
class GuildListState with _$GuildListState {
  const factory GuildListState.initial() = _Initial;
  const factory GuildListState.loadInProgress() = _LoadInProgress;
  const factory GuildListState.loadSuccess(List<Guild> guilds) = _LoadSuccess;
  const factory GuildListState.loadFailure(GuildFailure guildFailure) =
      _LoadFailure;
}
