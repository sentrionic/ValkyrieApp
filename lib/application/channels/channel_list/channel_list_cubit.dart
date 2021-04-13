import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

part 'channel_list_state.dart';
part 'channel_list_cubit.freezed.dart';

@injectable
class ChannelListCubit extends Cubit<ChannelListState> {
  final IChannelRepository _repository;

  ChannelListCubit(this._repository) : super(const ChannelListState.initial());

  Future<void> getGuildChannels(String guildId) async {
    emit(const ChannelListState.loadInProgress());
    final failureOrChannels = await _repository.getGuildChannels(guildId);
    emit(
      failureOrChannels.fold(
        (f) => ChannelListState.loadFailure(f),
        (channels) => ChannelListState.loadSuccess(channels),
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

  void addNewChannel(Channel channel) {
    state.maybeWhen(
      loadSuccess: (channels) async {
        final data = [...channels, channel];

        emit(ChannelListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  void removeChannel(String channelId) {
    state.maybeWhen(
      loadSuccess: (channels) async {
        final data = channels.where((c) => c.id != channelId).toList();
        emit(ChannelListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  void editChannel(Channel channel) {
    state.maybeWhen(
      loadSuccess: (channels) async {
        final data = channels.map((e) {
          return e.id == channel.id
              ? e.copyWith(
                  name: ChannelName(channel.name.getOrCrash()),
                  isPublic: channel.isPublic,
                )
              : e;
        }).toList();
        emit(ChannelListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  void addNotification(String channelId) {
    state.maybeWhen(
      loadSuccess: (channels) async {
        final data = channels.map((e) {
          return e.id == channelId
              ? e.copyWith(
                  hasNotification: true,
                )
              : e;
        }).toList();
        emit(ChannelListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  void clearNotification(String channelId) {
    state.maybeWhen(
      loadSuccess: (channels) async {
        final data = channels.map((e) {
          return e.id == channelId
              ? e.copyWith(
                  hasNotification: false,
                )
              : e;
        }).toList();
        emit(ChannelListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }
}
