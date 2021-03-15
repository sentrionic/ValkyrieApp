import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/account/get_account/account_cubit.dart';
import 'package:valkyrie_app/application/auth/auth_status/auth_status_bloc.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_bloc.dart';
import 'package:valkyrie_app/application/guilds/guild_list/guild_list_bloc.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/auth/screens/start_up_screen.dart';
import 'package:valkyrie_app/presentation/home/account/account_screen.dart';
import 'package:valkyrie_app/presentation/home/widgets/home_body.dart';
import 'package:valkyrie_app/presentation/home/widgets/home_navbar.dart';

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentTab = useState(0);
    final List<Widget> children = [
      HomeBody(),
      Container(
        color: Colors.black,
      ),
      AccountScreen(),
    ];

    void _selectTab(int index) {
      if (currentTab.value != index) {
        currentTab.value = index;
      }
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider<GuildListBloc>(
          create: (context) =>
              getIt<GuildListBloc>()..add(const GuildListEvent.getGuilds()),
        ),
        BlocProvider<DMListBloc>(
          create: (context) =>
              getIt<DMListBloc>()..add(const DMListEvent.getUserDMs()),
        ),
        BlocProvider<AccountCubit>(
          create: (context) => getIt<AccountCubit>()..getAccount(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthStatusBloc, AuthStatusState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (BuildContext context) => StartUpScreen())),
                orElse: () {},
              );
            },
          ),
        ],
        child: Scaffold(
          body: children[currentTab.value],
          bottomNavigationBar: HomeNavigationBar(
            onSelectTab: _selectTab,
            currentTab: currentTab.value,
          ),
        ),
      ),
    );
  }
}
