part of 'join_guild_cubit.dart';

@freezed
class JoinGuildState with _$JoinGuildState {
  const factory JoinGuildState({
    required InviteLink inviteLink,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<GuildFailure, Guild>> guildFailureOrSuccessOption,
  }) = _JoinGuildState;

  factory JoinGuildState.initial() => JoinGuildState(
        inviteLink: InviteLink(''),
        showErrorMessages: false,
        isSubmitting: false,
        guildFailureOrSuccessOption: none(),
      );
}
