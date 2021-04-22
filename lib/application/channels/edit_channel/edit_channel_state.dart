part of 'edit_channel_cubit.dart';

@freezed
class EditChannelState with _$EditChannelState {
  const factory EditChannelState({
    required ChannelName name,
    required bool isPublic,
    required List<Member> members,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<ChannelFailure, Unit>> channelFailureOrSuccessOption,
  }) = _EditChannelState;

  factory EditChannelState.initial() => EditChannelState(
        name: ChannelName(''),
        isPublic: true,
        members: [],
        showErrorMessages: false,
        isSubmitting: false,
        channelFailureOrSuccessOption: none(),
      );
}
