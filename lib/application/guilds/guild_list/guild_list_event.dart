part of 'guild_list_bloc.dart';

@freezed
class GuildListEvent with _$GuildListEvent {
  const factory GuildListEvent.getGuilds() = _GetGuilds;
  const factory GuildListEvent.guildsReceived(
    Either<GuildFailure, List<Guild>> failureOrGuilds,
  ) = _GuildsReceived;
}
