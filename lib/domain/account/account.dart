import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';
import 'package:valkyrie_app/domain/core/failures.dart';

part 'account.freezed.dart';

@freezed
class Account with _$Account {
  const Account._();

  const factory Account({
    required String id,
    required Username username,
    required EmailAddress email,
    required String image,
  }) = _Account;

  factory Account.empty() => Account(
        id: "0",
        username: Username(""),
        email: EmailAddress(""),
        image: "",
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return username.failureOrUnit
        .andThen(email.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
