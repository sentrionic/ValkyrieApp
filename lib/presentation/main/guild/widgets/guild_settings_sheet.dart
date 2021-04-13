import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/core/screen_arguments/guild_screen_arguments.dart';
import 'package:valkyrie_app/presentation/main/guild/widgets/appearance_screen.dart';

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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: ThemeColors.inputBackground,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          height: 90,
                          width: 90,
                          decoration: const BoxDecoration(
                            color: ThemeColors.themeBlue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: guild.icon != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.network(guild.icon!),
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
                                onTap: () {},
                                child: Column(
                                  children: const [
                                    Icon(Icons.settings),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Settings"),
                                  ],
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: InkWell(
                              splashColor: ThemeColors.buttonGray,
                              onTap: () {},
                              child: Column(
                                children: const [
                                  Icon(
                                    Icons.person_add_alt_1,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Invite",
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
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: ThemeColors.dmBackground,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      if (isOwner) _getModalButton("Create Channel", () {}),
                      const SizedBox(
                        height: 20,
                      ),
                      _getModalButton("Change Appearance", () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed(
                            AppearanceScreen.routeName,
                            arguments: GuildScreenArguments(guild));
                      }),
                      if (!isOwner) _getLeaveGuildModalButton(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getModalButton(String label, Function onClick) {
    return Container(
      color: ThemeColors.sheetBackground,
      width: double.infinity,
      child: TextButton(
        onPressed: () => onClick(),
        style: TextButton.styleFrom(
          primary: Colors.white70,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _getLeaveGuildModalButton() {
    return Container(
      color: ThemeColors.sheetBackground,
      width: double.infinity,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          primary: ThemeColors.brandRed,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Leave Server",
                  style: TextStyle(
                    fontSize: 16,
                    color: ThemeColors.brandRed,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
