import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/guilds/create_guild/create_guild_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/main/shared/add_guild/create_guild/create_guild_form.dart';

class CreateGuildScreen extends StatelessWidget {
  static const routeName = '/create-guild';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreateGuildCubit>(),
      child: CreateGuildForm(),
    );
  }
}
