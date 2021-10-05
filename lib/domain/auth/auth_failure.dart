import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.passwordsDontMatch() = _PasswordsDontMatch;
  const factory AuthFailure.invalidCredentials() = _InvalidCredentials;
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.badRequest(String error) = _BadRequest;
}
