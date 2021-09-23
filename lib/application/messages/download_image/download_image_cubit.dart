import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/message/message_failure.dart';

part 'download_image_state.dart';
part 'download_image_cubit.freezed.dart';

@injectable
class DownloadImageCubit extends Cubit<DownloadImageState> {
  DownloadImageCubit() : super(DownloadImageState.initial());

  Future<void> downloadImage(String url) async {
    Either<MessageFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        isDownloading: true,
        downloadFailureOrSuccessOption: none(),
      ),
    );

    final imageId = await ImageDownloader.downloadImage(url);
    ImageDownloader.callback(
      onProgressUpdate: (String? _, int progress) {
        emit(state.copyWith(progress: progress));
      },
    );

    if (imageId == null) {
      failureOrSuccess = left(const MessageFailure.unexpected());
    } else {
      failureOrSuccess = right(unit);
    }

    emit(
      state.copyWith(
        progress: 0,
        isDownloading: false,
        showErrorMessages: true,
        downloadFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}
