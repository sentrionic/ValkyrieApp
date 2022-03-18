import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

part 'unban_user_state.dart';
part 'unban_user_cubit.freezed.dart';

/// UnbanUserCubit handles the unbanning of users
@injectable
class UnbanUserCubit extends Cubit<UnbanUserState> {
  final IMemberRepository _repository;

  UnbanUserCubit(this._repository) : super(const UnbanUserState.initial());

  /// Unbans the given user from the given [Guild]
  Future<void> unbanMember(
    String guildId,
    String memberId,
  ) async {
    emit(const UnbanUserState.actionInProgress());
    final possibleFailure = await _repository.unbanMember(guildId, memberId);
    emit(
      possibleFailure.fold(
        (f) => UnbanUserState.unbanFailure(f),
        (_) => UnbanUserState.unbanSuccess(memberId),
      ),
    );
  }
}
