part of 'create_message_cubit.dart';

@freezed
class CreateMessageState with _$CreateMessageState {
  const factory CreateMessageState({
    required MessageText text,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption,
  }) = _CreateMessageState;

  factory CreateMessageState.initial() => CreateMessageState(
        text: MessageText(''),
        showErrorMessages: false,
        isSubmitting: false,
        messageFailureOrSuccessOption: none(),
      );
}
