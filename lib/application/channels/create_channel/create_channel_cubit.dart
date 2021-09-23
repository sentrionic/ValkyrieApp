import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';
import 'package:valkyrie_app/domain/member/member.dart';

part 'create_channel_state.dart';
part 'create_channel_cubit.freezed.dart';

@injectable
class CreateChannelCubit extends Cubit<CreateChannelState> {
  final IChannelRepository _repository;
  CreateChannelCubit(this._repository) : super(CreateChannelState.initial());

  Future<void> nameChanged(String name) async {
    emit(
      state.copyWith(
        name: ChannelName(name),
        channelFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> isPublicChanged({required bool isPublic}) async {
    emit(
      state.copyWith(
        isPublic: isPublic,
        channelFailureOrSuccessOption: none(),
      ),
    );
  }

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

  Future<void> removeMember(String id) async {
    emit(
      state.copyWith(
        members: state.members.where((c) => c.id != id).toList(),
        channelFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> createChannel(String guildId) async {
    Either<ChannelFailure, Channel>? failureOrSuccess;

    final isNameValid = state.name.isValid();

    if (isNameValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          channelFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _repository.createChannel(
        guildId,
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
