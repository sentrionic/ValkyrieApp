import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/members/ban_list/ban_list_cubit.dart';
import 'package:valkyrie_app/application/members/unban_user/unban_user_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/manage_bans/manage_bans_form.dart';

class ManageBansScreen extends StatelessWidget {
  static const routeName = "/manage-bans";
  final Guild guild;
  const ManageBansScreen({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<BanListCubit>()..getGuildBanList(guild.id),
        ),
        BlocProvider(
          create: (context) => getIt<UnbanUserCubit>(),
        ),
      ],
      child: ManageBansForm(
        guild: guild,
      ),
    );
  }
}
