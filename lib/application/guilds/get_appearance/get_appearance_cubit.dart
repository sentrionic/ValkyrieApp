import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

part 'get_appearance_state.dart';
part 'get_appearance_cubit.freezed.dart';

/// GetAppearanceCubit fetches the members [GuildAppearance] from the network for the given guild.
@injectable
class GetAppearanceCubit extends Cubit<GetAppearanceState> {
  final IMemberRepository _repository;
  GetAppearanceCubit(this._repository)
      : super(const GetAppearanceState.initial());

  /// Fetches the members [GuildAppearance] from the network for the given guild.
  Future<void> getGuildAppearance(String guildId) async {
    emit(const GetAppearanceState.loadInProgress());
    final failureOrMembers = await _repository.getGuildAppearance(guildId);
    emit(
      failureOrMembers.fold(
        (f) => GetAppearanceState.loadFailure(f),
        (appearance) => GetAppearanceState.loadSuccess(appearance),
      ),
    );
  }
}
