import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_failure.freezed.dart';

@freezed
class AccountFailure with _$AccountFailure {
  const factory AccountFailure.unexpected() = _Unexpected;
  const factory AccountFailure.invalidUsername() = InvalidUsername;
  const factory AccountFailure.invalidEmail() = InvalidEmail;
  const factory AccountFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AccountFailure.invalidPassword() = InvalidPassword;
  const factory AccountFailure.badRequest(String message) = BadRequest;
  const factory AccountFailure.serverError() = ServerError;
}
