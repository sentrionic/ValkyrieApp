part of 'change_password_cubit.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required Password oldPassword,
    required Password newPassword,
    required Password confirmNewPassword,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _ChangePasswordState;

  factory ChangePasswordState.initial() => ChangePasswordState(
        oldPassword: Password(''),
        newPassword: Password(''),
        confirmNewPassword: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
