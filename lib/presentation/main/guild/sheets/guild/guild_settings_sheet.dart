import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/guild/sheets/guild/guild_actions_container.dart';
import 'package:valkyrie_app/presentation/main/guild/sheets/guild/guild_info_container.dart';

class GuildSettingsSheet extends StatelessWidget {
  final Guild guild;
  const GuildSettingsSheet({
    Key? key,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _GuildSettingsSheet(guild: guild);
  }
}

class _GuildSettingsSheet extends StatelessWidget {
  final current = getCurrentUser();
  final Guild guild;
  _GuildSettingsSheet({
    Key? key,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOwner = current.id == guild.ownerId;

    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      color: ThemeColors.sheetBackground,
      child: Column(
        children: [
          GuildInfoContainer(guild: guild, isOwner: isOwner),
          GuildActionsContainer(guild: guild, isOwner: isOwner),
        ],
      ),
    );
  }
}
