import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/member/banned_member.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

part 'ban_list_state.dart';
part 'ban_list_cubit.freezed.dart';

/// BanListCubit manages everything related to the [Guild]'s ban list
@injectable
class BanListCubit extends Cubit<BanListState> {
  final IMemberRepository _repository;
  BanListCubit(this._repository) : super(const BanListState.initial());

  /// Fetches a list of users that are banned from this guild.
  /// Emits a list of [BannedMember] when successful and [MemberFailure] otherwise.
  Future<void> getGuildBanList(String guildId) async {
    emit(const BanListState.loadInProgress());
    final failureOrGuilds = await _repository.getBanList(guildId);
    emit(
      failureOrGuilds.fold(
        (f) => BanListState.loadFailure(f),
        (members) => BanListState.loadSuccess(members),
      ),
    );
  }

  /// Removes the user for the given id from the [BanListState]
  void removeBan(String memberId) {
    state.maybeWhen(
      loadSuccess: (members) async {
        final data = members.where((m) => m.id != memberId).toList();
        emit(BanListState.loadSuccess(data));
      },
      orElse: () {},
    );
  }
}
