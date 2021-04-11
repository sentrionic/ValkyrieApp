import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

part 'moderate_member_state.dart';
part 'moderate_member_cubit.freezed.dart';

@injectable
class ModerateMemberCubit extends Cubit<ModerateMemberState> {
  final IGuildRepository _repository;

  ModerateMemberCubit(this._repository)
      : super(const ModerateMemberState.initial());

  Future<void> kickMember(String guildId, String memberId) async {
    emit(const ModerateMemberState.actionInProgress());
    final possibleFailure = await _repository.kickMember(guildId, memberId);
    emit(
      possibleFailure.fold(
        (f) => ModerateMemberState.actionFailure(f),
        (_) => const ModerateMemberState.actionSuccess(),
      ),
    );
  }

  Future<void> banMember(String guildId, String memberId) async {
    emit(const ModerateMemberState.actionInProgress());
    final possibleFailure = await _repository.banMember(guildId, memberId);
    emit(
      possibleFailure.fold(
        (f) => ModerateMemberState.actionFailure(f),
        (_) => const ModerateMemberState.actionSuccess(),
      ),
    );
  }
}
