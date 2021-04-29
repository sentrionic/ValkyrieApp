import 'package:calendar_time/calendar_time.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/presentation/common/extensions/hex_color_extension.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/message_file_widget.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/message_text_widget.dart';
import 'package:valkyrie_app/presentation/main/guild/sheets/message/message_bottom_sheet.dart';
import 'package:valkyrie_app/presentation/main/guild/sheets/profile/profile_bottom_sheet.dart';

class MessageItem extends StatelessWidget {
  final Message message;

  const MessageItem({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final guildId = context.watch<CurrentGuildCubit>().state;
    final guild = context.read<GuildListCubit>().getCurrentGuild(guildId);
    return ListTile(
      visualDensity: const VisualDensity(
        vertical: -4,
      ),
      leading: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (_) => ProfileBottomSheet(
              guild: guild,
              member: message.user,
            ),
          );
        },
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            message.user.image,
          ),
          radius: 19,
        ),
      ),
      title: Row(
        children: [
          Text(
            message.user.nickname ?? message.user.username,
            style: TextStyle(
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
              color: Colors.white24,
            ),
          ),
        ],
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 2.0),
        child: message.attachment != null
            ? MessageFileWidget(message)
            : MessageTextWidget(message),
      ),
      onLongPress: () {
        showModalBottomSheet(
          context: context,
          builder: (_) {
            return MessageBottomSheet(
              guild: guild,
              message: message,
            );
          },
        );
      },
    );
  }
}
