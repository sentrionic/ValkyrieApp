import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

part 'channel_state.dart';
part 'channel_cubit.freezed.dart';

@injectable
class ChannelCubit extends Cubit<ChannelState> {
  final IChannelRepository _repository;

  ChannelCubit(this._repository) : super(const ChannelState.initial());

  Future<void> getGuildChannels(String guildId) async {
    emit(const ChannelState.loadInProgress());
    final failureOrChannels = await _repository.getGuildChannels(guildId);
    emit(
      failureOrChannels.fold(
        (f) => ChannelState.loadFailure(f),
        (channels) => ChannelState.loadSuccess(channels),
      ),
    );
  }

  Channel? getCurrentChannel(String channelId) {
    return state.maybeWhen(
      loadSuccess: (channels) =>
          channels.where((c) => c.id == channelId).firstOrNull,
      orElse: () => null,
    );
  }
}
