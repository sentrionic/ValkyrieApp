import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/channels/cubit/channel_cubit.dart';
import 'package:valkyrie_app/application/channels/current/current_channel_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/home/home/widgets/guild_list.dart';
import 'package:valkyrie_app/presentation/home/home/widgets/home_icon.dart';

class GuildDrawer extends StatelessWidget {
  final Guild guild;

  const GuildDrawer({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final channelId = context.watch<CurrentChannelCubit>().state;
    return Drawer(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: ThemeColors.guildList,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  HomeIconWidget(),
                  const SizedBox(
                    height: 3,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(),
                  ),
                  Expanded(
                    child: GuildListWidget(),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              color: ThemeColors.dmBackground,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          guild.name.getOrCrash(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.more_vert),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xff4E535B),
                            ),
                            onPressed: () {},
                            child: const Text("Invite Members"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: BlocBuilder<ChannelCubit, ChannelState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          loadSuccess: (channels) {
                            return ListView.builder(
                              itemExtent: 43,
                              padding: const EdgeInsets.only(top: 0),
                              itemBuilder: (context, index) {
                                final channel = channels[index];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(5),
                                    ),
                                    child: ListTile(
                                      visualDensity: const VisualDensity(
                                        vertical: -2,
                                      ),
                                      tileColor: channelId == channel.id
                                          ? Colors.white10
                                          : Colors.transparent,
                                      title: Row(
                                        children: [
                                          const Icon(
                                            Icons.tag,
                                            color: Colors.white38,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            channel.name.getOrCrash(),
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: channelId == channel.id
                                                  ? Colors.white
                                                  : Colors.white38,
                                            ),
                                          ),
                                        ],
                                      ),
                                      onTap: () => context
                                          .read<CurrentChannelCubit>()
                                          .setChannelId(channel.id),
                                    ),
                                  ),
                                );
                              },
                              itemCount: channels.length,
                            );
                          },
                          orElse: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
