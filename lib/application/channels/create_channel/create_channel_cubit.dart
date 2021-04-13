import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

part 'create_channel_state.dart';
part 'create_channel_cubit.freezed.dart';

@injectable
class CreateChannelCubit extends Cubit<CreateChannelState> {
  final IChannelRepository _repository;
  CreateChannelCubit(this._repository) : super(CreateChannelState.initial());

  Future<void> nameChanged(String name) async {
    emit(state.copyWith(
      name: ChannelName(name),
      channelFailureOrSuccessOption: none(),
    ));
  }

  Future<void> isPublicChanged({required bool isPublic}) async {
    emit(state.copyWith(
      isPublic: isPublic,
      channelFailureOrSuccessOption: none(),
    ));
  }

  Future<void> membersChanged(List<String> ids) async {
    emit(state.copyWith(
      members: ids,
      channelFailureOrSuccessOption: none(),
    ));
  }

  Future<void> createChannel(String guildId) async {
    Either<ChannelFailure, Unit>? failureOrSuccess;

    final isNameValid = state.name.isValid();

    if (isNameValid) {
      emit(state.copyWith(
        isSubmitting: true,
        channelFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await _repository.createChannel(
        guildId,
        state.name.getOrCrash(),
        isPublic: state.isPublic,
        members: state.members,
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      channelFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
