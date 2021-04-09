import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/open_url_arguments.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class MessageImageWidget extends StatelessWidget {
  final Message message;
  final bool isCompact;

  const MessageImageWidget(
    this.message, {
    Key? key,
    this.isCompact = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final file = message.url!.substring(message.url!.lastIndexOf('/') + 1);
    final fileName = file.substring(file.indexOf('-') + 1);
    return Row(
      children: [
        if (isCompact)
          const SizedBox(
            width: 76,
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: message.filetype!.startsWith('image/')
                  ? GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          '/photo',
                          arguments: OpenUrlArguments(message.url!),
                        );
                      },
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: message.url!,
                        fit: BoxFit.scaleDown,
                      ),
                    )
                  : ElevatedButton(
                      onPressed: () async {
                        Navigator.of(context).pushNamed(
                          '/web',
                          arguments: OpenUrlArguments(message.url!),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: ThemeColors.dmBackground,
                        elevation: 0,
                        side: const BorderSide(width: 0.5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.insert_drive_file_outlined),
                            Text(
                              fileName,
                              style: const TextStyle(
                                color: Color(0xff03ADEF),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Icon(Icons.download_sharp),
                          ],
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
