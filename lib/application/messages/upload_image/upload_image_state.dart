part of 'upload_image_cubit.dart';

@freezed
class UploadImageState with _$UploadImageState {
  const factory UploadImageState({
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<MessageFailure, Unit>> messageFailureOrSuccessOption,
  }) = _UploadImageState;

  factory UploadImageState.initial() => UploadImageState(
        showErrorMessages: false,
        isSubmitting: false,
        messageFailureOrSuccessOption: none(),
      );
}
