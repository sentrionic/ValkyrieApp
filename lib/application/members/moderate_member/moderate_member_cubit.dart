import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

part 'moderate_member_state.dart';
part 'moderate_member_cubit.freezed.dart';

/// ModerateMemberCubit handles the moderation of members
@injectable
class ModerateMemberCubit extends Cubit<ModerateMemberState> {
  final IMemberRepository _repository;

  ModerateMemberCubit(this._repository)
      : super(const ModerateMemberState.initial());

  /// Kicks the given [Member] from the given [Guild].
  /// Said member will be able to rejoin.
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

  /// Bans the given [Member] from the given [Guild].
  /// Said member will not be able to rejoin.
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
