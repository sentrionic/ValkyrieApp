import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

part 'invalidate_invites_state.dart';
part 'invalidate_invites_cubit.freezed.dart';

/// InvalidateInvitesCubit deletes all permanent invites of a guild.
@injectable
class InvalidateInvitesCubit extends Cubit<InvalidateInvitesState> {
  final IGuildRepository _repository;
  InvalidateInvitesCubit(this._repository)
      : super(const InvalidateInvitesState.initial());

  /// Deletes all permanent invites of the given guild
  Future<void> invalidateInvites(String guildId) async {
    emit(const InvalidateInvitesState.actionInProgress());
    final possibleFailure = await _repository.invalidateInviteLink(guildId);
    emit(
      possibleFailure.fold(
        (f) => InvalidateInvitesState.deleteFailure(f),
        (_) => const InvalidateInvitesState.deleteSuccess(),
      ),
    );
  }
}
