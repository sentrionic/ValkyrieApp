part of 'register_form_bloc.dart';

@freezed
class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required EmailAddress emailAddress,
    required Username username,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        emailAddress: EmailAddress(''),
        username: Username(''),
        password: Password(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
