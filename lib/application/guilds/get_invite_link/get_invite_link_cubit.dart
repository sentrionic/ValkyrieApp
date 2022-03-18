import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

part 'get_invite_link_state.dart';
part 'get_invite_link_cubit.freezed.dart';

/// GetInviteLinkCubit fetches an invite url from the network for the given guild.
@injectable
class GetInviteLinkCubit extends Cubit<GetInviteLinkState> {
  final IGuildRepository _repository;
  GetInviteLinkCubit(this._repository)
      : super(const GetInviteLinkState.initial());

  /// Fetches an invite url from the network for the given guild.
  /// Emits either the invite link or the error.
  /// If [isPermanent] is true the invite link will never expire.
  Future<void> getInviteLink(
    String guildId, {
    bool isPermanent = false,
  }) async {
    emit(const GetInviteLinkState.fetchInProgress());
    final failureOrLink = await _repository.getInviteLink(
      guildId,
      isPermanent: isPermanent,
    );
    emit(
      failureOrLink.fold(
        (f) => GetInviteLinkState.fetchFailure(f),
        // Invite link contains "", so gotta remove it
        (inviteLink) =>
            GetInviteLinkState.fetchSuccess(inviteLink.replaceAll('"', '')),
      ),
    );
  }
}
