import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:valkyrie_app/application/members/member_list/member_list_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/core/colors.dart';
import 'package:valkyrie_app/presentation/main/guild/members/hooks/member_socket_hook.dart';
import 'package:valkyrie_app/presentation/main/guild/members/widgets/member_header.dart';
import 'package:valkyrie_app/presentation/main/guild/members/widgets/member_item.dart';
import 'package:valkyrie_app/presentation/main/guild/members/widgets/member_loading_skeleton.dart';
import 'package:valkyrie_app/presentation/main/guild/members/widgets/role_label.dart';

class MemberDrawer extends StatelessWidget {
  final Guild guild;

  const MemberDrawer({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MemberListCubit>()..getGuildMembers(guild.id),
      child: Drawer(child: _MemberDrawerContent(guild)),
    );
  }
}

class _MemberDrawerContent extends HookWidget {
  final Guild guild;
  const _MemberDrawerContent(this.guild);

  @override
  Widget build(BuildContext context) {
    use(MemberSocketHook(context, guild.id));
    return Material(
      color: ThemeColors.appBackground,
      child: BlocBuilder<MemberListCubit, MemberListState>(
        builder: (context, state) {
          return state.maybeWhen(
            loadSuccess: (members) {
              final online = context.read<MemberListCubit>().getOnlineMembers();
              final offline =
                  context.read<MemberListCubit>().getOfflineMembers();
              return ListView(
                children: [
                  MemberHeader(),
                  const SizedBox(
                    height: 10,
                  ),
                  if (online.isNotEmpty) ...[
                    RoleLabel(count: online.length, label: "online"),
                    for (var member in online) MemberItem(member: member),
                  ],
                  const SizedBox(
                    height: 5,
                  ),
                  if (offline.isNotEmpty) ...[
                    RoleLabel(count: offline.length, label: "offline"),
                    for (var member in offline) MemberItem(member: member),
                  ],
                ],
              );
            },
            orElse: () => MemberLoadingSkeleton(),
          );
        },
      ),
    );
  }
}
