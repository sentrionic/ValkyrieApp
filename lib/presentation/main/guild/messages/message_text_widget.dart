import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/message/message.dart';

class MessageTextWidget extends StatelessWidget {
  final Message message;
  final bool isCompact;

  const MessageTextWidget(this.message, {Key? key, this.isCompact = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isCompact)
          const SizedBox(
            width: 76,
          ),
        Flexible(
          child: Text(
            message.text!.getOrCrash(),
            style: const TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
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
    );
  }
}
