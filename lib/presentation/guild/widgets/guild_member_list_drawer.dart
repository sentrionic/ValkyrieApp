import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/members/member/member_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/common/center_loading_indicator.dart';
import 'package:valkyrie_app/presentation/guild/items/member_item.dart';
import 'package:valkyrie_app/presentation/guild/widgets/member_drawer_widgets/member_header.dart';
import 'package:valkyrie_app/presentation/guild/widgets/member_drawer_widgets/online_status_label.dart';

import '../../../injection.dart';

class GuildMemberDrawer extends StatelessWidget {
  final Guild guild;

  const GuildMemberDrawer({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MemberCubit>()..getGuildMembers(guild.id),
      child: Drawer(
        child: BlocBuilder<MemberCubit, MemberState>(
          builder: (context, state) {
            return state.maybeWhen(
              loadSuccess: (members) {
                final online = context.read<MemberCubit>().getOnlineMembers();
                final offline = context.read<MemberCubit>().getOfflineMembers();
                return ListView(
                  children: [
                    MemberHeader(),
                    const SizedBox(
                      height: 10,
                    ),
                    OnlineStatusLabel(count: online.length, isOnline: true),
                    for (var member in online) MemberItem(member: member),
                    const SizedBox(
                      height: 5,
                    ),
                    OnlineStatusLabel(count: online.length, isOnline: false),
                    for (var member in offline) MemberItem(member: member),
                  ],
                );
              },
              orElse: () => CenterLoadingIndicator(),
            );
          },
        ),
      ),
    );
  }
}
