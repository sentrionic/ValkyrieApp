part of 'register_form_bloc.dart';

@freezed
class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.emailChanged(String email) = EmailChanged;
  const factory RegisterFormEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory RegisterFormEvent.usernameChanged(String username) =
      UsernameChanged;
  const factory RegisterFormEvent.registerPressed() = RegisterPressed;
}
