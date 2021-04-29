import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/dms/start_dm/start_dm_cubit.dart';
import 'package:valkyrie_app/application/friends/send_friend_request/send_friend_request_cubit.dart';
import 'package:valkyrie_app/application/members/moderate_member/moderate_member_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/utils/get_current_user.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/guild/sheets/profile/mod_actions_container.dart';
import 'package:valkyrie_app/presentation/main/guild/sheets/profile/user_info_container.dart';

class ProfileBottomSheet extends StatelessWidget {
  final current = getCurrentUser();
  final Member member;
  final Guild? guild;

  ProfileBottomSheet({
    Key? key,
    required this.member,
    required this.guild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isOwner = current.id == guild?.ownerId;
    final isCurrent = current.id == member.id;

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<StartDMCubit>()),
        BlocProvider(create: (context) => getIt<SendFriendRequestCubit>()),
        if (isOwner)
          BlocProvider(create: (context) => getIt<ModerateMemberCubit>()),
      ],
      child: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        color: ThemeColors.appBackground,
        child: Column(
          children: [
            UserInfoContainer(member, isCurrent: isCurrent),
            if (isOwner && !isCurrent) ModActionsContainer(guild!, member),
            if (isCurrent)
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("This is you!"),
              )
          ],
        ),
      ),
    );
  }
}
