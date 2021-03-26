import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

part 'member_state.dart';
part 'member_cubit.freezed.dart';

@injectable
class MemberCubit extends Cubit<MemberState> {
  final IMemberRepository _repository;

  MemberCubit(this._repository) : super(const MemberState.initial());

  Future<void> getGuildMembers(String guildId) async {
    emit(const MemberState.loadInProgress());
    final failureOrMembers = await _repository.getGuildMembers(guildId);
    emit(
      failureOrMembers.fold(
        (f) => MemberState.loadFailure(f),
        (members) => MemberState.loadSuccess(members),
      ),
    );
  }

  List<Member> getOnlineMembers() {
    return state.maybeWhen(
      loadSuccess: (members) => members.where((m) => m.isOnline).toList(),
      orElse: () => [],
    );
  }

  List<Member> getOfflineMembers() {
    return state.maybeWhen(
      loadSuccess: (members) => members.where((m) => !m.isOnline).toList(),
      orElse: () => [],
    );
  }
}
