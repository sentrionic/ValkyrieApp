import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

part 'delete_guild_state.dart';
part 'delete_guild_cubit.freezed.dart';

@injectable
class DeleteGuildCubit extends Cubit<DeleteGuildState> {
  final IGuildRepository _repository;
  DeleteGuildCubit(this._repository) : super(const DeleteGuildState.initial());

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
