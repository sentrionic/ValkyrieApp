import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valkyrie_app/application/members/member/member_cubit.dart';
import 'package:valkyrie_app/domain/guilds/guild.dart';
import 'package:valkyrie_app/injection.dart';
import 'package:valkyrie_app/presentation/common/widgets/center_loading_indicator.dart';
import 'package:valkyrie_app/presentation/main/guild/members/widgets/member_item.dart';
import 'package:valkyrie_app/presentation/main/guild/members/widgets/member_header.dart';
import 'package:valkyrie_app/presentation/main/guild/members/widgets/role_label.dart';

class MemberDrawer extends StatelessWidget {
  final Guild guild;

  const MemberDrawer({Key? key, required this.guild}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MemberCubit>()..getGuildMembers(guild.id),
      child: Drawer(
        child: BlocBuilder<MemberCubit, MemberState>(
          builder: (context, state) {
            return state.maybeWhen(
              loadSuccess: (members) {
                final online = context.read<MemberCubit>().getOnlineMembers();
                final offline = context.read<MemberCubit>().getOfflineMembers();
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
              orElse: () => CenterLoadingIndicator(),
            );
          },
        ),
      ),
    );
  }
}
