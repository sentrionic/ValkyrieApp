import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/cubit/channel_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/application/members/member/member_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/guild/items/member_item.dart';

import '../../injection.dart';

class GuildMemberDrawer extends StatelessWidget {
  final Guild guild;

  const GuildMemberDrawer({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentChannelCubit>().state;
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
                    Container(
                      height: 100,
                      color: const Color(0xff2D3134),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.tag,
                                  color: Colors.white38,
                                ),
                                Text(
                                  context
                                          .watch<ChannelCubit>()
                                          .getCurrentChannel(channelId)
                                          ?.name
                                          .getOrCrash() ??
                                      "",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "ONLINE — ${online.length}",
                        style: const TextStyle(
                          color: Colors.white24,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    for (var member in online) MemberItem(member: member),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "OFFLINE — ${offline.length}",
                        style: const TextStyle(
                          color: Colors.white24,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    for (var member in offline) MemberItem(member: member),
                  ],
                );
              },
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}
