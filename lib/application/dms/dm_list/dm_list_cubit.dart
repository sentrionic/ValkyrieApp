import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/domain/dms/dm_failure.dart';
import 'package:valkyrie_app/domain/dms/i_dm_repository.dart';

part 'dm_list_state.dart';
part 'dm_list_cubit.freezed.dart';

@injectable
class DMListCubit extends Cubit<DMListState> {
  final IDMRepository _repository;

  DMListCubit(this._repository) : super(const DMListState.initial());

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

  DMChannel? getCurrentDM(String channelId) {
    return state.maybeWhen(
      loadSuccess: (dms) => dms.where((d) => d.id == channelId).firstOrNull,
      orElse: () => null,
    );
  }

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

  void removeDM(String channelId) {
    state.maybeWhen(
      loadSuccess: (dms) async {
        final data = dms.where((d) => d.id != channelId).toList();
        emit(DMListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  void pushToTop(String channelId) {
    state.maybeWhen(
      loadSuccess: (dms) async {
        final dm = dms.firstWhere((d) => d.id == channelId);
        final data = dms.where((d) => d.id != channelId).toList();
        emit(DMListState.loadSuccess([dm, ...data]));
      },
      orElse: () {},
    );
  }
}
