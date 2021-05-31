import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/channel_value_objects.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';
import 'package:valkyrie_app/domain/member/member.dart';

part 'edit_channel_state.dart';
part 'edit_channel_cubit.freezed.dart';

@injectable
class EditChannelCubit extends Cubit<EditChannelState> {
  final IChannelRepository _repository;
  EditChannelCubit(this._repository) : super(EditChannelState.initial());

  Future<void> initialize(Channel channel) async {
    emit(state.copyWith(
      name: ChannelName(channel.name.getOrCrash()),
      isPublic: channel.isPublic,
      channelFailureOrSuccessOption: none(),
    ));
  }

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

  Future<void> addMember(Member member) async {
    emit(state.copyWith(
      members: state.members.where((e) => e.id == member.id).firstOrNull != null
          ? [...state.members]
          : [...state.members, member],
      channelFailureOrSuccessOption: none(),
    ));
  }

  Future<void> removeMember(String id) async {
    emit(state.copyWith(
      members: state.members.where((c) => c.id != id).toList(),
      channelFailureOrSuccessOption: none(),
    ));
  }

  Future<void> submitEditChannel(String channelId) async {
    Either<ChannelFailure, Unit>? failureOrSuccess;

    final isNameValid = state.name.isValid();

    if (isNameValid) {
      emit(state.copyWith(
        isSubmitting: true,
        channelFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await _repository.editChannel(
        channelId,
        state.name.getOrCrash(),
        isPublic: state.isPublic,
        members: state.members.map((e) => e.id).toList(),
      );
    }

    emit(state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      channelFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
