part of 'create_channel_cubit.dart';

@freezed
class CreateChannelState with _$CreateChannelState {
  const factory CreateChannelState({
    required ChannelName name,
    required bool isPublic,
    required List<Member> members,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<ChannelFailure, Channel>>
        channelFailureOrSuccessOption,
  }) = _CreateChannelState;

  factory CreateChannelState.initial() => CreateChannelState(
        name: ChannelName(''),
        isPublic: true,
        members: [],
        showErrorMessages: false,
        isSubmitting: false,
        channelFailureOrSuccessOption: none(),
      );
}
