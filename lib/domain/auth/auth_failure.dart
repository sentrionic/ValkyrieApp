import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.invalidUsername() = InvalidUsername;
  const factory AuthFailure.invalidEmail() = InvalidEmail;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidPassword() = InvalidPassword;
  const factory AuthFailure.passwordsDontMatch() = PasswordsDontMatch;
  const factory AuthFailure.invalidCredentials() = InvalidCredentials;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.badRequest(String error) = BadRequest;
}
