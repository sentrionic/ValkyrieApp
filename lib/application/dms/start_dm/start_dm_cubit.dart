import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/domain/dms/dm_failure.dart';
import 'package:valkyrie_app/domain/dms/i_dm_repository.dart';

part 'start_dm_state.dart';
part 'start_dm_cubit.freezed.dart';

/// StartDMCubit handles the creation or retrieval of [DMChannel]s.
@injectable
class StartDMCubit extends Cubit<StartDMState> {
  final IDMRepository _repository;
  StartDMCubit(this._repository) : super(const StartDMState.initial());

  /// Creates or retrieves an already existing [DMChannel] for the given userId.
  /// Emits the [DMChannel] if successful and [DMChannelFailure] otherwise.
  Future<void> getOrCreateDM(String userId) async {
    emit(const StartDMState.fetchInProgress());
    final failureOrDM = await _repository.getOrCreateDirectMessage(userId);
    emit(
      failureOrDM.fold(
        (f) => StartDMState.fetchFailure(f),
        (channel) => StartDMState.fetchSuccess(channel),
      ),
    );
  }
}
