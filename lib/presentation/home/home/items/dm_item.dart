import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';

class DMChannelItem extends StatelessWidget {
  final DMChannel channel;

  const DMChannelItem({
    Key? key,
    required this.channel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          channel.user.image,
        ),
      ),
      title: Text(
        channel.user.username,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
