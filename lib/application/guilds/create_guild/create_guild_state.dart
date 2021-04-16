part of 'create_guild_cubit.dart';

@freezed
class CreateGuildState with _$CreateGuildState {
  const factory CreateGuildState({
    required GuildName name,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<GuildFailure, Guild>> guildFailureOrSuccessOption,
  }) = _CreateGuildState;

  factory CreateGuildState.initial() => CreateGuildState(
        name: GuildName(''),
        showErrorMessages: false,
        isSubmitting: false,
        guildFailureOrSuccessOption: none(),
      );
}
