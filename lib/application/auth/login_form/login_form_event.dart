part of 'login_form_bloc.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.emailChanged(String email) = EmailChanged;
  const factory LoginFormEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory LoginFormEvent.loginPressed() = LoginPressed;
}
