import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

part 'get_invite_link_state.dart';
part 'get_invite_link_cubit.freezed.dart';

@injectable
class GetInviteLinkCubit extends Cubit<GetInviteLinkState> {
  final IGuildRepository _repository;
  GetInviteLinkCubit(this._repository)
      : super(const GetInviteLinkState.initial());

  Future<void> getInviteLink(String guildId) async {
    emit(const GetInviteLinkState.fetchInProgress());
    final failureOrLink = await _repository.getInviteLink(guildId);
    emit(
      failureOrLink.fold(
        (f) => GetInviteLinkState.fetchFailure(f),
        (inviteLink) => GetInviteLinkState.fetchSuccess(inviteLink),
      ),
    );
  }
}
