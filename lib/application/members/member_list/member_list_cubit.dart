import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

part 'member_list_state.dart';
part 'member_list_cubit.freezed.dart';

/// MemberListCubit manages everything related to the current guild's [Member]
@injectable
class MemberListCubit extends Cubit<MemberListState> {
  final IMemberRepository _repository;

  MemberListCubit(this._repository) : super(const MemberListState.initial());

  /// Fetches a list of [Member] from the network for the given guild.
  /// Emits the list if successfull, [MemberFailure] otherwise.
  Future<void> getGuildMembers(String guildId) async {
    emit(const MemberListState.loadInProgress());
    final failureOrMembers = await _repository.getGuildMembers(guildId);
    emit(
      failureOrMembers.fold(
        (f) => MemberListState.loadFailure(f),
        (members) => MemberListState.loadSuccess(members),
      ),
    );
  }

  /// Returns a list of the guild's [Member]s that are currently online
  List<Member> getOnlineMembers() {
    return state.maybeWhen(
      loadSuccess: (members) => members.where((m) => m.isOnline).toList(),
      orElse: () => [],
    );
  }

  /// Returns a list of the guild's [Member]s that are currently offline
  List<Member> getOfflineMembers() {
    return state.maybeWhen(
      loadSuccess: (members) => members.where((m) => !m.isOnline).toList(),
      orElse: () => [],
    );
  }

  /// Adds the new member to the [MemberListState] and emits the new list.
  void addNewMember(Member member) {
    state.maybeWhen(
      loadSuccess: (members) async {
        final data = [...members, member];
        // Prefer sorting using nickname over username.
        data.sort((a, b) {
          if (a.nickname != null && b.nickname != null) {
            return a.nickname!.compareTo(b.nickname!);
          } else if (a.nickname != null && b.nickname == null) {
            return a.nickname!.compareTo(b.username);
          } else if (a.nickname == null && b.nickname != null) {
            return a.username.compareTo(b.nickname!);
          } else {
            return a.username.compareTo(b.username);
          }
        });
        emit(MemberListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  /// Removes the new member from the [MemberListState] and emits the new list.
  void removeMember(String memberId) {
    state.maybeWhen(
      loadSuccess: (members) async {
        final data = members.where((e) => e.id != memberId).toList();
        emit(MemberListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }

  /// Changes the online status of the member for the given id to the given value
  void toggleOnlineStatus(String memberId, {required bool isOnline}) {
    state.maybeWhen(
      loadSuccess: (members) async {
        final data = members.map((e) {
          return e.id == memberId
              ? e.copyWith(
                  isOnline: isOnline,
                )
              : e;
        }).toList();
        emit(MemberListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }
}
