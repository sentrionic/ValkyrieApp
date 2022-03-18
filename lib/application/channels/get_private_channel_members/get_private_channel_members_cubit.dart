import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/channels/channel_failure.dart';
import 'package:valkyrie_app/domain/channels/i_channel_repository.dart';

part 'get_private_channel_members_state.dart';
part 'get_private_channel_members_cubit.freezed.dart';

/// GetPrivateChannelMembersCubit fetches the ids of members that
/// are members of the given private channel.
@injectable
class GetPrivateChannelMembersCubit
    extends Cubit<GetPrivateChannelMembersState> {
  final IChannelRepository _repository;

  GetPrivateChannelMembersCubit(this._repository)
      : super(const GetPrivateChannelMembersState.initial());

  /// Fetches the ids of members that are members of the given channel and emits
  /// them if successful, [ChannelFailure] otherwise.
  Future<void> getPrivateChannelMembers(String channelId) async {
    emit(const GetPrivateChannelMembersState.fetchInProgress());
    final failureOrMembers =
        await _repository.getPrivateChannelMembers(channelId);
    emit(
      failureOrMembers.fold(
        (f) => GetPrivateChannelMembersState.fetchFailure(f),
        (members) => GetPrivateChannelMembersState.fetchSuccess(members),
      ),
    );
  }
}
