import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';

part 'join_guild_state.dart';
part 'join_guild_cubit.freezed.dart';

/// JoinGuildCubit manages the guild joining of a user with the given invite link.
@injectable
class JoinGuildCubit extends Cubit<JoinGuildState> {
  final IGuildRepository _repository;
  JoinGuildCubit(this._repository) : super(JoinGuildState.initial());

  /// Changes the inviteLink in the [JoinGuildState]
  /// and resets the error.
  Future<void> linkChanged(String link) async {
    emit(
      state.copyWith(
        inviteLink: InviteLink(link),
        guildFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Joins the [Guild] for the given link if it's valid.
  /// Emits the joined [Guild] if successful and the error otherwise
  Future<void> submitJoinGuild() async {
    Either<GuildFailure, Guild>? failureOrSuccess;

    final isInviteValid = state.inviteLink.isValid();

    if (isInviteValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          guildFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _repository.joinGuild(
        state.inviteLink.getOrCrash(),
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        guildFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
