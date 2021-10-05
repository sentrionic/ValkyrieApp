import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/channels/screens/invite_screen.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/guild_overview/guild_overview_screen.dart';

class GuildInfoContainer extends StatelessWidget {
  final Guild guild;
  final bool isOwner;
  const GuildInfoContainer({
    Key? key,
    required this.guild,
    required this.isOwner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            color: ThemeColors.infoBackground,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: guild.icon != null
                          ? Colors.transparent
                          : ThemeColors.themeBlue,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: guild.icon != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              guild.icon!,
                              fit: BoxFit.cover,
                            ),
                          )
                        : Center(
                            child: Text(
                              guild.name.getOrCrash()[0],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                          ),
                  ),
                ),
                Text(
                  guild.name.getOrCrash(),
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (isOwner)
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: InkWell(
                          splashColor: ThemeColors.buttonGray,
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pushNamed(
                              GuildOverviewScreen.routeName,
                              arguments: GuildScreenArguments(guild),
                            );
                          },
                          child: Column(
                            children: const [
                              Icon(
                                Icons.settings,
                                color: Colors.white70,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Settings",
                                style: TextStyle(
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: InkWell(
                        splashColor: ThemeColors.buttonGray,
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamed(
                            InviteScreen.routeName,
                            arguments: GuildScreenArguments(guild),
                          );
                        },
                        child: Column(
                          children: const [
                            Icon(
                              Icons.person_add_alt_1,
                              color: Colors.white70,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Invite",
                              style: TextStyle(
                                color: Colors.white70,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
