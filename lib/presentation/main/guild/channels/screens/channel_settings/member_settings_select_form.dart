import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:valkyrie_app/application/channels/edit_channel/edit_channel_cubit.dart';
import 'package:valkyrie_app/application/channels/get_private_channel_members/get_private_channel_members_cubit.dart';
import 'package:valkyrie_app/application/members/member_list/member_list_cubit.dart';
import 'package:valkyrie_app/domain/member/member.dart';

class MemberSettingsSelectForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MemberListCubit, MemberListState>(
      builder: (context, state) => state.maybeMap(
        loadSuccess: (state) {
          return BlocListener<GetPrivateChannelMembersCubit,
              GetPrivateChannelMembersState>(
            listener: (context, fetchState) {
              fetchState.maybeMap(
                fetchSuccess: (successState) {
                  for (final member in state.members) {
                    if (successState.memberIds.contains(member.id)) {
                      context.read<EditChannelCubit>().addMember(member);
                    }
                  }
                },
                orElse: () {},
              );
            },
            child: Column(
              children: [
                TypeAheadField(
                  textFieldConfiguration: const TextFieldConfiguration(
                    autofocus: true,
                    decoration: InputDecoration(hintText: 'Username'),
                  ),
                  suggestionsCallback: (pattern) {
                    return state.members.where(
                      (member) => member.username.toLowerCase().contains(
                            pattern.toLowerCase(),
                          ),
                    );
                  },
                  itemBuilder: (context, suggestion) {
                    if (suggestion == null) return Container();
                    final member = suggestion as Member;
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(member.image),
                      ),
                      title: Text(member.username),
                    );
                  },
                  onSuggestionSelected: (suggestion) {
                    if (suggestion != null) {
                      context
                          .read<EditChannelCubit>()
                          .addMember(suggestion as Member);
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Selected:"),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<EditChannelCubit, EditChannelState>(
                  builder: (context, state) => ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final member = state.members[index];
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(member.image),
                        ),
                        title: Text(member.username),
                        trailing: GestureDetector(
                          onTap: () => context
                              .read<EditChannelCubit>()
                              .removeMember(member.id),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black45,
                            ),
                            width: 35,
                            height: 35,
                            child: const Icon(
                              Icons.close,
                              size: 14,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: state.members.length,
                  ),
                ),
              ],
            ),
          );
        },
        orElse: () => const Text("Fetching members..."),
      ),
    );
  }
}
