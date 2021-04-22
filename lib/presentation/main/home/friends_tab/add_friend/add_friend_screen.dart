import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/friends/add_friend/add_friend_cubit.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/main/home/friends_tab/add_friend/add_friend_form.dart';

class AddFriendScreen extends StatelessWidget {
  static const routeName = "/add-friend";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddFriendCubit>(),
      child: AddFriendForm(),
    );
  }
}
