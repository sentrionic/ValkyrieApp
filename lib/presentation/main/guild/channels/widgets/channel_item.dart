import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/channel_list/channel_list_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/domain/channels/channel.dart';
import 'package:valkyrie_app/presentation/common/widgets/app_icons.dart';
import 'package:valkyrie_app/presentation/common/widgets/widget_constants.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/channel_screen_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/channel_settings/channel_settings_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/widgets/channel_notification_icon.dart';

class ChannelItem extends StatelessWidget {
  final Channel channel;
  const ChannelItem({Key? key, required this.channel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentChannelCubit>().state;
    final guildId = context.watch<CurrentGuildCubit>().state;
    context.read<ChannelListCubit>().clearNotification(channelId);

    final current = channelId == channel.id;
    final hasNotification = channel.hasNotification;

    return Row(
      children: [
        if (hasNotification)
          ChannelNotificationIcon()
        else
          const SizedBox(
            width: WidgetConstants.pillWidth,
          ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
              left: 5.0,
              bottom: 5.0,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
              child: Theme(
                data: ThemeData(
                  splashColor: ThemeColors.channelRippleColor,
                ),
                child: ListTile(
                  onLongPress: () => Navigator.of(context).pushNamed(
                    ChannelSettingsScreen.routeName,
                    arguments: ChannelScreenArguments(channel, guildId),
                  ),
                  onTap: () => context
                      .read<CurrentChannelCubit>()
                      .setChannelId(channel.id),
                  contentPadding: const EdgeInsets.only(left: 8),
                  visualDensity: const VisualDensity(
                    vertical: -4,
                  ),
                  tileColor: current ? Colors.white10 : Colors.transparent,
                  title: Row(
                    children: [
                      Icon(
                        channel.isPublic ? AppIcons.hashtag : AppIcons.userlock,
                        color: hasNotification ? Colors.white : Colors.white38,
                        size: 18,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        channel.name.getOrCrash(),
                        style: TextStyle(
                          fontSize: 15,
                          color: (current || hasNotification)
                              ? Colors.white
                              : Colors.white38,
                        ),
                      ),
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
