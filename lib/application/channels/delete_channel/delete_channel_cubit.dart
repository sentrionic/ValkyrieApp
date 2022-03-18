import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

part 'delete_channel_state.dart';
part 'delete_channel_cubit.freezed.dart';

/// DeleteChannelCubit manages the deletion of channels
@injectable
class DeleteChannelCubit extends Cubit<DeleteChannelState> {
  final IChannelRepository _repository;

  DeleteChannelCubit(this._repository)
      : super(const DeleteChannelState.initial());

  /// Deletes the channel in the network and returns either [unit] success or [ChannelFailure].
  Future<void> deleteChannel(String channelId) async {
    emit(const DeleteChannelState.actionInProgress());
    final possibleFailure = await _repository.deleteChannel(channelId);
    emit(
      possibleFailure.fold(
        (f) => DeleteChannelState.deleteFailure(f),
        (_) => const DeleteChannelState.deleteSuccess(),
      ),
    );
  }
}
