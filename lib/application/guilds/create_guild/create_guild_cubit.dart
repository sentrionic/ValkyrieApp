import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';

part 'create_guild_state.dart';
part 'create_guild_cubit.freezed.dart';

@injectable
class CreateGuildCubit extends Cubit<CreateGuildState> {
  final IGuildRepository _repository;
  CreateGuildCubit(this._repository) : super(CreateGuildState.initial());

  Future<void> nameChanged(String name) async {
    emit(state.copyWith(
      name: GuildName(name),
      guildFailureOrSuccessOption: none(),
    ));
  }

  Future<void> submitCreateGuild() async {
    Either<GuildFailure, Guild>? failureOrSuccess;

    final isNameValid = state.name.isValid();

    if (isNameValid) {
      emit(state.copyWith(
        isSubmitting: true,
        guildFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await _repository.createGuild(
        state.name.getOrCrash(),
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      guildFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
