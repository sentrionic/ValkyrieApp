import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/account/get_account/account_cubit.dart';
import 'package:valkyrie_app/application/auth/auth_status/auth_status_bloc.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_bloc.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/auth/start_up_screen.dart';
import 'package:valkyrie_app/presentation/home/account/account_screen.dart';
import 'package:valkyrie_app/presentation/home/account/friend_screen.dart';
import 'package:valkyrie_app/presentation/home/home/widgets/home_body.dart';
import 'package:valkyrie_app/presentation/home/home/home_navbar.dart';

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
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
