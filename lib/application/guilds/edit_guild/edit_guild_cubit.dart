import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';

part 'edit_guild_state.dart';
part 'edit_guild_cubit.freezed.dart';

@injectable
class EditGuildCubit extends Cubit<EditGuildState> {
  final IGuildRepository _repository;
  EditGuildCubit(this._repository) : super(EditGuildState.initial());

  Future<void> initialize(Guild guild) async {
    emit(state.copyWith(
      name: GuildName(guild.name.getOrCrash()),
      iconUrl: guild.icon,
    ));
  }

  Future<void> nameChanged(String name) async {
    emit(state.copyWith(
      name: GuildName(name),
      guildFailureOrSuccessOption: none(),
    ));
  }

  Future<void> iconChanged(File image) async {
    emit(state.copyWith(
      icon: image,
      guildFailureOrSuccessOption: none(),
    ));
  }

  Future<void> removeIcon() async {
    emit(state.copyWith(
      icon: null,
      iconUrl: null,
      guildFailureOrSuccessOption: none(),
    ));
  }

  Future<void> submitEditGuild(String guildId) async {
    Either<GuildFailure, Unit>? failureOrSuccess;

    final isNameValid = state.name.isValid();

    if (isNameValid) {
      emit(state.copyWith(
        isSubmitting: true,
        guildFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await _repository.editGuild(
        guildId,
        state.name.getOrCrash(),
        state.icon,
        state.iconUrl,
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      guildFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
