import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';

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

  int getCurrentIndex(String guildId) {
    return state.maybeWhen(
      loadSuccess: (guilds) => guilds.indexWhere((g) => g.id == guildId),
      orElse: () => -1,
    );
  }

  void addNewGuild(Guild guild) {
    state.maybeWhen(
      loadSuccess: (guilds) async {
        final data = [...guilds, guild];

        emit(GuildListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  void removeGuild(String guildId) {
    state.maybeWhen(
      loadSuccess: (guilds) async {
        final data = guilds.where((g) => g.id != guildId).toList();
        emit(GuildListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  void editGuild(Guild guild) {
    state.maybeWhen(
      loadSuccess: (guilds) async {
        final data = guilds.map((e) {
          return e.id == guild.id
              ? e.copyWith(
                  name: GuildName(guild.name.getOrCrash()),
                  icon: guild.icon,
                )
              : e;
        }).toList();
        emit(GuildListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  void addNotification(String guildId) {
    state.maybeWhen(
      loadSuccess: (guilds) async {
        final data = guilds.map((e) {
          return e.id == guildId
              ? e.copyWith(
                  hasNotification: true,
                )
              : e;
        }).toList();
        emit(GuildListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  void clearNotification(String guildId) {
    state.maybeWhen(
      loadSuccess: (guilds) async {
        final data = guilds.map((e) {
          return e.id == guildId
              ? e.copyWith(
                  hasNotification: false,
                )
              : e;
        }).toList();
        emit(GuildListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }
}
