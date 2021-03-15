import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/domain/dms/dm_failure.dart';
import 'package:valkyrie_app/domain/dms/i_dm_repository.dart';

part 'dm_list_event.dart';
part 'dm_list_state.dart';
part 'dm_list_bloc.freezed.dart';

@injectable
class DMListBloc extends Bloc<DMListEvent, DMListState> {
  final IDMRepository _repository;

  DMListBloc(this._repository) : super(const DMListState.initial());

  @override
  Stream<DMListState> mapEventToState(
    DMListEvent event,
  ) async* {
    yield* event.map(
      getUserDMs: (e) async* {
        yield const DMListState.loadInProgress();
        final failureOrChannels = await _repository.getUserDMs();
        add(DMListEvent.dmChannelsReceived(failureOrChannels));
      },
      dmChannelsReceived: (e) async* {
        yield e.failureOrChannels.fold(
          (f) => DMListState.loadFailure(f),
          (dms) => DMListState.loadSuccess(dms),
        );
      },
    );
  }
}
