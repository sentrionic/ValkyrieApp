import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:valkyrie_app/domain/account/account.dart';
import 'package:valkyrie_app/domain/account/account_failure.dart';
import 'package:valkyrie_app/domain/auth/auth_value_objects.dart';

abstract class IAccountRepository {
  Future<Either<AccountFailure, Account>> getAccount();
  Future<Either<AccountFailure, Account>> updateAccount({
    required EmailAddress emailAddress,
    required Username username,
    File? image,
  });
}
