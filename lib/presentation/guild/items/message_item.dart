import 'package:flutter/material.dart';
import 'package:calendar_time/calendar_time.dart';
import 'package:valkyrie_app/domain/message/message.dart';

class MessageItem extends StatelessWidget {
  final Message message;

  const MessageItem({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(
        vertical: -2,
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
            message.user.username,
            style: const TextStyle(
              fontSize: 16,
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
        child: Text(message.text!.getOrCrash()),
      ),
    );
  }
}
