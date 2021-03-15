import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

part 'guild_list_event.dart';
part 'guild_list_state.dart';
part 'guild_list_bloc.freezed.dart';

@injectable
class GuildListBloc extends Bloc<GuildListEvent, GuildListState> {
  final IGuildRepository _repository;
  GuildListBloc(this._repository) : super(const GuildListState.initial());

  @override
  Stream<GuildListState> mapEventToState(
    GuildListEvent event,
  ) async* {
    yield* event.map(
      getGuilds: (e) async* {
        yield const GuildListState.loadInProgress();
        final failureOrGuilds = await _repository.getUserGuilds();
        add(GuildListEvent.guildsReceived(failureOrGuilds));
      },
      guildsReceived: (e) async* {
        yield e.failureOrGuilds.fold(
          (f) => GuildListState.loadFailure(f),
          (guilds) => GuildListState.loadSuccess(guilds),
        );
      },
    );
  }
}
