import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/current/current_dm_cubit.dart';
import 'package:valkyrie_app/application/dms/dm_list/dm_list_cubit.dart';
import 'package:valkyrie_app/application/dms/start_dm/start_dm_cubit.dart';
import 'package:valkyrie_app/application/friends/remove_friend/remove_friend_cubit.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/main/home/friends_tab/widgets/bottom_sheet/friend_bottom_sheet_form.dart';

class FriendBottomSheet extends StatelessWidget {
  final Friend friend;
  final BuildContext ctx;
  const FriendBottomSheet({
    Key? key,
    required this.friend,
    required this.ctx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: ctx.read<DMListCubit>()),
        BlocProvider.value(value: ctx.read<CurrentDMCubit>()),
        BlocProvider(create: (context) => getIt<StartDMCubit>()),
        BlocProvider(create: (context) => getIt<RemoveFriendCubit>()),
      ],
      child: FriendBottomSheetForm(
        friend: friend,
      ),
    );
  }
}
