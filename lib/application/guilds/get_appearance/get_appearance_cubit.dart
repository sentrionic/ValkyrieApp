import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/guild_appearance.dart';
import 'package:valkyrie_app/domain/guilds/guild_failure.dart';
import 'package:valkyrie_app/domain/guilds/i_guild_repository.dart';

part 'get_appearance_state.dart';
part 'get_appearance_cubit.freezed.dart';

@injectable
class GetAppearanceCubit extends Cubit<GetAppearanceState> {
  final IGuildRepository _repository;
  GetAppearanceCubit(this._repository)
      : super(const GetAppearanceState.initial());

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
