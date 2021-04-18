part of 'change_appearance_cubit.dart';

@freezed
class ChangeAppearanceState with _$ChangeAppearanceState {
  const factory ChangeAppearanceState({
    @Default(null) Nickname? nickname,
    @Default(null) HexColor? hexColor,
    required bool showErrorMessages,
    required bool isSaving,
    required Option<Either<MemberFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ChangeAppearanceState;

  factory ChangeAppearanceState.initial() => ChangeAppearanceState(
        showErrorMessages: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
