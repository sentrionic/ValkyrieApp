import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:valkyrie_app/domain/guilds/value_objects.dart';
import 'package:valkyrie_app/domain/member/i_member_repository.dart';
import 'package:valkyrie_app/domain/member/member_failure.dart';

part 'change_appearance_state.dart';
part 'change_appearance_cubit.freezed.dart';

@injectable
class ChangeAppearanceCubit extends Cubit<ChangeAppearanceState> {
  final IMemberRepository _repository;
  ChangeAppearanceCubit(this._repository)
      : super(ChangeAppearanceState.initial());

  Future<void> nicknameChanged(String nickname) async {
    emit(state.copyWith(
      nickname: Nickname(nickname),
      saveFailureOrSuccessOption: none(),
    ));
  }

  Future<void> resetNickname() async {
    emit(state.copyWith(
      nickname: null,
      saveFailureOrSuccessOption: none(),
    ));
  }

  Future<void> colorChanged(String color) async {
    emit(state.copyWith(
      hexColor: HexColor(color),
      saveFailureOrSuccessOption: none(),
    ));
  }

  Future<void> resetColor() async {
    emit(state.copyWith(
      hexColor: null,
      saveFailureOrSuccessOption: none(),
    ));
  }

  Future<void> submitChanges(String guildId) async {
    Either<MemberFailure, Unit>? failureOrSuccess;

    final isNicknameValid = state.nickname?.isValid() ?? true;
    final isColorValid = state.hexColor?.isValid() ?? true;

    if (isNicknameValid && isColorValid) {
      emit(state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      ));

      failureOrSuccess = await _repository.changeAppearance(
        guildId: guildId,
        nickname: state.nickname?.getOrCrash(),
        color: state.hexColor?.getOrCrash(),
      );
    }

    emit(state.copyWith(
      isSaving: false,
      showErrorMessages: true,
      saveFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
