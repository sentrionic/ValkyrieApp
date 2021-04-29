import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/presentation/common/widgets/avatar_with_badge.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/dm_screen.dart';

class DMChannelItem extends StatelessWidget {
  final DMChannel channel;

  const DMChannelItem({
    Key? key,
    required this.channel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentDMCubit>().state;
    final current = channelId == channel.id;

    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        right: 10,
        bottom: 5,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        child: Theme(
          data: ThemeData(
            highlightColor: ThemeColors.channelRippleColor,
          ),
          child: ListTile(
            onTap: () {
              context.read<CurrentDMCubit>().setDMChannel(channel.id);
              Navigator.of(context).pushReplacementNamed(DMScreen.routeName);
            },
            contentPadding: const EdgeInsets.only(left: 10),
            onLongPress: () {},
            visualDensity: const VisualDensity(
              vertical: -2,
            ),
            minLeadingWidth: 20,
            tileColor: current ? Colors.white10 : Colors.transparent,
            leading: getAvatarWithBadge(
              channel.user.image,
              isOnline: channel.user.isOnline,
              imageRadius: 16,
              iconRadius: 12,
            ),
            title: Text(
              channel.user.username,
              style: TextStyle(
                color: current ? Colors.white : Colors.white38,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
