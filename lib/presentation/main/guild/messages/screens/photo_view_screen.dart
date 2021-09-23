import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';
import 'package:valkyrie_app/application/messages/download_image/download_image_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/flushbar_creator.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class PhotoViewScreen extends StatelessWidget {
  static const routeName = '/photo';
  final String url;
  final String filename;

  const PhotoViewScreen({
    Key? key,
    required this.url,
    required this.filename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DownloadImageCubit>(),
      child: _PhotoViewContent(
        url: url,
        filename: filename,
      ),
    );
  }
}

class _PhotoViewContent extends StatelessWidget {
  final String url;
  final String filename;

  const _PhotoViewContent({
    Key? key,
    required this.url,
    required this.filename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<DownloadImageCubit, DownloadImageState>(
      listener: (context, state) {
        state.downloadFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              showError(
                message: failure.maybeMap(
                  orElse: () => 'Something went wrong. Try again later.',
                ),
              ).show(context);
            },
            (_) {
              showSuccess(message: 'Download Success.').show(context);
            },
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "View embed",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              Text(
                filename,
                style: const TextStyle(color: Colors.white30, fontSize: 14.0),
              )
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.file_download),
              onPressed: () async =>
                  context.read<DownloadImageCubit>().downloadImage(url),
            ),
          ],
        ),
        body: Column(
          children: [
            BlocBuilder<DownloadImageCubit, DownloadImageState>(
              builder: (context, state) {
                return state.isDownloading
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: LinearProgressIndicator(
                          value: state.progress.toDouble(),
                          color: ThemeColors.themeBlue,
                        ),
                      )
                    : Container();
              },
            ),
            Expanded(
              child: PhotoView(
                imageProvider: NetworkImage(url),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
