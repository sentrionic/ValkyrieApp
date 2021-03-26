import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

part 'guild_list_state.dart';
part 'guild_list_cubit.freezed.dart';

@injectable
class GuildListCubit extends Cubit<GuildListState> {
  final IGuildRepository _repository;
  GuildListCubit(this._repository) : super(const GuildListState.initial());

  Future<void> getGuilds() async {
    emit(const GuildListState.loadInProgress());
    final failureOrGuilds = await _repository.getUserGuilds();
    emit(
      failureOrGuilds.fold(
        (f) => GuildListState.loadFailure(f),
        (guilds) => GuildListState.loadSuccess(guilds),
      ),
    );
  }

  Guild? getCurrentGuild(String guildId) {
    return state.maybeWhen(
      loadSuccess: (guilds) => guilds.where((g) => g.id == guildId).firstOrNull,
      orElse: () => null,
    );
  }
}
