import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/notifications/dm_notifications_cubit.dart';
import 'package:valkyrie_app/application/notifications/notifications_cubit.dart';
import 'package:valkyrie_app/domain/dms/dm_channel.dart';
import 'package:valkyrie_app/presentation/common/widgets/notification_icon.dart';
import 'package:valkyrie_app/presentation/common/widgets/widget_constants.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/direct_messages/dm_screen.dart';

class DMNotificationItem extends StatelessWidget {
  final DMNotification notification;
  const DMNotificationItem({
    Key? key,
    required this.notification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context
            .read<DMNotificationsCubit>()
            .removeNotification(notification.id);
        context.read<NotificationsCubit>().removeFromCount(notification.count);
        context.read<DMListCubit>().addNewDM(notification.toDMChannel());
        context.read<CurrentDMCubit>().setDMChannel(notification.id);
        context.read<CurrentGuildCubit>().resetGuildId();
        Navigator.of(context).pushReplacementNamed(DMScreen.routeName);
      },
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(notification.user.image),
                radius: WidgetConstants.avatarRadius,
                backgroundColor: ThemeColors.guildBackground,
              ),
              NotificationIcon(count: notification.count),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
