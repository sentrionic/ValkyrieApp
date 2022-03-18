import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

part 'leave_guild_state.dart';
part 'leave_guild_cubit.freezed.dart';

/// LeaveGuildCubit manages leaving a guild.
@injectable
class LeaveGuildCubit extends Cubit<LeaveGuildState> {
  final IGuildRepository _repository;
  LeaveGuildCubit(this._repository) : super(const LeaveGuildState.initial());

  /// Sends a network call to leave the given [Guild]
  /// Returns [Unit] if successfull, [GuildFailure] otherwise
  Future<void> leaveGuild(String guildId) async {
    emit(const LeaveGuildState.actionInProgress());
    final possibleFailure = await _repository.leaveGuild(guildId);
    emit(
      possibleFailure.fold(
        (f) => LeaveGuildState.leaveFailure(f),
        (_) => const LeaveGuildState.leaveSuccess(),
      ),
    );
  }
}
