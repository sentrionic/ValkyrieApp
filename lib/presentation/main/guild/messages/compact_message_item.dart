import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/current/current_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_cubit.dart';
import 'package:valkyrie_app/domain/message/message.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/message_file_widget.dart';
import 'package:valkyrie_app/presentation/main/guild/messages/message_text_widget.dart';
import 'package:valkyrie_app/presentation/main/guild/sheets/message/message_bottom_sheet.dart';

class CompactMessageItem extends StatelessWidget {
  final Message message;

  const CompactMessageItem({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: InkWell(
        onLongPress: () {
          showModalBottomSheet(
            context: context,
            builder: (_) {
              final guildId = context.watch<CurrentGuildCubit>().state;
              final guild =
                  context.read<GuildListCubit>().getCurrentGuild(guildId);
              return MessageBottomSheet(
                guild: guild,
                message: message,
              );
            },
          );
        },
        child: message.attachment != null
            ? MessageFileWidget(
                message,
                isCompact: true,
              )
            : MessageTextWidget(
                message,
                isCompact: true,
              ),
      ),
    );
  }
}
