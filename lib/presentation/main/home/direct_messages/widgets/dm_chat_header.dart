import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/presentation/common/utils/get_channel_name.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

class DMChatHeader extends StatelessWidget {
  final DMChannel channel;
  const DMChatHeader({Key? key, required this.channel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.alternate_email,
          color: Colors.white38,
          size: 24,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          getDMUsername(context, channel.id),
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color:
                (channel.user.isOnline) ? ThemeColors.brandGreen : Colors.grey,
          ),
        )
      ],
    );
  }
}
