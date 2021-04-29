import 'package:flutter/material.dart';
import 'package:valkyrie_app/presentation/common/widgets/form_wrapper.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/shared/add_guild/create_guild/create_guild_screen.dart';
import 'package:valkyrie_app/presentation/main/shared/add_guild/join_guild/join_guild_screen.dart';

class AddGuildScreen extends StatelessWidget {
  static const routeName = '/add-guild';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.appBackground,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        color: ThemeColors.appBackground,
        height: double.infinity,
        child: FormWrapper(
          children: [
            const Text(
              "Create Your Server",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Your server is where you and your friends hang out. Make yours and start talking.",
              style: TextStyle(
                color: Colors.white70,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: ThemeColors.messageInput,
                      ),
                      onPressed: () => Navigator.of(context).pushNamed(
                        CreateGuildScreen.routeName,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(),
                          Text(
                            "Create My Own",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.chevron_right_sharp),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Have an invite already?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ThemeColors.buttonGray,
                    ),
                    onPressed: () => Navigator.of(context).pushNamed(
                      JoinGuildScreen.routeName,
                    ),
                    child: const Text(
                      "Join a friend on Valkyrie",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
