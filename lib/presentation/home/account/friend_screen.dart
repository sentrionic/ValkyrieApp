import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/friends/get_friends/get_friends_cubit.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/home/account/widgets/friend_item.dart';

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
                return Container(
                  color: ThemeColors.accountForm,
                  child: ListView.builder(
                    itemBuilder: (state, index) {
                      final friend = friends[index];
                      return FriendItem(friend: friend);
                    },
                    itemCount: friends.length,
                  ),
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
