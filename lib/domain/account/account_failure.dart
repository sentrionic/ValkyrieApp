import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_failure.freezed.dart';

@freezed
class AccountFailure with _$AccountFailure {
  const factory AccountFailure.unexpected() = _Unexpected;
  const factory AccountFailure.badRequest(String message) = _BadRequest;
  const factory AccountFailure.serverError() = _ServerError;
  const factory AccountFailure.unauthenticated() = _Unauthenticated;
}
