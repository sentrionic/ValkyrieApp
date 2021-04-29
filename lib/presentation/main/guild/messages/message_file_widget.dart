import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/presentation/common/widgets/widget_constants.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/widgets/audio_file_widget.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/widgets/image_file_widget.dart';

class MessageFileWidget extends StatelessWidget {
  final Message message;
  final bool isCompact;

  const MessageFileWidget(
    this.message, {
    Key? key,
    this.isCompact = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isCompact)
          const SizedBox(
            width: WidgetConstants.leftPadding,
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: message.attachment!.filetype!.startsWith('image/')
                  ? ImageFileWidget(message)
                  : AudioFileWidget(message),
            ),
          ),
        ),
      ],
    );
  }
}
