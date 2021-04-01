import 'package:calendar_time/calendar_time.dart';
import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/presentation/common/hex_color.dart';

class MessageItem extends StatelessWidget {
  final Message message;

  const MessageItem({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(
        vertical: -3,
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          message.user.image,
        ),
        radius: 22,
      ),
      title: Row(
        children: [
          Text(
            message.user.nickname ?? message.user.username,
            style: TextStyle(
              fontSize: 16,
              color: message.user.color != null
                  ? HexColor(message.user.color!)
                  : null,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            CalendarTime(
              DateTime.parse(message.createdAt),
            ).toHuman,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white54,
            ),
          ),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Row(
          children: [
            Text(message.text!.getOrCrash()),
            if (message.updatedAt != message.createdAt) ...[
              const SizedBox(
                width: 5,
              ),
              const Text(
                "(edited)",
                style: TextStyle(
                  color: Colors.white38,
                  fontSize: 10,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
