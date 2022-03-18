import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/dms/dm_failure.dart';
import 'package:valkyrie_app/domain/dms/i_dm_repository.dart';

part 'close_dm_state.dart';
part 'close_dm_cubit.freezed.dart';

/// CloseDMCubit handles closing [DMChannel]s
@injectable
class CloseDMCubit extends Cubit<CloseDMState> {
  final IDMRepository _repository;
  CloseDMCubit(this._repository) : super(const CloseDMState.initial());

  /// Closes the given channel on the user's side
  /// Emits [unit] if successful, [DMChannelFailure] otherwise
  Future<void> closeChannel(String id) async {
    emit(const CloseDMState.actionInProgress());
    final possibleFailure = await _repository.closeDM(id);
    emit(
      possibleFailure.fold(
        (f) => CloseDMState.closeFailure(f),
        (_) => const CloseDMState.closeSuccess(),
      ),
    );
  }
}
