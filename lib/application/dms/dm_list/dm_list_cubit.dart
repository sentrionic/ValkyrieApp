import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/domain/dms/dm_failure.dart';
import 'package:valkyrie_app/domain/dms/i_dm_repository.dart';

part 'dm_list_state.dart';
part 'dm_list_cubit.freezed.dart';

/// DMListCubit manages everything related to the user's [DMChannel]'s
@injectable
class DMListCubit extends Cubit<DMListState> {
  final IDMRepository _repository;

  DMListCubit(this._repository) : super(const DMListState.initial());

  /// Returns the current user's DMs
  Future<void> getUserDMs() async {
    emit(const DMListState.loadInProgress());
    final failureOrChannels = await _repository.getUserDMs();
    emit(
      failureOrChannels.fold(
        (f) => DMListState.loadFailure(f),
        (dms) => DMListState.loadSuccess(dms),
      ),
    );
  }

  /// Returns the currently open dm if it exists
  DMChannel? getCurrentDM(String channelId) {
    return state.maybeWhen(
      loadSuccess: (dms) => dms.where((d) => d.id == channelId).firstOrNull,
      orElse: () => null,
    );
  }

  /// Adds the given channel to the [DMListState]
  void addNewDM(DMChannel channel) {
    state.maybeWhen(
      loadSuccess: (dms) async {
        if (dms.where((e) => e.id == channel.id).firstOrNull == null) {
          final data = [channel, ...dms];
          emit(DMListState.loadSuccess(data));
        } else {
          pushToTop(channel.id);
        }
      },
      orElse: () {},
    );
  }

  /// Adds the channel for the given id from the [DMListState]
  void removeDM(String channelId) {
    state.maybeWhen(
      loadSuccess: (dms) async {
        final data = dms.where((d) => d.id != channelId).toList();
        emit(DMListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  /// Moves the given dm to the top of the dm list
  void pushToTop(String channelId) {
    state.maybeWhen(
      loadSuccess: (dms) async {
        final dm = dms.where((d) => d.id == channelId).firstOrNull;

        if (dm != null) {
          final data = dms.where((d) => d.id != channelId).toList();
          emit(DMListState.loadSuccess([dm, ...data]));
        }
      },
      orElse: () {},
    );
  }
}
