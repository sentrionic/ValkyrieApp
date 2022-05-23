import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';
import 'package:valkyrie_app/domain/member/member.dart';

part 'edit_channel_cubit.freezed.dart';
part 'edit_channel_state.dart';

/// EditGuildCubit manages the editing of channels
@injectable
class EditChannelCubit extends Cubit<EditChannelState> {
  final IChannelRepository _repository;
  EditChannelCubit(this._repository) : super(EditChannelState.initial());

  /// Sets the initial [ChannelName, isPublic] values of the to be edited channel in the [EditChannelState].
  Future<void> initialize(Channel channel) async {
    emit(
      state.copyWith(
        name: ChannelName(channel.name.getOrCrash()),
        isPublic: channel.isPublic,
        channelFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Changes the value of the [ChannelName] in the [EditChannelState]
  /// and resets the error.
  Future<void> nameChanged(String name) async {
    emit(
      state.copyWith(
        name: ChannelName(name),
        channelFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Changes the value of [isPublic] in the [EditChannelState]
  /// and resets the error.
  Future<void> isPublicChanged({required bool isPublic}) async {
    emit(
      state.copyWith(
        isPublic: isPublic,
        channelFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Adds a new member to the [members] list in the [EditChannelState]
  /// and resets the error.
  Future<void> addMember(Member member) async {
    emit(
      state.copyWith(
        members:
            state.members.where((e) => e.id == member.id).firstOrNull != null
                ? [...state.members]
                : [...state.members, member],
        channelFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Removes the member from the [members] list in the [EditChannelState]
  /// and resets the error.
  Future<void> removeMember(String id) async {
    emit(
      state.copyWith(
        members: state.members.where((c) => c.id != id).toList(),
        channelFailureOrSuccessOption: none(),
      ),
    );
  }

  /// Updates the provided [Channel] in the network if the name is valid.
  /// Emits [unit] if successfull and the [ChannelFailure] error otherwise.
  Future<void> submitEditChannel(String channelId) async {
    Either<ChannelFailure, Unit>? failureOrSuccess;

    final isNameValid = state.name.isValid();

    if (isNameValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          channelFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _repository.editChannel(
        channelId,
        state.name.getOrCrash(),
        isPublic: state.isPublic,
        members: state.members.map((e) => e.id).toList(),
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        channelFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
