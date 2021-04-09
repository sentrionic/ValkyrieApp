import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:photo_view/photo_view.dart';
import 'package:valkyrie_app/application/messages/cubit/download_image_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/flushbar_creator.dart';

class PhotoViewScreen extends HookWidget {
  final String url;

  const PhotoViewScreen({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DownloadImageCubit>(),
      child: _PhotoViewContent(url),
    );
  }
}

class _PhotoViewContent extends StatelessWidget {
  final String url;

  const _PhotoViewContent(this.url, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final file = url.substring(url.lastIndexOf('/') + 1);
    final fileName = file.substring(file.indexOf('-') + 1);
    return BlocListener<DownloadImageCubit, DownloadImageState>(
      listener: (context, state) {
        state.downloadFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              FlushBarCreator.showError(
                  message: failure.maybeMap(
                orElse: () => 'Something went wrong. Try again later.',
              )).show(context);
            },
            (_) {
              FlushBarCreator.showSuccess(message: 'Download Success.')
                  .show(context);
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
                fileName,
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
