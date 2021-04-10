import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/open_url_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/display_screens/photo_view_screen.dart';

class ImageFileWidget extends StatelessWidget {
  final Message message;
  const ImageFileWidget(this.message);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          PhotoViewScreen.routeName,
          arguments: OpenUrlArguments(message.url!),
        );
      },
      child: FadeInImage.memoryNetwork(
        placeholder: kTransparentImage,
        image: message.url!,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
