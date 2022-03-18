import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/account/get_account/account_cubit.dart';
import 'package:valkyrie_app/application/auth/auth_status/auth_status_bloc.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/auth/start_up_screen.dart';
import 'package:valkyrie_app/presentation/main/home/account_tab/account/account_screen.dart';
import 'package:valkyrie_app/presentation/main/home/friends_tab/friend_screen.dart';
import 'package:valkyrie_app/presentation/main/home/home_tab/home_body.dart';
import 'package:valkyrie_app/presentation/main/home/home_tab/home_navbar.dart';
import 'package:valkyrie_app/presentation/main/shared/hooks/guild_socket_hook.dart';

class HomeScreen extends HookWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    use(GuildSocketHook(context));

    final _currentTab = useState(0);
    final _navigationQueue = useState(ListQueue<int>());
    final List<Widget> children = [
      HomeBody(),
      FriendListScreen(),
      AccountScreen(),
    ];

    void _selectTab(int index) {
      if (_currentTab.value != index) {
        _navigationQueue.value.removeWhere((element) => element == index);
        _navigationQueue.value.addLast(index);
        _currentTab.value = index;
      }
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider<AccountCubit>(
          create: (context) => getIt<AccountCubit>()..getAccount(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthStatusBloc, AuthStatusState>(
            listener: (context, state) {
              state.maybeMap(
                unauthenticated: (_) => Navigator.of(context)
                    .pushReplacementNamed(StartUpScreen.routeName),
                orElse: () {},
              );
            },
          ),
        ],
        child: WillPopScope(
          onWillPop: () async {
            if (_navigationQueue.value.isEmpty) return true;
            _navigationQueue.value.removeLast();
            _currentTab.value = _navigationQueue.value.isEmpty
                ? 0
                : _navigationQueue.value.last;

            return false;
          },
          child: Scaffold(
            body: children[_currentTab.value],
            bottomNavigationBar: HomeNavigationBar(
              onSelectTab: _selectTab,
              currentTab: _currentTab.value,
            ),
          ),
        ),
      ),
    );
  }
}
