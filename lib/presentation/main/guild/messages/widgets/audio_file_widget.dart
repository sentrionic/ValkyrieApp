import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/open_url_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/display_screens/web_view_screen.dart';

class AudioFileWidget extends StatelessWidget {
  final Message message;
  const AudioFileWidget(this.message);

  @override
  Widget build(BuildContext context) {
    final file = message.url!.substring(message.url!.lastIndexOf('/') + 1);
    final fileName = file.substring(file.indexOf('-') + 1);
    return ElevatedButton(
      onPressed: () async {
        Navigator.of(context).pushNamed(
          WebViewScreen.routeName,
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
    );
  }
}
