import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/start_dm/start_dm_cubit.dart';
import 'package:valkyrie_app/domain/friends/friend.dart';
import 'package:valkyrie_app/presentation/common/widgets/app_icons.dart';
import 'package:valkyrie_app/presentation/common/widgets/avatar_with_badge.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/home/friends_tab/widgets/bottom_sheet/friend_bottom_sheet.dart';

class FriendItem extends StatelessWidget {
  final Friend friend;

  const FriendItem({
    Key? key,
    required this.friend,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: 4),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (_) => FriendBottomSheet(
            friend: friend,
            ctx: context,
          ),
        );
      },
      leading: getAvatarWithBadge(
        friend.image,
        isOnline: friend.isOnline,
        imageRadius: 20,
        iconRadius: 14,
      ),
      title: Text(
        friend.username,
        style: const TextStyle(
          color: Colors.white60,
        ),
      ),
      trailing: GestureDetector(
        onTap: () => context.read<StartDMCubit>().getOrCreateDM(friend.id),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: ThemeColors.inputBackground,
          ),
          width: 35,
          height: 35,
          child: const Icon(
            AppIcons.commentalt,
            size: 14,
          ),
        ),
      ),
    );
  }
}
