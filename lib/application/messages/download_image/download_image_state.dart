part of 'download_image_cubit.dart';

@freezed
class DownloadImageState with _$DownloadImageState {
  const factory DownloadImageState({
    required bool showErrorMessages,
    required bool isDownloading,
    required int progress,
    required Option<Either<MessageFailure, Unit>>
        downloadFailureOrSuccessOption,
  }) = _DownloadImageState;

  factory DownloadImageState.initial() => DownloadImageState(
        showErrorMessages: false,
        isDownloading: false,
        progress: 0,
        downloadFailureOrSuccessOption: none(),
      );
}
