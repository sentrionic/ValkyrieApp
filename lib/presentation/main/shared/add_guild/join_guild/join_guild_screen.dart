import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/join_guild/join_guild_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/main/shared/add_guild/join_guild/join_guild_form.dart';

class JoinGuildScreen extends StatelessWidget {
  static const routeName = '/join-guild';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<JoinGuildCubit>(),
      child: JoinGuildForm(),
    );
  }
}
