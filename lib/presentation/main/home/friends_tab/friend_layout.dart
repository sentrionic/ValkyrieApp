import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/friends/get_friends/get_friends_cubit.dart';
import 'package:valkyrie_app/application/friends/get_requests/get_requests_cubit.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/friends_tab/add_friend/add_friend_screen.dart';
import 'package:valkyrie_app/presentation/main/home/friends_tab/hooks/friend_socket_hook.dart';
import 'package:valkyrie_app/presentation/main/home/friends_tab/widgets/request_item.dart';
import 'package:valkyrie_app/presentation/main/home/friends_tab/widgets/status_label.dart';

import 'widgets/friend_item.dart';

class FriendLayout extends HookWidget {
  @override
  Widget build(BuildContext context) {
    use(FriendSocketHook(context));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Friends"),
        automaticallyImplyLeading: false,
        backgroundColor: ThemeColors.dmBackground,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_add_alt_1),
            onPressed: () => Navigator.of(context).pushNamed(
              AddFriendScreen.routeName,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          BlocBuilder<GetRequestsCubit, GetRequestsState>(
            builder: (context, state) => state.maybeWhen(
              loadSuccess: (requests) => ListView(
                shrinkWrap: true,
                children: [
                  if (requests.isNotEmpty) ...[
                    const SizedBox(
                      height: 10,
                    ),
                    StatusLabel(
                      label: "pending requests",
                      count: requests.length,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    for (var request in requests) RequestItem(request: request),
                  ]
                ],
              ),
              orElse: () => Container(),
            ),
          ),
          BlocBuilder<GetFriendsCubit, GetFriendsState>(
            builder: (context, state) {
              return state.maybeWhen(
                loadSuccess: (friends) {
                  final online =
                      context.read<GetFriendsCubit>().getOnlineFriends();
                  final offline =
                      context.read<GetFriendsCubit>().getOfflineFriends();
                  return Expanded(
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        StatusLabel(label: "online", count: online.length),
                        const SizedBox(
                          height: 10,
                        ),
                        for (var friend in online) FriendItem(friend: friend),
                        const SizedBox(
                          height: 5,
                        ),
                        StatusLabel(label: "offline", count: offline.length),
                        const SizedBox(
                          height: 10,
                        ),
                        for (var friend in offline) FriendItem(friend: friend),
                      ],
                    ),
                  );
                },
                orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
