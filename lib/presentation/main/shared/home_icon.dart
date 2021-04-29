import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/notifications/request_notifications_cubit.dart';
import 'package:valkyrie_app/presentation/common/widgets/app_icons.dart';
import 'package:valkyrie_app/presentation/common/widgets/notification_icon.dart';
import 'package:valkyrie_app/presentation/common/widgets/widget_constants.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/home_screen.dart';
import 'package:valkyrie_app/presentation/main/shared/current_guild_pill.dart';

class HomeIconWidget extends StatelessWidget {
  final bool isHome;
  const HomeIconWidget({Key? key, this.isHome = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<CurrentGuildCubit>().resetGuildId();
        context.read<CurrentDMCubit>().resetChannelId();
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (isHome)
            CurrentGuildPill()
          else
            const SizedBox(
              width: WidgetConstants.pillWidth,
            ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(isHome ? 18 : 50),
              color:
                  isHome ? ThemeColors.themeBlue : ThemeColors.guildBackground,
            ),
            width: WidgetConstants.avatarContainerSize,
            height: WidgetConstants.avatarContainerSize,
            child: BlocBuilder<RequestNotificationsCubit, int>(
              buildWhen: (p, c) => p != c,
              builder: (context, state) => Stack(
                alignment: Alignment.center,
                children: [
                  const Icon(
                    AppIcons.commentalt,
                    size: 22,
                    color: Colors.white,
                  ),
                  if (state > 0) NotificationIcon(count: state)
                ],
              ),
            ),
          ),
          const SizedBox(
            width: WidgetConstants.pillWidth,
          ),
        ],
      ),
    );
  }
}
