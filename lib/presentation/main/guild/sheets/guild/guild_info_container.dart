import 'package:flutter/material.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

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
    );
  }
}
