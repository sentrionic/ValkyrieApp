import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/friends/get_friends/get_friends_cubit.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';

import 'file:///C:/Users/Christoph/Downloads/ValkyrieApp/lib/presentation/home/friends/friend_item.dart';

import '../../../injection.dart';

class FriendListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetFriendsCubit>()..getFriends(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Friends"),
          automaticallyImplyLeading: false,
          backgroundColor: ThemeColors.dmBackground,
          actions: [
            IconButton(
              icon: const Icon(Icons.person_add_alt_1),
              onPressed: () {},
            ),
          ],
        ),
        body: BlocBuilder<GetFriendsCubit, GetFriendsState>(
          builder: (context, state) {
            return state.maybeWhen(
              loadSuccess: (friends) {
                final online =
                    context.read<GetFriendsCubit>().getOnlineFriends();
                final offline =
                    context.read<GetFriendsCubit>().getOfflineFriendss();
                return ListView(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "ONLINE — ${online.length}",
                        style: const TextStyle(
                          color: Colors.white24,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    for (var friend in online) FriendItem(friend: friend),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        "OFFLINE — ${offline.length}",
                        style: const TextStyle(
                          color: Colors.white24,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    for (var friend in offline) FriendItem(friend: friend),
                  ],
                );
              },
              orElse: () => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}
