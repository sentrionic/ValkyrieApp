import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/edit_guild/edit_guild_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/main/guild/guild_layout/edit_guild/edit_guild_form.dart';

class EditGuildScreen extends StatelessWidget {
  static const routeName = "/edit-guild";
  final Guild guild;
  const EditGuildScreen({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EditGuildCubit>()..initialize(guild),
      child: EditGuildForm(
        guild: guild,
      ),
    );
  }
}
