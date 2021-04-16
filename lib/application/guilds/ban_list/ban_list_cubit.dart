import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';
import 'package:valkyrie_app/domain/member/member.dart';

part 'ban_list_state.dart';
part 'ban_list_cubit.freezed.dart';

@injectable
class BanListCubit extends Cubit<BanListState> {
  final IGuildRepository _repository;
  BanListCubit(this._repository) : super(const BanListState.initial());

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
