import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

part 'unban_user_state.dart';
part 'unban_user_cubit.freezed.dart';

@injectable
class UnbanUserCubit extends Cubit<UnbanUserState> {
  final IGuildRepository _repository;

  UnbanUserCubit(this._repository) : super(const UnbanUserState.initial());

  Future<void> unbanMember(
    String guildId,
    String memberId,
  ) async {
    emit(const UnbanUserState.actionInProgress());
    final possibleFailure = await _repository.unbanMember(guildId, memberId);
    emit(
      possibleFailure.fold(
        (f) => UnbanUserState.unbanFailure(f),
        (_) => const UnbanUserState.unbanSuccess(),
      ),
    );
  }
}
