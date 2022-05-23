import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

part 'channel_list_cubit.freezed.dart';
part 'channel_list_state.dart';

/// ChannelListCubit manages everything related to the current [Guild]'s [Channel]s
@injectable
class ChannelListCubit extends Cubit<ChannelListState> {
  final IChannelRepository _repository;

  ChannelListCubit(this._repository) : super(const ChannelListState.initial());

  /// Returns the current guild's channels
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

  /// Returns the currently open channel if it exists
  Channel? getCurrentChannel(String channelId) {
    return state.maybeWhen(
      loadSuccess: (channels) =>
          channels.where((c) => c.id == channelId).firstOrNull,
      orElse: () => null,
    );
  }

  /// Adds the given channel to the [ChannelListState]
  void addNewChannel(Channel channel) {
    state.maybeWhen(
      loadSuccess: (channels) async {
        final data = [...channels, channel];

        emit(ChannelListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  /// Removes the channel for the given id from the [ChannelListState]
  void removeChannel(String channelId) {
    state.maybeWhen(
      loadSuccess: (channels) async {
        final data = channels.where((c) => c.id != channelId).toList();
        emit(ChannelListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  /// Replaces the [ChannelName] and [isPublic] property in the [ChannelListState] with the
  /// values from the provided channel
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

  /// Sets [hasNotification] to true for the given channel
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

  /// Sets [hasNotification] to false for the given channel
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
