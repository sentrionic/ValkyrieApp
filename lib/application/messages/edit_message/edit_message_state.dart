part of 'edit_message_cubit.dart';

@freezed
class EditMessageState with _$EditMessageState {
  const factory EditMessageState({
    required MessageText text,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<MessageFailure, Unit>> saveFailureOrSuccessOption,
  }) = _EditMessageState;

  factory EditMessageState.initial() => EditMessageState(
        text: MessageText(''),
        showErrorMessages: false,
        isSubmitting: false,
        saveFailureOrSuccessOption: none(),
      );
}
