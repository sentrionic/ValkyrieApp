import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/delete_guild/delete_guild_cubit.dart';
import 'package:valkyrie_app/application/guilds/invalidate_invites/invalidate_invites_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/guild_overview/guild_overview_form.dart';

class GuildOverviewScreen extends StatelessWidget {
  static const routeName = "/guild-overview";
  final Guild guild;
  const GuildOverviewScreen({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DeleteGuildCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<InvalidateInvitesCubit>(),
        ),
      ],
      child: GuildOverviewForm(
        guild: guild,
      ),
    );
  }
}
