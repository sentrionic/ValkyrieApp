part of 'edit_guild_cubit.dart';

@freezed
class EditGuildState with _$EditGuildState {
  const factory EditGuildState({
    required GuildName name,
    @Default(null) File? icon,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<GuildFailure, Unit>> guildFailureOrSuccessOption,
  }) = _EditGuildState;

  factory EditGuildState.initial() => EditGuildState(
        name: GuildName(''),
        showErrorMessages: false,
        isSubmitting: false,
        guildFailureOrSuccessOption: none(),
      );
}
