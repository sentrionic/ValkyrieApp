import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

part 'delete_guild_state.dart';
part 'delete_guild_cubit.freezed.dart';

/// DeleteGuildCubit manages the deletion of guilds
@injectable
class DeleteGuildCubit extends Cubit<DeleteGuildState> {
  final IGuildRepository _repository;
  DeleteGuildCubit(this._repository) : super(const DeleteGuildState.initial());

  /// Deletes the guild in the network and returns either success or failure
  Future<void> deleteGuild(
    String guildId,
  ) async {
    emit(const DeleteGuildState.actionInProgress());
    final possibleFailure = await _repository.deleteGuild(guildId);
    emit(
      possibleFailure.fold(
        (f) => DeleteGuildState.deleteFailure(f),
        (_) => const DeleteGuildState.deleteSuccess(),
      ),
    );
  }
}
